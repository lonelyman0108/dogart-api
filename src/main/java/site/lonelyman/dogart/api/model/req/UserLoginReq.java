package site.lonelyman.dogart.api.model.req;

import lombok.Data;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */

@Data
public class UserLoginReq {
    private String username;
    private String password;
}
