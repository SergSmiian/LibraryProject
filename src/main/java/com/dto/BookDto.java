package com.dto;

import com.model.status.BookStatus;
import lombok.Data;

import java.util.Map;

@Data
public class BookDto {
    private String id;
    private String title;
    private String isbn;
    private Map<String, String> writings;
    private String writingsToAuthors;
    private String imagePath;
    private String publisherName;
    private Integer yearOfPublication;
    private BookStatus bookStatus;
    private String description;
    private Integer maxDays;
}
