package com.mapper;

import com.dto.UserRegistrationDto;
import com.model.User;
import com.model.status.UserStatus;

public class UserDtoToUserMapper {
    private UserDtoToUserMapper() {
    }

    public static User convert(UserRegistrationDto dto) {
      User user = new User();
      user.setLogin(dto.getLogin());
      user.setPassword(dto.getPassword());
      user.setBirthDate(dto.getBirthDate());
      user.setName(dto.getNickName());
      user.setStatus(UserStatus.ACTIVE);
      return user;
    }
}
