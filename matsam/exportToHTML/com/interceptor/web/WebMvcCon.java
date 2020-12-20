package com.interceptor.web;

import javax.annotation.Resource;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.interceptor.service.EventInterceptor;
@Configuration
public class WebMvcCon implements WebMvcConfigurer {

	@Resource
	EventInterceptor interceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		//WebMvcConfigurer.super.addInterceptors(registry);
		registry.addInterceptor(interceptor).addPathPatterns("/user/mypage");
	}
}
