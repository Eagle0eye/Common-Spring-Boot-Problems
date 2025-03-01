package com.eagle0eye.hibernate_pagination.utils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;




public class PaginationUtils {
    private static final int MAX_PAGE_SIZE = 25;
    public static Pageable enforceMaxPageSize(Pageable pageable) {
        return PageRequest.of(
                pageable.getPageNumber(),
                Math.min(pageable.getPageSize(), MAX_PAGE_SIZE),
                pageable.getSort()
        );
    }
}
