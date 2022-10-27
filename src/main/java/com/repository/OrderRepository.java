package com.repository;

import com.model.Order;
import com.model.status.OrderStatus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, String> , JpaSpecificationExecutor<Order> {
   Page<Order> findByUserId(String userId, Pageable pageable);
   List<Order> findByStatus(OrderStatus status, Sort sort);

}
