package site.lonelyman.dogart.api.controller.admin;

import cn.dev33.satoken.annotation.SaCheckLogin;
import org.springframework.web.bind.annotation.*;
import site.lonelyman.dogart.api.entity.Diary;
import site.lonelyman.dogart.api.model.Result;
import site.lonelyman.dogart.api.service.DiaryService;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */
@RestController
@RequestMapping("admin/diary")
@SaCheckLogin
public class DiaryAdminController {
    @Resource
    private DiaryService diaryService;

    @GetMapping()
    public Result<List<Diary>> list() {
        return Result.ok(diaryService.list());
    }

    @PostMapping("changeFlag")
    public Result<Object> changeFlag(@RequestParam("id") Integer id, @RequestParam("flag") Integer flag) {
        diaryService.changeFlag(id, flag);
        return Result.ok();
    }
}
