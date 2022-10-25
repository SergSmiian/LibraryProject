package com.controller;

import com.dto.EmailDto;
import com.service.EmailService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmailController {
    private EmailService emailService;

    public EmailController(EmailService emailService) {
        this.emailService = emailService;
    }

    @PostMapping("email/contact")
    public void contactUs(EmailDto emailDto){
        emailService.sendSimpleMessage(emailDto, "Contact Us");
    }
}
