package site.lonelyman.dogart.api.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */

@ConfigurationProperties("jwt")
@Configuration
@Data
public class JwtConfig {

    private String secret;

    private Integer expiration;

}
