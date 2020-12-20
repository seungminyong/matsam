package kr.or.matsam.interceptor.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


@Service
public class EventInterceptor implements HandlerInterceptor {

	
	@Override
	public boolean preHandle(
			HttpServletRequest request,
			HttpServletResponse response,
			Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		
		Object obj = session.getAttribute("userAuth");
		if(obj == null) {
			response.sendRedirect("/user/login");
			return false;
		}
		
		return true;
		//return HandlerInterceptor.super.preHandle(request, response, handler);
	}
}
