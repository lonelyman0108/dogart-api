package site.lonelyman.dogart.api.controller.admin;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

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
    @PostMapping("login")
    public void login(){
        //do something
    }
}
