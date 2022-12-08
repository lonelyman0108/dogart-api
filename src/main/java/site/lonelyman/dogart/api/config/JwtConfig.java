package site.lonelyman.dogart.api.config;

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
public class JwtConfig {

    public String secret;

    public Integer expiration;

}
