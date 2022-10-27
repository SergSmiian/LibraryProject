package com.dto;

import com.model.status.BookStatus;
import lombok.Data;

import java.util.List;

@Data
public class SearchCriteria {
    private String title;
    private List<String> authorIds;
    private List<String> publisherIds;
    private Integer publicationYear;
    private List<BookStatus> bookStatus;
}
