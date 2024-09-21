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
import site.lonelyman.dogart.api.entity.Diary;
import site.lonelyman.dogart.api.exception.ApiException;
import site.lonelyman.dogart.api.mapper.DiaryMapper;
import site.lonelyman.dogart.api.model.req.DiaryPostReq;
import site.lonelyman.dogart.api.model.vo.DiaryVo;
import site.lonelyman.dogart.api.service.DiaryService;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author lm
 * @description 针对表【diary】的数据库操作Service实现
 * @createDate 2022-12-07 22:24:39
 */
@Service
public class DiaryServiceImpl extends ServiceImpl<DiaryMapper, Diary>
        implements DiaryService {
    @Resource
    private DiaryMapper diaryMapper;
    @Resource
    private RedisTemplate<String, String> redisTemplate;

    @Override
    public DiaryVo getRandDiary() {
        HashOperations<String, Integer, String> hashOps = redisTemplate.opsForHash();
        Integer randomKey = hashOps.randomKey(CacheKey.DIARY);
        if (randomKey == null) {
            Integer count = this.refreshDiaryCache();
            if (count == 0) {
                throw new ApiException("暂无日记");
            } else {
                return this.getRandDiary();
            }
        } else {
            return JSONUtil.toBean(hashOps.get(CacheKey.DIARY, randomKey), DiaryVo.class, true);
        }
    }

    @Override
    public void postDiary(DiaryPostReq req) {
        Diary diary = new Diary();
        diary.setContent(req.getContent());
        diary.setCreateDate(new Date());
        diary.setFlag(0);
        this.save(diary);
    }

    @Override
    public void lickDiary(Integer id) {
        Diary diary = Optional.ofNullable(this.getById(id)).orElseThrow(
                () -> new ApiException("日记不存在")
        );
        if (ContentFlagEnum.getByValue(diary.getFlag()) != ContentFlagEnum.NORMAL) {
            throw new ApiException("日记不存在");
        }
        diary.setLickCount(diary.getLickCount() + 1);
        this.updateById(diary);
        redisTemplate.opsForHash().put(CacheKey.DIARY, String.valueOf(id), JSONUtil.toJsonStr(diary));
    }

    @Override
    public void changeFlag(Integer id, ContentFlagEnum flag) {
        if (flag.equals(ContentFlagEnum.UNCHECKED)) {
            throw new ApiException("不能修改为未审核状态");
        }
        Diary diary = Optional.ofNullable(this.getById(id))
                .orElseThrow(() -> new ApiException("日记不存在"));
        if (Objects.equals(diary.getFlag(), flag.getValue())) {
            return;
        }
        HashOperations<String, Integer, String> hashOps = redisTemplate.opsForHash();
        if (flag.equals(ContentFlagEnum.REJECTED)) {
            hashOps.delete(CacheKey.DIARY, String.valueOf(id));
        } else if (flag.equals(ContentFlagEnum.NORMAL)) {
            hashOps.put(CacheKey.DIARY, id, diary.getContent());
        }
        this.update(
                new UpdateWrapper<Diary>()
                        .lambda()
                        .set(Diary::getFlag, flag)
                        .eq(Diary::getId, id)
        );
    }

    @Override
    public Integer refreshDiaryCache() {
        redisTemplate.delete(CacheKey.DIARY);
        List<Diary> allDiaries = this.list(
                new LambdaQueryWrapper<Diary>()
                        .eq(Diary::getFlag, ContentFlagEnum.NORMAL.getValue())
        );
        if (CollUtil.isEmpty(allDiaries)) {
            return 0;
        } else {
            redisTemplate.opsForHash().putAll(
                    CacheKey.DIARY,
                    allDiaries.stream().collect(Collectors.toMap(
                            Diary::getId,
                            JSONUtil::toJsonStr
                    ))
            );
            return allDiaries.size();
        }
    }
}




