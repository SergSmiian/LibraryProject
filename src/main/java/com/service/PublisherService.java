package com.service;

import com.model.Publisher;
import com.repository.PublisherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublisherService {
    private PublisherRepository publisherRepository;
    @Autowired
    public PublisherService(PublisherRepository publisherRepository) {
        this.publisherRepository = publisherRepository;
    }

    public List<Publisher> findAll(){
        Sort sorting =  Sort.by("name").ascending();
        return publisherRepository.findAll(sorting);
    }
}
