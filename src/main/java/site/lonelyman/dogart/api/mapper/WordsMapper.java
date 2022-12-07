package site.lonelyman.dogart.api.mapper;

import site.lonelyman.dogart.api.entity.Words;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @author lm
 * @description 针对表【words】的数据库操作Mapper
 * @createDate 2022-12-07 22:24:39
 * @Entity site.lonelyman.dogart.api.entity.Words
 */
public interface WordsMapper extends BaseMapper<Words> {

    Words getRandWords();
}




