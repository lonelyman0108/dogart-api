package site.lonelyman.dogart.api.controller;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import site.lonelyman.dogart.api.model.Result;
import site.lonelyman.dogart.api.model.req.WordsPostReq;
import site.lonelyman.dogart.api.model.vo.WordsVo;
import site.lonelyman.dogart.api.service.WordsService;

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
@RequestMapping("words")
public class WordsController {
    @Resource
    private WordsService wordsService;

    @GetMapping()
    public Result<WordsVo> getWords() {
        return Result.ok(wordsService.getRandWords());
    }

    @PostMapping()
    public Result<Object> postWords(@RequestBody @Validated WordsPostReq req) {
        wordsService.postWords(req);
        return Result.ok();
    }

    @PostMapping("lick")
    public Result<Object> lickWords(@RequestParam("id") Integer id) {
        wordsService.lickWords(id);
        return Result.ok();
    }
}
