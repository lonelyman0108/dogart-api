package site.lonelyman.dogart.api.service.impl;

import cn.hutool.core.map.MapUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import site.lonelyman.dogart.api.entity.User;
import site.lonelyman.dogart.api.mapper.UserMapper;
import site.lonelyman.dogart.api.service.UserService;
import site.lonelyman.dogart.api.util.JwtUtil;

/**
 * @author lm
 * @description 针对表【user】的数据库操作Service实现
 * @createDate 2022-12-07 22:24:39
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {

    @Override
    public String login(String username, String password) {
        User user = this.getOne(
                new QueryWrapper<User>()
                        .lambda()
                        .eq(User::getUsername, username)
        );
        if (ObjectUtil.isNotNull(user) && user.getPassword().equals(password)) {
            return JwtUtil.createToken(MapUtil.of("id",user.getId()));
        } else {
            throw new RuntimeException("用户名或密码输入错误");
        }
    }
}




