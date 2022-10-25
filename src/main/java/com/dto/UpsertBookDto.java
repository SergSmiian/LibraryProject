package com.dto;

import lombok.Data;

@Data
public class UpsertBookDto {
    private String id;
    private String title;
    private String isbn;
    private String writingToAuthor;
    private String imagePath;
    private String publisherName;
    private Integer yearOfPublication;
    private String description;
    private int maxDaysToOrder;

}
