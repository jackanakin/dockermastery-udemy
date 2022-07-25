package br.kuhn.dev.springboot1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBoot1Application {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBoot1Application.class, args);

		System.out.println("Command-Line Arguments:");
		for(String arg:args) {
            System.out.println(arg);
        }
		System.out.println("End Command-Line Arguments:");

	}


}
