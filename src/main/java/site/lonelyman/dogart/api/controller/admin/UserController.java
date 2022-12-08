package site.lonelyman.dogart.api.controller.admin;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import site.lonelyman.dogart.api.model.Result;
import site.lonelyman.dogart.api.model.req.UserLoginReq;
import site.lonelyman.dogart.api.service.UserService;

import javax.annotation.Resource;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */
@RestController
public class UserController {
    @Resource
    private UserService userService;

    @PostMapping("login")
    public Result<Object> login(@RequestBody UserLoginReq req) {
        userService.login(req.getUsername(), req.getPassword());
        return Result.ok();
    }
}
