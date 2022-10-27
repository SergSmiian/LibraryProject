package com.service;

import com.dto.EmailDto;
import com.model.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class EmailService {
    private  TemplateEngine templateEngine;
    private  JavaMailSender javaMailSender;
    @Autowired
    public EmailService(TemplateEngine templateEngine, JavaMailSender javaMailSender) {
        this.templateEngine = templateEngine;
        this.javaMailSender = javaMailSender;
    }
    public void sendOrderMessage(Order order){
        Context context = new Context();
        context.setVariable("order", order);

        String process = templateEngine.process("emails/your-order", context);
        MimeMessage mimeMessage = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
        try {
            helper.setSubject("Your order ");
            helper.setText(process, true);
            helper.setTo(order.getUser().getLogin());
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        javaMailSender.send(mimeMessage);
    }
    public void sendSimpleMessage(EmailDto emailDto, String subject) {

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("libraryappmy@gmail.com");
        message.setTo("libraryappmy@gmail.com");
        message.setSubject(subject);
        message.setText(emailDto.getFirstName()+" " + emailDto.getLastName() + " " + emailDto.getPhoneNumber() +
                        "\n" + emailDto.getText());
        javaMailSender.send(message);
    }
}