package com.huweiv.config;

import com.huweiv.exception.ProjectExceptionAdvice;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * @author HUWEIV
 * @version 1.0.0
 * @ClassName SpringMvcConfig
 * @Description TODO
 * @CreateTime 2022/5/8 16:50
 */
@Configuration
@ComponentScan("com.huweiv.controller")
@EnableWebMvc
@Import({ProjectExceptionAdvice.class})
public class SpringMvcConfig {
}
