/*
 * Copyright (c) 2023 LTD Haulmont Samara. All Rights Reserved.
 * Haulmont Samara proprietary and confidential.
 * Use is subject to license terms.
 */

package com.company.bookstore.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.annotation.EnableRestore;
import com.haulmont.cuba.core.entity.annotation.TrackEditScreenHistory;
import com.haulmont.cuba.core.entity.annotation.Listeners;
import com.haulmont.thesis.core.entity.TsCard;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@DiscriminatorValue("2000")
@Table(name = "BOOKSTORE_ONLINE_ORDER")
@EnableRestore
@TrackEditScreenHistory
@Entity(name = "bookstore$OnlineOrder")
@Listeners("bookstore_OnlineOrderListener")
@PrimaryKeyJoinColumn(name = "CARD_ID", referencedColumnName = "ID")
@NamePattern("%s|description")
public class OnlineOrder extends TsCard {
    private static final long serialVersionUID = 310094752757261189L;
    @Column(name = "NUMBER_", length = 50)
    protected String number;
    @Temporal(TemporalType.DATE)
    @Column(name = "DATE_")
    protected Date date;
    @Column(name = "AMOUNT")
    protected BigDecimal amount;
    @JoinTable(name = "BOOKSTORE_ONLINE_ORDER_BOOK_LINK",
            joinColumns = @JoinColumn(name = "ONLINE_ORDER_ID", referencedColumnName = "CARD_ID"),
            inverseJoinColumns = @JoinColumn(name = "BOOK_ID", referencedColumnName = "ID"))
    @ManyToMany
    protected List<Book> books;

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}