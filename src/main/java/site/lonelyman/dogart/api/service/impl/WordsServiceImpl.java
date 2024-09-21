package site.lonelyman.dogart.api.service.impl;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import site.lonelyman.dogart.api.constant.CacheKey;
import site.lonelyman.dogart.api.constant.ContentFlagEnum;
import site.lonelyman.dogart.api.entity.Words;
import site.lonelyman.dogart.api.exception.ApiException;
import site.lonelyman.dogart.api.mapper.WordsMapper;
import site.lonelyman.dogart.api.model.req.WordsPostReq;
import site.lonelyman.dogart.api.model.vo.WordsVo;
import site.lonelyman.dogart.api.service.WordsService;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author lm
 * @description 针对表【words】的数据库操作Service实现
 * @createDate 2022-12-07 22:24:39
 */
@Service
public class WordsServiceImpl extends ServiceImpl<WordsMapper, Words>
        implements WordsService {

    @Resource
    private WordsMapper wordsMapper;
    @Resource
    private RedisTemplate<String, String> redisTemplate;

    @Override
    public WordsVo getRandWords() {
        HashOperations<String, Integer, String> hashOps = redisTemplate.opsForHash();
        Integer randomKey = hashOps.randomKey(CacheKey.WORDS);
        if (randomKey == null) {
            Integer count = this.refreshWordsCache();
            if (count == 0) {
                throw new ApiException("暂无语录");
            } else {
                return this.getRandWords();
            }
        } else {
            return JSONUtil.toBean(hashOps.get(CacheKey.WORDS, randomKey), WordsVo.class, true);
        }
    }

    @Override
    public void postWords(WordsPostReq req) {
        Words words = new Words();
        words.setContent(req.getContent());
        words.setCreateDate(new Date());
        words.setFlag(0);
        this.save(words);
    }

    @Override
    public void lickWords(Integer id) {
         Words words = Optional.ofNullable(this.getById(id)).orElseThrow(
                () -> new ApiException("语录不存在")
        );
        if (ContentFlagEnum.getByValue(words.getFlag()) != ContentFlagEnum.NORMAL) {
            throw new ApiException("语录不存在");
        }
        words.setLickCount(words.getLickCount() + 1);
        this.updateById(words);
        redisTemplate.opsForHash().put(CacheKey. WORDS, String.valueOf(id), JSONUtil.toJsonStr(words));
    }

    @Override
    public void changeFlag(Integer id, ContentFlagEnum flag) {
        if (flag.equals(ContentFlagEnum.UNCHECKED)) {
            throw new ApiException("不能修改为未审核状态");
        }
        Words words = Optional.ofNullable(this.getById(id))
                .orElseThrow(() -> new ApiException("语录不存在"));
        if (Objects.equals(words.getFlag(), flag.getValue())) {
            return;
        }
        HashOperations<String, Integer, String> hashOps = redisTemplate.opsForHash();
        if (flag.equals(ContentFlagEnum.REJECTED)) {
            hashOps.delete(CacheKey. WORDS, String.valueOf(id));
        } else if (flag.equals(ContentFlagEnum.NORMAL)) {
            hashOps.put(CacheKey.WORDS, id, words.getContent());
        }
        this.update(
                new UpdateWrapper<Words>()
                        .lambda()
                        .set(Words::getFlag, flag)
                        .eq(Words::getId, id)
        );
    }

    @Override
    public Integer refreshWordsCache() {
        redisTemplate.delete(CacheKey.WORDS);
        List<Words> allWords = this.list(
                new LambdaQueryWrapper<Words>()
                        .eq(Words::getFlag, ContentFlagEnum.NORMAL.getValue())
        );
        if (CollUtil.isEmpty(allWords)) {
            return 0;
        } else {
            redisTemplate.opsForHash().putAll(
                    CacheKey.WORDS,
                    allWords.stream().collect(Collectors.toMap(
                            Words::getId,
                            JSONUtil::toJsonStr
                    ))
            );
            return allWords.size();
        }
    }
}




