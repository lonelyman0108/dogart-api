package site.lonelyman.dogart.api.controller;

import org.springframework.web.bind.annotation.*;
import site.lonelyman.dogart.api.model.Result;
import site.lonelyman.dogart.api.model.req.DiaryPostReq;
import site.lonelyman.dogart.api.model.vo.DiaryVo;
import site.lonelyman.dogart.api.service.DiaryService;

import javax.annotation.Resource;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/7
 */

@RestController
@RequestMapping("diary")
public class DiaryController {
    @Resource
    private DiaryService diaryService;

    @GetMapping()
    public Result<DiaryVo> getDiary() {
        return Result.ok(diaryService.getRandDiary());
    }

    @PostMapping()
    public Result<Object> postDiary(@RequestBody DiaryPostReq req) {
        diaryService.postDiary(req);
        return Result.ok();
    }

    @PostMapping("lick")
    public Result<Object> lickDiary(@RequestParam("id") Integer id) {
        diaryService.lickDiary(id);
        return Result.ok();
    }
}
