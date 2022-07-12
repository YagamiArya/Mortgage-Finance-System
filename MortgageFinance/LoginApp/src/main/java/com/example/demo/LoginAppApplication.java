package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
		
@SpringBootApplication
@ComponentScan("com.yebelo")
@EnableJpaRepositories(basePackages="com.repository")
@EntityScan("com.bean")
public class LoginAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(LoginAppApplication.class, args);
		System.out.println("\n\n\n...........Application Started...........");
	}

}
