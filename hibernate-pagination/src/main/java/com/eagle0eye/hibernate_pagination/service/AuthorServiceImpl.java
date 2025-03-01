package com.eagle0eye.hibernate_pagination.service;

import com.eagle0eye.hibernate_pagination.repository.AuthorRepository;
import com.eagle0eye.hibernate_pagination.dto.AuthorDTO;
import com.eagle0eye.hibernate_pagination.mapper.AuthorMapper;
import com.eagle0eye.hibernate_pagination.utils.PaginationUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import jakarta.transaction.Transactional;

@RequiredArgsConstructor
@Service
public class AuthorServiceImpl implements AuthorService{
    private final AuthorRepository authorRepository;
    private final AuthorMapper authorMapper;

    @Transactional
    @Override
    public Page<AuthorDTO> view(Pageable pageable) {
        pageable = PaginationUtils.enforceMaxPageSize(pageable);
        return authorRepository.findAll(pageable).map(authorMapper::MapToAuthorDTO);
    }
}
