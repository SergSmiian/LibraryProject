package com.mapper;

import com.dto.BookDto;
import com.model.Book;
import com.model.Writing;
import org.apache.commons.lang3.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class BookMapper {
    private BookMapper() {
    }

    public static List<BookDto> convertBookToDtoList(List<Book> bookList) {
        List<BookDto> bookDto = new ArrayList<>();
        for (Book book : bookList) {
            BookDto dto = new BookDto();
            dto.setId(book.getId());
            dto.setIsbn(book.getIsbn());
            dto.setImagePath(book.getImagePath());
            dto.setTitle(book.getTitle());
            Map<String, String> writings = new HashMap<>();
            StringBuilder writingsToAuthor = new StringBuilder();
            for (Writing w : book.getWritings()) {
                String authors = w.getAuthors().
                        stream().
                        map(n -> StringUtils.defaultIfBlank( n.getFirstName(),"") + " " + n.getLastName())
                        .collect(Collectors.joining(", "));
                writings.put(w.getTitle(), authors);

                writingsToAuthor.append(w.getTitle()).append("^");
                writingsToAuthor.append(w.getAuthors().
                                stream().
                                map(n -> StringUtils.defaultIfBlank( n.getFirstName(),"") + "|" + n.getLastName())
                        .collect(Collectors.joining(";")));
                writingsToAuthor.append("\n");
            }
            dto.setWritings(writings);
            dto.setWritingsToAuthors(writingsToAuthor.toString());
            dto.setPublisherName(book.getPublisher().getName());
            dto.setYearOfPublication(book.getYearOfPublication());
            dto.setBookStatus(book.getBookStatus());
            dto.setDescription(book.getDescription());
            dto.setMaxDays(book.getMaxDaysToOrder());
            bookDto.add(dto);
        }

        return bookDto;
    }
}
