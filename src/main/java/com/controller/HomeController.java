package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
class HomeController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/contact")
    public String contactUsPage() {
        return "contact";
    }

    @GetMapping("/services")
    public String servicesPage() {
        return "services";
    }
}