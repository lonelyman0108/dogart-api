package site.lonelyman.dogart.api.util;

import cn.hutool.core.exceptions.ValidateException;
import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTUtil;
import cn.hutool.jwt.JWTValidator;
import org.springframework.context.annotation.DependsOn;
import site.lonelyman.dogart.api.config.JwtConfig;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */

@DependsOn("jwtConfig")
public class JwtUtil {
    @Resource
    private JwtConfig jwtConfig;
    private static JwtConfig config;

    @PostConstruct
    public void init() {
        config = this.jwtConfig;
    }

    public static String createToken(Map<String, Object> payloadMap) {
        return JWT.create()
                .addPayloads(payloadMap)
                .setKey(config.secret.getBytes(StandardCharsets.UTF_8))
                .setIssuedAt(new Date())
                .setExpiresAt(new Date(System.currentTimeMillis() + config.expiration * 1000))
                .sign();
    }

    public static boolean verify(String token) {
        boolean result = JWT.of(token)
                .setKey(config.secret.getBytes(StandardCharsets.UTF_8))
                .verify();
        if (result) {
            try {
                JWTValidator.of(token).validateDate(new Date());
            } catch (ValidateException e) {
                result = false;
            }
        }
        return result;
    }

    public static Map<String, Object> parseToken(String token) {
        JWT jwt = JWTUtil.parseToken(token);
        HashMap<String, Object> map = new HashMap<>();
        for (Map.Entry<String, Object> payload : jwt.getPayloads()) {
            map.put(payload.getKey(), payload.getValue());
        }
        return map;
    }
}
