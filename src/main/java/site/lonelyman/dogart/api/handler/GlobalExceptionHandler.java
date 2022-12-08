package site.lonelyman.dogart.api.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import site.lonelyman.dogart.api.model.Result;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */

@ControllerAdvice
@ResponseBody
public class GlobalExceptionHandler {
    @ExceptionHandler(value = RuntimeException.class)
    public Result<Object> runtimeExceptionHandler(RuntimeException e) {
        return Result.error(e.getMessage());
    }

    @ExceptionHandler(value = Exception.class)
    public Result<Object> exceptionHandler(Exception e) {
        return Result.error("未知异常");
    }
}
