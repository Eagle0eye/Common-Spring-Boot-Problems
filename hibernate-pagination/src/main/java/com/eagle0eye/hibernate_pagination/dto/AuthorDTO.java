package com.eagle0eye.hibernate_pagination.dto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
public class AuthorDTO {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private LocalDate birthdate;
    private LocalDate added;
}
