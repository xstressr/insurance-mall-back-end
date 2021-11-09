package com.sjy.insurance.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.sjy.insurance.dao")
public class MyBatisConfig {
}
