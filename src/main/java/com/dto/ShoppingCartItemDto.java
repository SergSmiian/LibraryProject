package com.dto;

import lombok.Data;

@Data
public class ShoppingCartItemDto {
    private String title;
    private String imagePath;
    private String id;
    private int cartSize;
}
