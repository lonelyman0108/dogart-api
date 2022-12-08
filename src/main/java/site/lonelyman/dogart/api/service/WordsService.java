package site.lonelyman.dogart.api.service;

import site.lonelyman.dogart.api.entity.Words;
import com.baomidou.mybatisplus.extension.service.IService;
import site.lonelyman.dogart.api.model.req.WordsPostReq;
import site.lonelyman.dogart.api.model.vo.WordsVo;

/**
 * @author lm
 * @description 针对表【words】的数据库操作Service
 * @createDate 2022-12-07 22:24:39
 */
public interface WordsService extends IService<Words> {

    WordsVo getRandWords();

    void postWords(WordsPostReq req);

    void lickWords(Integer id);

    void changeFlag(Integer id, Integer flag);
}
