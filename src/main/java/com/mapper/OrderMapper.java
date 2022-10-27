package com.mapper;

import com.dto.OrderDto;
import com.model.Order;
import java.util.ArrayList;
import java.util.List;

public class OrderMapper {
    private OrderMapper() {
    }

    public static List<OrderDto> convertOrderToDtoList(List<Order> orderList) {
        List<OrderDto> orderDtos = new ArrayList<>();
        for (Order order : orderList) {
            OrderDto dto = new OrderDto();
            dto.setId(order.getId());
            dto.setLogin(order.getUser().getLogin());
            dto.setBookTitle(order.getBook().getTitle());
            dto.setBookImagePath(order.getBook().getImagePath());
            dto.setIssueDate(order.getIssueDate());
            dto.setDueDate(order.getDueDate());
            dto.setOrderStatus(order.getStatus());
            orderDtos.add(dto);
        }
        return orderDtos;
    }
}
