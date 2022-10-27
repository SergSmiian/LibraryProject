package com.dto;

import com.model.status.Role;
import com.model.status.UserStatus;
import lombok.Data;

@Data
public class UserDto {
    private String id;
    private String name;
    private String login;
    private Role role;
    private UserStatus status;
}
