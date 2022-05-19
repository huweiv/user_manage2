package com.huweiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import com.huweiv.controller.interceptor.ProjectInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

import java.util.ArrayList;
import java.util.List;

/**
 * @author HUWEIV
 * @version 1.0.0
 * @ClassName SpringMvcSupport
 * @Description TODO
 * @CreateTime 2022/5/8 16:55
 */
@Configuration
public class SpringMvcSupport extends WebMvcConfigurationSupport {

    @Autowired
    private ProjectInterceptor projectInterceptor;

    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/pages/**").addResourceLocations("/pages/");
        registry.addResourceHandler("/css/**").addResourceLocations("/css/");
        registry.addResourceHandler("/js/**").addResourceLocations("/js/");
        registry.addResourceHandler("/img/**").addResourceLocations("/img/");
        registry.addResourceHandler("/element-ui/**").addResourceLocations("/element-ui/");
        registry.addResourceHandler("/index.html").addResourceLocations("/");
    }

    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        List<String> addPaths = new ArrayList<>();
        List<String> excludePaths = new ArrayList<>();
        addPaths.add("/user");
        addPaths.add("user/**");
        addPaths.add("/role");
        addPaths.add("/role/**");
        excludePaths.add("/user/login");
        excludePaths.add("/user/forgetPwd");
        excludePaths.add("/user/kaptcha");
        excludePaths.add("/pages/user/login.html");
        excludePaths.add("/pages/user/forgetPwd.html");
        excludePaths.add("/css/**");
        excludePaths.add("/js/**");
        excludePaths.add("/img/**");
        excludePaths.add("/element-ui/**");
        registry.addInterceptor(projectInterceptor).addPathPatterns(addPaths);
        registry.addInterceptor(projectInterceptor).excludePathPatterns(excludePaths);
    }
}
