package com.eagle0eye.hibernate_pagination.mapper;

import com.eagle0eye.hibernate_pagination.dto.AuthorDTO;
import com.eagle0eye.hibernate_pagination.entity.Author;
import org.springframework.stereotype.Component;

@Component
public class AuthorMapper {
    public AuthorDTO MapToAuthorDTO(Author author){
        return AuthorDTO.builder()
                .id(author.getId())
                .firstName(author.getFirstName())
                .lastName(author.getLastName())
                .email(author.getEmail())
                .birthdate(author.getBirthdate())
                .added(author.getAdded())
                .build();
    }
}
