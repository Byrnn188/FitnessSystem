package com.group1.fitnessjava;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.group1.fitnessjava.mapper")
public class FitnessJavaApplication {

    public static void main(String[] args) {
        SpringApplication.run(FitnessJavaApplication.class, args);
    }

}
