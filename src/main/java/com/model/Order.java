package com.model;

import com.model.status.OrderStatus;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.time.LocalDate;
@Data
@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(generator = "UUID")
    @Type(type="com.repository.StringToUUIDType")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;
    @ManyToOne
    @JoinColumn(name="book_id", nullable=false)
    private Book book;
    @ManyToOne
    @JoinColumn(name="user_id", nullable=false)
    private User user;
    @Column(name = "issue_date")
    private LocalDate issueDate;
    @Column(name = "return_date")
    private LocalDate returnDate;
    @Column(name = "due_date")
    private LocalDate dueDate;
    @Enumerated(EnumType.STRING)
    @Type(type = "com.repository.EnumTypePostgreSql")
    private OrderStatus status;
}
