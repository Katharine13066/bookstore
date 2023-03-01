/*
 * Copyright (c) 2023 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

package com.company.bookstore.entity;

import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.EnableRestore;
import com.haulmont.cuba.core.entity.annotation.TrackEditScreenHistory;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Table(name = "BOOKSTORE_BOOK")
@Entity(name = "bookstore$Book")
@EnableRestore
@TrackEditScreenHistory
public class Book extends StandardEntity {

    private static final long serialVersionUID = 4468084965413275848L;
    @Column(name = "ISBN", nullable = false, length = 13)
    protected String isbn;
    @Column(name = "NAME", nullable = false, length = 200)
    protected String name;
    @JoinTable(name = "BOOKSTORE_BOOK_AUTHOR_LINK",
            joinColumns = @JoinColumn(name = "BOOK_ID", referencedColumnName = "ID"),
            inverseJoinColumns = @JoinColumn(name = "AUTHOR_ID", referencedColumnName = "ID"))
    @ManyToMany
    protected List<Author> authors;
    @Column(name = "PRICE")
    protected BigDecimal price;
    @JoinTable(name = "BOOKSTORE_ONLINE_ORDER_BOOK_LINK",
            joinColumns = @JoinColumn(name = "BOOK_ID", referencedColumnName = "ID"),
            inverseJoinColumns = @JoinColumn(name = "ONLINE_ORDER_ID", referencedColumnName = "CARD_ID"))
    @ManyToMany
    protected List<OnlineOrder> onlineOrders;

    public List<OnlineOrder> getOnlineOrders() {
        return onlineOrders;
    }

    public void setOnlineOrders(List<OnlineOrder> onlineOrders) {
        this.onlineOrders = onlineOrders;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public List<Author> getAuthors() {
        return authors;
    }

    public void setAuthors(List<Author> authors) {
        this.authors = authors;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
}