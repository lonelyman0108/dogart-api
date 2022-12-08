package site.lonelyman.dogart.api.interceptor;

import cn.hutool.core.text.CharSequenceUtil;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import site.lonelyman.dogart.api.annotation.LoginCheck;
import site.lonelyman.dogart.api.util.JwtUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

/**
 * <p>
 *
 * </p>
 *
 * @author LM
 * @since 2022/12/8
 */
@Component
public class LoginCheckInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (!(handler instanceof HandlerMethod)) {
            return true;
        }
        Method method = ((HandlerMethod) handler).getMethod();
        if (!method.getDeclaringClass().isAnnotationPresent(LoginCheck.class)
                && !method.isAnnotationPresent(LoginCheck.class)) {
            return true;
        }
        String token = request.getHeader("Authorization");
        if (CharSequenceUtil.isBlank(token) || !JwtUtil.verify(token)) {
            throw new RuntimeException("");
        }
        return true;
    }
}
