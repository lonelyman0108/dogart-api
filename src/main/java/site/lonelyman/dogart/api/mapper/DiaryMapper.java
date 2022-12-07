package site.lonelyman.dogart.api.mapper;

import site.lonelyman.dogart.api.entity.Diary;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @author lm
 * @description 针对表【diary】的数据库操作Mapper
 * @createDate 2022-12-07 22:24:39
 * @Entity site.lonelyman.dogart.api.entity.Diary
 */
public interface DiaryMapper extends BaseMapper<Diary> {

    Diary getRandDiary();
}




