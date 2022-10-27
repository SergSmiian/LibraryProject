package com.mapper;

import com.dto.ShoppingCartItemDto;
import com.model.Book;

public class CartMapper {
    private CartMapper() {
    }

    public static ShoppingCartItemDto convertBookToDto(Book book, int size) {
        ShoppingCartItemDto dto = new ShoppingCartItemDto();
        dto.setTitle(book.getTitle());
        dto.setId(book.getId());
        dto.setImagePath(book.getImagePath());
        dto.setCartSize(size);
        return dto;
    }
}
