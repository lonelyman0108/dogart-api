package site.lonelyman.dogart.api.exception;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2024/8/18
 */

public class AuthenticationFailedException extends RuntimeException {
    public AuthenticationFailedException() {
        super("认证失败");
    }
}
