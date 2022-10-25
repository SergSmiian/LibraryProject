package com.repository;

import com.model.Writing;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WritingRepository extends JpaRepository<Writing, String> {

    Writing findByTitle(String title);

}
