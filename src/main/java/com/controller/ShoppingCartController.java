package com.controller;

import com.dto.ShoppingCartItemDto;
import com.mapper.CartMapper;
import com.model.Book;
import com.service.BookService;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/cart/cartitem")
public class ShoppingCartController {
    private BookService bookService;

    @Autowired
    public ShoppingCartController(BookService bookService) {
        this.bookService = bookService;
    }

    @PostMapping
    public ShoppingCartItemDto addToCart(String bookId, HttpSession session) {
        List<Book> books = (List) session.getAttribute("cart");
        if (CollectionUtils.isEmpty(books)) {
            books = new ArrayList<>();
        }
        Book book = bookService.reserveBook(bookId);
        books.add(book);
        session.setAttribute("cart", books);
        return CartMapper.convertBookToDto(book, books.size());

    }

    @DeleteMapping("/{id}")
    public ShoppingCartItemDto removeCartItem(@PathVariable("id") String bookId, HttpSession session) {
        List<Book> books = (List) session.getAttribute("cart");
        if (CollectionUtils.isEmpty(books)) {
           throw new IllegalArgumentException("No books to delete");
        }
        Book book = bookService.cancelReservation(bookId);
        books.remove(book);
        session.setAttribute("cart", books);
        return CartMapper.convertBookToDto(book, books.size());
    }
}
