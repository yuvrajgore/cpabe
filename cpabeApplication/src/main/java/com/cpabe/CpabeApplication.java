package com.cpabe;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableAutoConfiguration
@ComponentScan(basePackages={"com.cpabe"})
public class CpabeApplication {

	public static void main(String[] args) {
		SpringApplication.run(CpabeApplication.class, args);
	}
}
