package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.util.ArrayList;
import java.util.List;

@EnableJpaRepositories("com.repository")
@EntityScan("com.model")
@SpringBootApplication
public class Main {

    public static void main(String[] args) {SpringApplication.run(Main.class, args);}

}
