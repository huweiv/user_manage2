package com.huweiv.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @author HUWEIV
 * @version 1.0.0
 * @ClassName BCryptPasswordEncoderConfig
 * @Description TODO
 * @CreateTime 2022/4/15 8:56
 */

public class BCryptPasswordEncoderConfig {

    @Bean("bCryptPasswordEncoder")
    public BCryptPasswordEncoder getBCryptPasswordEncoder() {
        return new BCryptPasswordEncoder(10);
    }
}
