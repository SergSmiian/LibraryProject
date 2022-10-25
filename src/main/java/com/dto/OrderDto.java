package com.dto;

import com.model.status.OrderStatus;
import lombok.Data;

import java.time.LocalDate;
@Data
public class OrderDto {
    private String id;
    private String login;
    private String bookTitle;
    private String bookImagePath;
    private LocalDate issueDate;
    private LocalDate dueDate;
    private OrderStatus orderStatus;
}
