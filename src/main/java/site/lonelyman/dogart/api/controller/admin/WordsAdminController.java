package site.lonelyman.dogart.api.controller.admin;

import cn.dev33.satoken.annotation.SaCheckLogin;
import org.springframework.web.bind.annotation.*;
import site.lonelyman.dogart.api.entity.Words;
import site.lonelyman.dogart.api.model.Result;
import site.lonelyman.dogart.api.service.WordsService;

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
@RequestMapping("admin/words")
@SaCheckLogin
public class WordsAdminController {
    @Resource
    private WordsService wordsService;

    @GetMapping()
    public Result<List<Words>> list() {
        return Result.ok(wordsService.list());
    }

    @PostMapping("changeFlag")
    public Result<Object> changeFlag(@RequestParam("id") Integer id, @RequestParam("flag") Integer flag) {
        wordsService.changeFlag(id, flag);
        return Result.ok();
    }
}
