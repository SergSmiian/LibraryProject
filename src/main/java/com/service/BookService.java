package com.service;

import com.dto.SearchCriteria;
import com.dto.UpsertBookDto;
import com.model.Author;
import com.model.Book;
import com.model.Publisher;
import com.model.Writing;
import com.model.status.BookStatus;
import com.repository.AuthorRepository;
import com.repository.BookRepository;
import com.repository.PublisherRepository;
import com.repository.WritingRepository;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.Join;
import javax.persistence.criteria.Predicate;
import javax.transaction.Transactional;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class BookService {
    private BookRepository bookRepository;
    private PublisherRepository publisherRepository;
    private AuthorRepository authorRepository;
    private WritingRepository writingRepository;
    @Autowired
    public BookService(BookRepository bookRepository, PublisherRepository publisherRepository, AuthorRepository authorRepository, WritingRepository writingRepository) {
        this.bookRepository = bookRepository;
        this.publisherRepository = publisherRepository;
        this.authorRepository = authorRepository;
        this.writingRepository = writingRepository;
    }

    public Page<Book> find(Pageable pageable) {
        return bookRepository.findAll(pageable);
    }

    public Page<Book> findByCriteria(SearchCriteria searchCriteria, Pageable pageable) {
        return bookRepository.findAll(conditionalSearchForBook(searchCriteria), pageable);
    }

    @Transactional
    public Book reserveBook(String bookId) {
        Book book = bookRepository.getReferenceById(bookId);
        if (!BookStatus.FREE.equals(book.getBookStatus())) {
            throw new BusinessException(MessageFormat.format("Book {0} is not available for booking", bookId));
        }
        book.setBookStatus(BookStatus.BOOKED);
        book = bookRepository.save(book);
        return book;
    }

    @Transactional
    public Book cancelReservation(String bookId) {
        Book book = bookRepository.getReferenceById(bookId);
        book.setBookStatus(BookStatus.FREE);
        book = bookRepository.save(book);
        return book;
    }

    @Transactional
    public void cancelReservation(List<Book> books) {
        for (Book book : books) {
            book.setBookStatus(BookStatus.FREE);
        }
        bookRepository.saveAll(books);
    }

    @Transactional
    public void markBookDeleted(String bookId) {
        Book book = bookRepository.getReferenceById(bookId);
        if (!BookStatus.FREE.equals(book.getBookStatus())) {
            throw new BusinessException("Cant delete book! Look at book_status");
        }
        book.setDeleted(true);
        bookRepository.save(book);
    }

    @Transactional
    public Book createBook(UpsertBookDto bookDto) {
        String content = bookDto.getWritingToAuthor();
        List<Writing> writings = extractWritings(content);
        Publisher publisher = publisherRepository.findByName(bookDto.getPublisherName());
        if (publisher == null) {
            publisher = new Publisher();
            publisher.setName(bookDto.getPublisherName());
            publisher = publisherRepository.save(publisher);
        }
        Book book = new Book();
        book.setPublisher(publisher);
        book.setWritings(writings);
        book.setDescription(bookDto.getDescription());
        book.setTitle(bookDto.getTitle());
        book.setIsbn(bookDto.getIsbn());
        book.setImagePath(bookDto.getImagePath());
        book.setBookStatus(BookStatus.FREE);
        book.setYearOfPublication(bookDto.getYearOfPublication());
        book.setMaxDaysToOrder(bookDto.getMaxDaysToOrder());
        return bookRepository.save(book);
    }

    private List<Writing> extractWritings(String content) {
        List<Writing> writings = new ArrayList<>();
        content.lines().forEach(line -> {
            String[] writingAuthor = line.split("\\^");
            Writing writing = writingRepository.findByTitle(writingAuthor[0]);
            if (writing == null) {
                writing = new Writing();
                writing.setTitle(writingAuthor[0]);
                List<Author> authors = new ArrayList<>();
                String[] authorArray = writingAuthor[1].split(";");
                for (String authorNames : authorArray) {
                    String[] names = authorNames.split("\\|");
                    Author author = authorRepository.findByFirstNameAndLastName(names[0], names[1]);
                    if (author == null) {
                        author = new Author();
                        author.setFirstName(names[0]);
                        author.setLastName(names[1]);
                        author = authorRepository.save(author);
                    }
                    authors.add(author);

                }
                writing.setAuthors(authors);
            }

            writing = writingRepository.save(writing);
            writings.add(writing);
        });
        return writings;
    }

    public static Specification<Book> conditionalSearchForBook(SearchCriteria searchCriteria) {
        return (root, query, criteriaBuilder) -> {
            query.distinct(true);
            List<Predicate> list = new ArrayList<>();
            Join<Book, Publisher> publisher = root.join("publisher");
            Join<Book, Writing> writing = root.join("writings");
            Join<Writing, Author> authors = writing.join("authors");
            list.add(root.get("bookStatus").in(ObjectUtils.defaultIfNull(searchCriteria.getBookStatus(), Arrays.asList(BookStatus.values()))));
            list.add(criteriaBuilder.and(criteriaBuilder.isFalse(root.get("deleted"))));
            if (searchCriteria.getPublicationYear() != null) {
                list.add(criteriaBuilder.and(criteriaBuilder.equal(root.get("yearOfPublication"), searchCriteria.getPublicationYear())));
            }
            if (StringUtils.isNotEmpty(searchCriteria.getTitle())) {
                list.add(criteriaBuilder.and(criteriaBuilder.like(writing.get("title"), StringUtils.wrap(searchCriteria.getTitle(), "%"))));
            }
            if (CollectionUtils.isNotEmpty(searchCriteria.getAuthorIds())) {
                list.add(authors.get("id").in(searchCriteria.getAuthorIds()));
            }
            if (CollectionUtils.isNotEmpty(searchCriteria.getPublisherIds())) {
                list.add(publisher.get("id").in(searchCriteria.getPublisherIds()));
            }

            return criteriaBuilder.and(list.toArray(new Predicate[0]));

        };
    }

    public void updateBook(UpsertBookDto bookDto) {
        Book book = bookRepository.getReferenceById(bookDto.getId());
        if (book == null) {
            throw new BusinessException("There is no book to update");
        }
        String content = bookDto.getWritingToAuthor();
        List<Writing> writings = extractWritings(content);
        Publisher publisher = publisherRepository.findByName(bookDto.getPublisherName());
        if (publisher == null) {
            publisher = new Publisher();
            publisher.setName(bookDto.getPublisherName());
            publisher = publisherRepository.save(publisher);
        }

        book.setPublisher(publisher);
        book.setWritings(writings);
        book.setDescription(bookDto.getDescription());
        book.setTitle(bookDto.getTitle());
        book.setIsbn(bookDto.getIsbn());
        book.setImagePath(bookDto.getImagePath());
        book.setYearOfPublication(bookDto.getYearOfPublication());
        book.setMaxDaysToOrder(bookDto.getMaxDaysToOrder());
        bookRepository.save(book);
    }
}
