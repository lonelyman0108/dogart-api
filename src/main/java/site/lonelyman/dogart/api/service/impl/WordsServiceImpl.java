package site.lonelyman.dogart.api.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import site.lonelyman.dogart.api.entity.Diary;
import site.lonelyman.dogart.api.entity.Words;
import site.lonelyman.dogart.api.mapper.WordsMapper;
import site.lonelyman.dogart.api.model.req.WordsPostReq;
import site.lonelyman.dogart.api.model.vo.WordsVo;
import site.lonelyman.dogart.api.service.WordsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

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

    @Override
    public WordsVo getRandWords() {
        Words words = wordsMapper.getRandWords();
        return BeanUtil.toBean(words, WordsVo.class);
    }

    @Override
    public void postWords(WordsPostReq req) {
        Words words = new Words();
        words.setContent(req.getContext());
        words.setCreateDate(new Date());
        words.setFlag(0);
        this.save(words);
    }

    @Override
    public void lickWords(Integer id) {
        this.update(
                new UpdateWrapper<Words>()
                        .lambda()
                        .eq(Words::getId, id)
                        .setSql("lick_count = lick_count + 1")
        );
    }

    @Override
    public void changeFlag(Integer id, Integer flag) {
        if (flag != 0 && flag != 1) {
            throw new RuntimeException("输入状态非法");
        }
        this.update(
                new UpdateWrapper<Words>()
                        .lambda()
                        .set(Words::getFlag, flag)
                        .eq(Words::getId, id)
        );
    }
}




