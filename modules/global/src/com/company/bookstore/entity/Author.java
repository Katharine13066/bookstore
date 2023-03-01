/*
 * Copyright (c) 2023 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

package com.company.bookstore.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.EnableRestore;
import com.haulmont.cuba.core.entity.annotation.TrackEditScreenHistory;

import javax.persistence.*;
import java.util.List;

@Table(name = "BOOKSTORE_AUTHOR")
@Entity(name = "bookstore$Author")
@EnableRestore
@TrackEditScreenHistory
@NamePattern("%s|fullName")
public class Author extends StandardEntity {

    private static final long serialVersionUID = -53526529446203063L;
    @Column(name = "FULL_NAME", nullable = false, length = 150)
    protected String fullName;
    @JoinTable(name = "BOOKSTORE_BOOK_AUTHOR_LINK",
            joinColumns = @JoinColumn(name = "AUTHOR_ID", referencedColumnName = "ID"),
            inverseJoinColumns = @JoinColumn(name = "BOOK_ID", referencedColumnName = "ID"))
    @ManyToMany
    protected List<Book> books;

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
}