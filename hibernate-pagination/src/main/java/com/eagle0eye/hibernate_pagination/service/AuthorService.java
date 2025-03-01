package com.eagle0eye.hibernate_pagination.service;
import com.eagle0eye.hibernate_pagination.dto.AuthorDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface AuthorService {
    Page<AuthorDTO> view(Pageable pageable);
}

