package com.repository;

import com.model.Author;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorRepository extends JpaRepository<Author, String> {
    Author findByFirstNameAndLastName(String firstName, String lastName);

}
