package com.service;

import com.model.Author;
import com.repository.AuthorRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorService {
    private AuthorRepository authorRepository;

    public AuthorService(AuthorRepository authorRepository) {
        this.authorRepository = authorRepository;
    }

    public List<Author> findAll(){
        Sort sorting =  Sort.by("lastName").ascending();
        return authorRepository.findAll(sorting);
    }

}
