package org.fkit.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.fkit.domain.User;
import org.fkit.util.common.TestConstants;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthorizedInterceptor implements HandlerInterceptor {
	/** 定义不需要拦截的请求 */
	private static final String[] IGNORE_URI = {"/loginForm", "/registForm","/goodDetail","/main","/goodShow"};

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		/** 默认用户没有登录 */
		boolean flag = false; 
		/** 获得请求的ServletPath */
		String servletPath = request.getServletPath();
		/**  判断请求是否需要拦截 */
        for (String s : IGNORE_URI) {
            if (servletPath.contains(s)) {
                flag = true;
                break;
            }
        }
        /** 拦截请求 */
        if (flag==false){
        	/** 1.获取session中的用户  */
        	User user = (User) request.getSession().getAttribute(TestConstants.USER_SESSION);
        	/** 2.判断用户是否已经登录 */
        	if(user == null){
        		 /** 如果用户没有登录，跳转到登录页面 */
        		request.setAttribute("message", "请先登录再访问网站!");
        		request.getRequestDispatcher(TestConstants.LOGIN).forward(request, response);
        		return flag;
        	}else{
        		 flag = true;
        	}
        }
        return flag;
		
	}


	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public static String[] getIgnoreUri() {
		return IGNORE_URI;
	}

}
