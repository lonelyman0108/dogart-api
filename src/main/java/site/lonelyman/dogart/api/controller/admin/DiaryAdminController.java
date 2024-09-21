package site.lonelyman.dogart.api.controller.admin;

import org.springframework.web.bind.annotation.*;
import site.lonelyman.dogart.api.annotation.LoginCheck;
import site.lonelyman.dogart.api.constant.ContentFlagEnum;
import site.lonelyman.dogart.api.entity.Diary;
import site.lonelyman.dogart.api.exception.ApiException;
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
@LoginCheck
public class DiaryAdminController {
    @Resource
    private DiaryService diaryService;

    @GetMapping()
    public Result<List<Diary>> list() {
        return Result.ok(diaryService.list());
    }

    @PostMapping("changeFlag")
    public Result<Object> changeFlag(@RequestParam("id") Integer id, @RequestParam("flag") Integer flag) {
        ContentFlagEnum flagEnum = ContentFlagEnum.getByValue(flag);
        if (flagEnum == null) {
            throw new ApiException("输入状态非法");
        }
        diaryService.changeFlag(id, flagEnum);
        return Result.ok();
    }

    @DeleteMapping()
    public Result<Object> delete(@RequestParam("id") Integer id) {
        diaryService.removeById(id);
        return Result.ok();
    }
}
