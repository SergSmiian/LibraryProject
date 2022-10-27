package com.controller;

import com.dto.BookDto;
import com.dto.SearchCriteria;
import com.mapper.BookMapper;
import com.model.Author;
import com.model.Book;
import com.model.Publisher;
import com.service.AuthorService;
import com.service.BookService;
import com.service.PublisherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/books")
public class BookController {

    private BookService bookService;
    private AuthorService authorService;
    private PublisherService publisherService;
    @Autowired
    public BookController(BookService bookService, AuthorService authorService, PublisherService publisherService) {
        this.bookService = bookService;
        this.authorService = authorService;
        this.publisherService = publisherService;
    }

    @GetMapping("/bok")
    public ModelAndView findBooks(ModelAndView modelAndView, @RequestParam(name = "size", defaultValue = "10") int size,
                                  @RequestParam(name = "page", defaultValue = "0") int page,
                                  @RequestParam(name = "sort", defaultValue = "id") String sortField,
                                  @RequestParam(name = "order", defaultValue = "ASC") String order,
                                  SearchCriteria searchCriteria) {

        Sort sorting = order.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortField).ascending() : Sort.by(sortField).descending();
        Pageable pageable = PageRequest.of(page, size, sorting);
        Page<Book> bookPage = bookService.findByCriteria(searchCriteria , pageable);
        Page<BookDto> bookDtoPage = new PageImpl<>(BookMapper.convertBookToDtoList(bookPage.toList()), pageable, bookPage.getTotalElements());
        List<Author> authors = authorService.findAll();
        List<Publisher> publishers = publisherService.findAll();
        modelAndView.addObject("bookPage", bookDtoPage);
        modelAndView.addObject("sort", sortField);
        modelAndView.addObject("order", order);
        modelAndView.addObject("authors", authors);
        modelAndView.addObject("search", searchCriteria);
        modelAndView.addObject("publishers", publishers);
        modelAndView.setViewName("books-media-list-view");
        return modelAndView;
    }

}
