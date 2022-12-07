package site.lonelyman.dogart.api.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import site.lonelyman.dogart.api.entity.User;
import site.lonelyman.dogart.api.service.UserService;
import site.lonelyman.dogart.api.mapper.UserMapper;
import org.springframework.stereotype.Service;

/**
 * @author lm
 * @description 针对表【user】的数据库操作Service实现
 * @createDate 2022-12-07 22:24:39
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {

}




