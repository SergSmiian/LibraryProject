package com.dto;

import com.model.status.OrderStatus;
import lombok.Data;

import java.util.List;

@Data
public class OrderSearchCriteria {
    private String userName;
    private List<String> orderStatuses;

    public List<OrderStatus> getStatuses(){
        if(orderStatuses==null) return null;
        return orderStatuses.stream().map(OrderStatus::valueOf).toList();
    }

}
