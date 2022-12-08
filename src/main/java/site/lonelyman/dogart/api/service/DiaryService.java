package site.lonelyman.dogart.api.service;

import site.lonelyman.dogart.api.entity.Diary;
import com.baomidou.mybatisplus.extension.service.IService;
import site.lonelyman.dogart.api.model.req.DiaryPostReq;
import site.lonelyman.dogart.api.model.vo.DiaryVo;

/**
 * @author lm
 * @description 针对表【diary】的数据库操作Service
 * @createDate 2022-12-07 22:24:39
 */
public interface DiaryService extends IService<Diary> {

    DiaryVo getRandDiary();

    void postDiary(DiaryPostReq req);

    void lickDiary(Integer id);

    void changeFlag(Integer id, Integer flag);
}
