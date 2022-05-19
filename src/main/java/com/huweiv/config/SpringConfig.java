package com.huweiv.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author HUWEIV
 * @version 1.0.0
 * @ClassName SpringConfig
 * @Description TODO
 * @CreateTime 2022/5/8 16:45
 */

@Configuration
@ComponentScan({"com.huweiv.service"})
@PropertySource("classpath:jdbc.properties")
@Import({JdbcConfig.class, MyBatisConfig.class, JackJsonConfig.class, KaptchaConfig.class, BCryptPasswordEncoderConfig.class})
@EnableTransactionManagement
public class SpringConfig {
}
