package com.config;

import com.listener.SessionListener;
import com.service.BookService;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SessionConfig {
    private BookService bookService;


    public SessionConfig(BookService bookService) {
        this.bookService = bookService;
    }

    @Bean
    public ServletListenerRegistrationBean<SessionListener> sessionListenerWithMetrics() {
        ServletListenerRegistrationBean<SessionListener> listenerRegBean =
                new ServletListenerRegistrationBean<>();

        listenerRegBean.setListener(new SessionListener(bookService));
        return listenerRegBean;
    }
}
