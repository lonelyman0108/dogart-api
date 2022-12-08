package site.lonelyman.dogart.api.controller.admin;

import org.springframework.web.bind.annotation.*;
import site.lonelyman.dogart.api.annotation.LoginCheck;
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
@RequestMapping("admin")
public class UserController {
    @Resource
    private UserService userService;

    @PostMapping("login")
    public Result<String> login(@RequestBody UserLoginReq req) {
        return Result.ok(userService.login(req.getUsername(), req.getPassword()));
    }

    @GetMapping("checkLogin")
    @LoginCheck
    public Result<Object> checkLogin() {
        return Result.ok();
    }
}
