package com.controller;

import com.dto.UserRegistrationDto;
import com.mapper.UserDtoToUserMapper;
import com.model.status.Role;
import com.model.User;
import com.service.BusinessException;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {
    public static final String VIEW_NAME = "signin";
    private final UserService service;

    @Autowired
    public UserController(UserService service) {
        this.service = service;
    }

    @PostMapping("/registration")
    public ModelAndView registration(@Valid UserRegistrationDto userDto, BindingResult result,
                                     ModelAndView modelAndView, HttpServletRequest request) {
        if (result.hasErrors()) {
            modelAndView.setViewName(VIEW_NAME);
        } else {
            User user = UserDtoToUserMapper.convert(userDto);
            user.setRole(Role.USER);
            try {
                service.save(user);
                request.login(user.getLogin(), userDto.getPassword());
                modelAndView.setViewName("redirect:/books/bok");
            } catch (BusinessException | ServletException exception) {
                modelAndView.addObject("error", exception.getMessage());
                modelAndView.setViewName(VIEW_NAME);
            }
        }
        return modelAndView;
    }

    @GetMapping(value={"/signin","/signin.html"})
    public ModelAndView registration(ModelAndView modelAndView) {
        modelAndView.addObject("userRegistrationDto", new UserRegistrationDto());
        modelAndView.setViewName(VIEW_NAME);
        return modelAndView;
    }

    @RequestMapping("/login-error.html")
    public ModelAndView loginError(ModelAndView modelAndView) {
        modelAndView.addObject("loginError", true);
        modelAndView.addObject("userRegistrationDto", new UserRegistrationDto());
        modelAndView.setViewName(VIEW_NAME);
        return modelAndView;
    }

}
