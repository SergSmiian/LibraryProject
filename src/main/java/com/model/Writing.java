package com.model;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;
import javax.persistence.*;
import java.util.List;
@Data
@Entity
@Table(name = "writings")
public class Writing {
    @Id
    @GeneratedValue(generator = "UUID")
    @Type(type="com.repository.StringToUUIDType")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;
    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
    @JoinTable(name = "author_to_writing",
            joinColumns = @JoinColumn(name = "writing_id"),
            inverseJoinColumns = @JoinColumn(name = "author_id"))
    private List<Author> authors;
    private String title;
}
