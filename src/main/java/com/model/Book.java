package com.model;

import com.model.status.BookStatus;
import lombok.Data;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "books")
public class Book {
    @Id
    @GeneratedValue(generator = "UUID")
    @Type(type="com.repository.StringToUUIDType")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;
    private String title;
    private String isbn;
    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
    @JoinTable(name = "writing_to_book",
            joinColumns = @JoinColumn(name = "book_id", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "writing_id"))
    private List<Writing> writings;
    @Column(name = "image_path")
    private String imagePath;
    @ManyToOne
    @JoinColumn(name = "publisher_id")
    private Publisher publisher;
    @Column(name = "year")
    private Integer yearOfPublication;
    @Column(name = "max_days_to_order")
    private Integer maxDaysToOrder;
    @Enumerated(EnumType.STRING)
    @Type(type = "com.repository.EnumTypePostgreSql")
    private BookStatus bookStatus;
    private String description;
    @Column(name = "deleted_flag")
    private boolean deleted;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Book)) return false;
        Book book = (Book) o;
        return new EqualsBuilder().append(id, book.id).isEquals();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17, 37).append(id).toHashCode();
    }
}
