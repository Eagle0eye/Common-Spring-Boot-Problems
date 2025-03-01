package com.eagle0eye.hibernate_pagination.repository;
import com.eagle0eye.hibernate_pagination.entity.Author;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthorRepository extends JpaRepository<Author,Integer> {
    Page<Author> findAll(Pageable pageable);
}
