package br.kuhn.dev.springboot1;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PropertiesController {
    @Value("${server.port}")
    private String serverPort;

    @Value("${spring.application.name}")
    private String applicationName;
    
    @GetMapping("/")
    public String greeting() {
        System.out.println("serverPort=" + serverPort);
        System.out.println("applicationName=" + applicationName);
        return serverPort + ";" + applicationName;
    }
}
