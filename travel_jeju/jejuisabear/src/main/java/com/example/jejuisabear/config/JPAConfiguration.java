package com.example.jejuisabear.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EntityScan(basePackages = {"com.example.jejuisabear"})
@EnableJpaRepositories(basePackages = "com.example.jejuisabear")
public class JPAConfiguration {

}
