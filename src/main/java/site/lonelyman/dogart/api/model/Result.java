package site.lonelyman.dogart.api.model;

import lombok.Data;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/7
 */

@Data
public class Result<T> {
    private Integer status;

    private String msg;

    private T data;

    public Result(Integer status, String msg, T data) {
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    public Result(Integer status, String msg) {
        this.status = status;
        this.msg = msg;
        this.data = null;
    }

    public static Result<Object> error(Integer errorCode, String errorMsg) {
        return new Result<>(errorCode, errorMsg);
    }

    public static Result<Object> error(String errorMsg) {
        return new Result<>(500, errorMsg);
    }

    public static Result<Object> error() {
        return new Result<>(500, "error");
    }

    public static <T> Result<T> ok(String errorMsg, T data) {
        return new Result<>(200, errorMsg, data);
    }

    public static <T> Result<T> ok(T data) {
        return new Result<>(200, "ok", data);
    }

    public static Result<Object> ok() {
        return new Result<>(200, "ok", null);
    }


}
