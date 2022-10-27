package com.listener;

import com.model.Book;
import com.service.BookService;
import org.apache.commons.collections4.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.List;

public class SessionListener implements HttpSessionListener {

    private static final Logger LOGGER = LoggerFactory.getLogger(SessionListener.class);
    private BookService bookService;

    public SessionListener(BookService bookService) {
        this.bookService = bookService;
    }

    @Override
    public void sessionDestroyed(final HttpSessionEvent event) {
        List<Book> books = (List) event.getSession().getAttribute("cart");
        if (CollectionUtils.isEmpty(books)) {
            return;
        }
        bookService.cancelReservation(books);
        LOGGER.info("**************** session invalidated ****************");
    }
}