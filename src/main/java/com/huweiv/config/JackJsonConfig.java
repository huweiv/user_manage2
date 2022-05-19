package com.huweiv.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.annotation.Bean;

/**
 * @author HUWEIV
 * @version 1.0.0
 * @ClassName JackJsonConfig
 * @Description TODO
 * @CreateTime 2022/4/23 9:21
 */

public class JackJsonConfig {

    @Bean("jackJson")
    public ObjectMapper getObjectMapper() {
        return new ObjectMapper();
    }
}
