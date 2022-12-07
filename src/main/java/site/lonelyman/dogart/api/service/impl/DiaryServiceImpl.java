package site.lonelyman.dogart.api.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import site.lonelyman.dogart.api.entity.Diary;
import site.lonelyman.dogart.api.mapper.DiaryMapper;
import site.lonelyman.dogart.api.model.req.DiaryPostReq;
import site.lonelyman.dogart.api.model.vo.DiaryVo;
import site.lonelyman.dogart.api.service.DiaryService;

import javax.annotation.Resource;
import java.util.Date;

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

    @Override
    public DiaryVo getRandDiary() {
        Diary diary = diaryMapper.getRandDiary();
        return BeanUtil.toBean(diary, DiaryVo.class);
    }

    @Override
    public void postDiary(DiaryPostReq req) {
        Diary diary = new Diary();
        diary.setContent(req.getContext());
        diary.setCreateDate(new Date());
        diary.setFlag(0);
        this.save(diary);
    }

    @Override
    public void lickDiary(Integer id) {
        this.update(
                new UpdateWrapper<Diary>()
                        .lambda()
                        .eq(Diary::getId, id)
                        .setSql("lick_count = lick_count + 1")
        );
    }
}




