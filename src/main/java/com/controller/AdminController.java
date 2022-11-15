package com.controller;

import com.dto.UserDto;
import com.mapper.UserMapper;
import com.model.User;
import com.model.status.OrderStatus;
import com.model.status.UserStatus;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class AdminController {
    private final UserService service;

    @Autowired
    public AdminController(UserService service) {
        this.service = service;
    }

    @PutMapping("/user/{id}/activate")
    public void activateUser(@PathVariable("id") String userId) {
        service.updateUserStatus(userId, UserStatus.ACTIVE);
    }
    @PutMapping("/user/{id}/block")
    public void blockUser(@PathVariable("id") String userId) {
        service.updateUserStatus(userId, UserStatus.BLOCKED);
    }

    @GetMapping("/users")
    public ModelAndView getAllUsers(ModelAndView modelAndView,
            @RequestParam(name = "size", defaultValue = "10") int size,
            @RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "sort", defaultValue = "id") String sortField,
            @RequestParam(name = "order", defaultValue = "ASC") String order) {
        Sort sorting = order.equalsIgnoreCase(
                Sort.Direction.ASC.name()) ?
                Sort.by(sortField).ascending() :
                Sort.by(sortField).descending();
        Pageable pageable = PageRequest.of(page, size, sorting);

        Page<User> users = service.findAllUsers(pageable);
        List<UserDto> userDtoList = UserMapper.convertUserToDtoList(users.getContent());
        Page<UserDto> userDtoPage = new PageImpl<>(userDtoList, pageable,
                users.getTotalElements());

        modelAndView.addObject("userPage", userDtoPage);
        modelAndView.addObject("sort", sortField);
        modelAndView.addObject("order", order);

        modelAndView.setViewName("manage-users");
        return modelAndView;
    }

}
