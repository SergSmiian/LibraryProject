package com.controller;

import com.dto.*;
import com.mapper.BookMapper;
import com.mapper.OrderMapper;
import com.model.Book;
import com.model.Order;
import com.service.BookService;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/librarian")
public class LibrarianBookController {
    private BookService bookService;

    private OrderService orderService;


    @Autowired
    public LibrarianBookController(BookService bookService, OrderService orderService) {

        this.bookService = bookService;
        this.orderService = orderService;
    }

    @DeleteMapping("/books/{id}")
    public void deleteBook(@PathVariable("id") String bookId) {
        bookService.markBookDeleted(bookId);
    }

    @GetMapping("/books")
    public ModelAndView findBooks(ModelAndView modelAndView,
                                  @RequestParam(name = "size", defaultValue = "10") int size,
                                  @RequestParam(name = "page", defaultValue = "0") int page,
                                  @RequestParam(name = "sort", defaultValue = "id") String sortField,
                                  @RequestParam(name = "order", defaultValue = "ASC") String order, SearchCriteria searchCriteria) {

        Sort sorting = order.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortField).ascending() : Sort.by(sortField).descending();
        Pageable pageable = PageRequest.of(page, size, sorting);
        Page<Book> bookPage = bookService.findByCriteria(searchCriteria, pageable);
        Page<BookDto> bookDtoPage = new PageImpl<>(BookMapper.convertBookToDtoList(bookPage.toList()), pageable, bookPage.getTotalElements());
        modelAndView.addObject("bookPage", bookDtoPage);
        modelAndView.addObject("sort", sortField);
        modelAndView.addObject("order", order);
        modelAndView.addObject("search", searchCriteria);
        modelAndView.addObject("createBookDto", new UpsertBookDto());

        modelAndView.setViewName("manage-books");
        return modelAndView;
    }

    @PostMapping("/books")
    public ModelAndView createBook(@Valid UpsertBookDto createBookDto, BindingResult result, ModelAndView modelAndView) {

        if (result.hasErrors()) {
            modelAndView.setViewName("manage-books");
        } else {
            bookService.createBook(createBookDto);
            modelAndView.setViewName("redirect:/librarian/books");
        }
        return modelAndView;
    }

    @PostMapping("/books/edit")
    public ModelAndView updateBook(@Valid UpsertBookDto updateBookDto, ModelAndView modelAndView) {

        bookService.updateBook(updateBookDto);
        modelAndView.setViewName("redirect:/librarian/books");
        return modelAndView;
    }


    @GetMapping("/orders")
    public ModelAndView getAllOrders(ModelAndView modelAndView,
                                     @RequestParam(name = "size", defaultValue = "10") int size,
                                     @RequestParam(name = "page", defaultValue = "0") int page,
                                     @RequestParam(name = "sort", defaultValue = "id") String sortField,
                                     @RequestParam(name = "order", defaultValue = "ASC") String order,
                                     OrderSearchCriteria searchCriteria) {
        Sort sorting = order.equalsIgnoreCase(
                Sort.Direction.ASC.name()) ?
                Sort.by(sortField).ascending() :
                Sort.by(sortField).descending();
        Pageable pageable = PageRequest.of(page, size, sorting);


        Page<Order> orders = orderService.findAll(searchCriteria, pageable);
        List<OrderDto> orderDtos = OrderMapper.convertOrderToDtoList(orders.getContent());
        Page<OrderDto> orderDtoPage = new PageImpl<>(orderDtos, pageable,
                orders.getTotalElements());

        modelAndView.addObject("orderPage", orderDtoPage);
        modelAndView.addObject("sort", sortField);
        modelAndView.addObject("order", order);
        modelAndView.addObject("search", searchCriteria);
        modelAndView.setViewName("manage-orders");
        return modelAndView;
    }

    @PutMapping("/orders/{id}")
   public void confirmOrder(@PathVariable("id") String orderId){
        orderService.confirmOrder(orderId);
    }

    @PutMapping("/orders/{id}/close")
    public void closeOrder(@PathVariable("id") String orderId){
        orderService.closeOrder(orderId);
    }

}
