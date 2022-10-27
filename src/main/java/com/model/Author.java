package com.model;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;
import javax.persistence.*;

@Entity
@Data
@Table(name = "authors")
public class Author {
    @Id
    @GeneratedValue(generator = "UUID")
    @Type(type="com.repository.StringToUUIDType")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
}
