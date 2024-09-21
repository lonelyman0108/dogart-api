package site.lonelyman.dogart.api.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import site.lonelyman.dogart.api.exception.AuthenticationFailedException;
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
@Slf4j
public class GlobalExceptionHandler {
    @ExceptionHandler(value = AuthenticationFailedException.class)
    public Result<Object> authenticationFailedExceptionHandler(AuthenticationFailedException e) {
        log.error(e.getMessage(), e);
        return Result.error(401, e.getMessage());
    }
    @ExceptionHandler(value = RuntimeException.class)
    public Result<Object> runtimeExceptionHandler(RuntimeException e) {
        log.error(e.getMessage(), e);
        return Result.error(e.getMessage());
    }

    @ExceptionHandler(value = Exception.class)
    public Result<Object> exceptionHandler(Exception e) {
        log.error(e.getMessage(), e);
        return Result.error("未知异常");
    }
}
