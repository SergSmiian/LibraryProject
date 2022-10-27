package com.dto;

import com.model.status.OrderStatus;
import lombok.Data;

import java.util.List;

@Data
public class OrderSearchCriteria {
    private String userName;
    private List<OrderStatus> orderStatuses;
}
