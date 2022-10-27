package com.mapper;

import com.dto.UserDto;
import com.model.User;
import java.util.ArrayList;
import java.util.List;

public class UserMapper {
    private UserMapper() {
    }

    public static List<UserDto> convertUserToDtoList(List<User> userList) {
        List<UserDto> userDtos = new ArrayList<>();
        for (User user : userList) {
            UserDto dto = new UserDto();
            dto.setId(user.getId());
            dto.setName(user.getName());
            dto.setLogin(user.getLogin());
            dto.setRole(user.getRole());
            dto.setStatus(user.getStatus());
            userDtos.add(dto);
        }
        return userDtos;
    }
}
