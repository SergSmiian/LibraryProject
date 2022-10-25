package com.dto;


import com.validation.FieldMatch;
import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Past;
import java.time.LocalDate;

@FieldMatch.List({
        @FieldMatch(first = "password", second = "confirmPassword", message = "The password fields must match"),
})
@Data
public class UserRegistrationDto {

    @NotEmpty
    @Email
    private String login;

    @NotEmpty
    private String nickName;

    @NotEmpty
    private String password;

    @NotEmpty
    private String confirmPassword;

    @Past
    private LocalDate birthDate;
}