package com.eagle0eye.hibernate_pagination.controller;
import com.eagle0eye.hibernate_pagination.configuration.RequestConfiguration;
import com.eagle0eye.hibernate_pagination.dto.AuthorDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.eagle0eye.hibernate_pagination.service.AuthorServiceImpl;
import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@RestController
@RequestMapping("/api/authors")
public class AuthorController {
    private final AuthorServiceImpl authorService;
    private final RequestConfiguration requestConfiguration;
    @GetMapping
    public ResponseEntity<?> viewAuthors(
            @PageableDefault(size = 10) Pageable pageable,
            @RequestHeader(value = "X-Client-Type", required = false) String clientType) {
        Pageable _pageable = PageRequest.of(pageable.getPageNumber(), pageable.getPageSize());
        Page<AuthorDTO> authors = authorService.view(_pageable);
        if (requestConfiguration.checkClient(clientType))
        {
            return ResponseEntity.ok().body(authors);
        }
        return ResponseEntity.ok().body(authors.getContent());
    }
}