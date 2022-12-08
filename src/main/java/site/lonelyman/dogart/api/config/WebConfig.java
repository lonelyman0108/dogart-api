package site.lonelyman.dogart.api.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("*")
                .allowedMethods("*")
                .exposedHeaders("*")
                .allowCredentials(false)
                .maxAge(72000L);
    }
}
