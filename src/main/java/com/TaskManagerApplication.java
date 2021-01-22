package com;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TaskManagerApplication {

	public static void main(String[] args) {
		
		Map<String,String> jdbcUrlSettings = new HashMap<>();
		String jdbcDbUrl = System.getenv("JDBC_DATABASE_URL");
		if (null != jdbcDbUrl) {
		  jdbcUrlSettings.put("hibernate.connection.url", System.getenv("JDBC_DATABASE_URL"));
		}

		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().
		    configure("hibernate.cfg.xml").
		    applySettings(jdbcUrlSettings).
		    build();

		
		SpringApplication.run(TaskManagerApplication.class, args);
	}

}
