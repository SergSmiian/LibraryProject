package com.controller;

import com.dto.OrderDto;
import com.mapper.OrderMapper;
import com.model.Book;
import com.model.Order;
import com.model.User;
import com.service.BusinessException;
import com.service.OrderService;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/user/order")
public class UserOrderController {
    private final OrderService orderService;

    @Autowired
    public UserOrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @PostMapping
    public void makeOrder(HttpSession session, Authentication authentication) {
        User user = (User) authentication.getPrincipal();
        List<Book> books = (List) session.getAttribute("cart");
        session.setAttribute("cart", new ArrayList<>());
        if (CollectionUtils.isEmpty(books)) {
            throw new BusinessException("No books to order");
        }
        orderService.makeOrder(user, books);
    }
    @GetMapping
    public ModelAndView getUserOrders(ModelAndView modelAndView, Authentication authentication,
                                      @RequestParam(name = "size", defaultValue = "10") int size,
                                                @RequestParam(name = "page", defaultValue = "0") int page,
                                                @RequestParam(name = "sort", defaultValue = "issueDate") String sortField,
                                                @RequestParam(name = "order", defaultValue = "DESC") String order) {
        Sort sorting = order.equalsIgnoreCase(
                                Sort.Direction.ASC.name()) ?
                                Sort.by(sortField).ascending() :
                                Sort.by(sortField).descending();
        Pageable pageable = PageRequest.of(page, size, sorting);
        User user = (User) authentication.getPrincipal();
        Page<Order> orders = orderService.findByUserId(user.getId(),pageable);
        List<OrderDto> orderDtos = OrderMapper.convertOrderToDtoList(orders.getContent());
        Page<OrderDto> orderDtoPage = new PageImpl<>(orderDtos, pageable,
                orders.getTotalElements());

        modelAndView.addObject("orderPage", orderDtoPage);
        modelAndView.addObject("sort", sortField);
        modelAndView.addObject("order", order);
        modelAndView.setViewName("user-order");
        return modelAndView;

    }
    @DeleteMapping("/{id}")
    public void cancelOrder(@PathVariable("id") String orderId){
       orderService.cancelOrder(orderId);
    }
}
