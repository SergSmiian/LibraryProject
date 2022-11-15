package com.service;


import com.dto.OrderSearchCriteria;
import com.model.Book;
import com.model.Order;
import com.model.User;
import com.model.status.BookStatus;
import com.model.status.OrderStatus;
import com.repository.OrderRepository;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Join;
import javax.persistence.criteria.Predicate;
import javax.transaction.Transactional;
import java.text.MessageFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
public class OrderService {
    private static final Logger LOGGER = LoggerFactory.getLogger(OrderService.class);

    private OrderRepository orderRepository;

    private EmailService emailService;
    @Autowired
    public OrderService(OrderRepository orderRepository, EmailService emailService) {
        this.orderRepository = orderRepository;
        this.emailService = emailService;
    }

    @Transactional
    public List<Order> makeOrder(User user, List<Book> books) {
        List<Order> orders = new ArrayList<>();
        for (Book book : books) {
            Order order = new Order();
            order.setBook(book);
            order.setUser(user);
            order.setIssueDate(LocalDate.now());
            order.setDueDate(LocalDate.now().plusDays(book.getMaxDaysToOrder()));
            order.setStatus(OrderStatus.PENDING);
            orders.add(order);
        }
        orders = orderRepository.saveAll(orders);

        notifyUserAboutTheOrder(user, orders);
        return orders;
    }

    private void notifyUserAboutTheOrder(User user, List<Order> orders) {
        for (Order order : orders) {
            try {
                emailService.sendOrderMessage(order);
            } catch (Exception exception) {
                LOGGER.warn(MessageFormat.format("You order email was not sent to {0}", user.getLogin()), exception);
            }
        }
    }

    @Transactional
    public void cancelOrder(String orderId) {
        Order order = orderRepository.getReferenceById(orderId);
        if (!OrderStatus.PENDING.equals(order.getStatus())) {
            throw new BusinessException("cannot cancel not pending orders");
        }
        order.setStatus(OrderStatus.CANCELLED);
        order.getBook().setBookStatus(BookStatus.FREE);
        orderRepository.save(order);
    }

    public Page<Order> findByUserId(String userId, Pageable pageable) {
        return orderRepository.findByUserId(userId, pageable);
    }

    public List<Order> findByStatus(OrderStatus status) {
        return orderRepository.findByStatus(status, Sort.by("issueDate").descending());
    }

    public Page<Order> findAll(Pageable pageable) {
        return orderRepository.findAll(pageable);
    }
    public Page<Order> findAll(OrderSearchCriteria searchCriteria, Pageable pageable) {
        return orderRepository.findAll(conditionalSearchForOrder(searchCriteria), pageable);
    }

    @Transactional
    public void confirmOrder(String orderId) {
        Optional<Order> orderOptional = orderRepository.findById(orderId);
        if (orderOptional.isEmpty()) {
            throw new BusinessException("Order not found");
        }
        Order order = orderOptional.get();
        order.setStatus(OrderStatus.IN_PROGRESS);
        order.getBook().setBookStatus(BookStatus.TAKEN);
        orderRepository.save(order);
    }

    @Transactional
    public void closeOrder(String orderId) {
        Optional<Order> orderOptional = orderRepository.findById(orderId);
        if (orderOptional.isEmpty()) {
            throw new BusinessException("Order not found");
        }
        Order order = orderOptional.get();
        order.setStatus(OrderStatus.DONE);
        order.getBook().setBookStatus(BookStatus.FREE);
        order.setReturnDate(LocalDate.now());
        orderRepository.save(order);
    }

    private static Specification<Order> conditionalSearchForOrder(OrderSearchCriteria searchCriteria) {
        return (root, query, criteriaBuilder) -> {
            query.distinct(true);
            List<Predicate> list = new ArrayList<>();
            if (CollectionUtils.isNotEmpty(searchCriteria.getOrderStatuses())&&
                    searchCriteria.getOrderStatuses().contains("All")){
                list.add(root.get("status").in(Arrays.asList(OrderStatus.values())));
            } else {
                list.add(root.get("status").in(ObjectUtils.defaultIfNull(searchCriteria.getStatuses(),
                        Arrays.asList(OrderStatus.values()))));
            }
            if (StringUtils.isNotBlank(searchCriteria.getUserName())) {
                Join<Order, User> userJoin = root.join("user");
                list.add(criteriaBuilder.and(criteriaBuilder.equal(userJoin.get("login"),
                        searchCriteria.getUserName())));
            }

            return criteriaBuilder.and(list.toArray(new Predicate[0]));

        };
    }
}
