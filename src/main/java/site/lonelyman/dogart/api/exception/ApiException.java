package site.lonelyman.dogart.api.exception;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/9/21
 */

public class ApiException extends RuntimeException {
    public ApiException(String message) {
        super(message);
    }
}
