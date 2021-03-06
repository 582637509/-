package cn.tedu.comic.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.tedu.comic.entity.User;

import java.net.URLEncoder;

public class VIPInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler)
            throws Exception {
        System.out.println("进入VIP拦截器");
        HttpSession session = request.getSession();
        //获取session中的用户信息
        User user = (User) session.getAttribute("user");
        //判断user是否是vip
        if (user.getMember() == null && request.getParameter("place").equals("VIP")) {
            response.sendRedirect(request.getContextPath() + "/personal/recharge.do");
            return false;
        } else {
            return true;
        }

    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }
}
