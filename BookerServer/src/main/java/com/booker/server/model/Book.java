package com.booker.server.model;

import javax.persistence.*;

/**
 * Created by Cheechyo on 2018. 1. 18..
 */
@Entity
@Table(name = "B_BOOK")
public class Book {
    @Id
    @SequenceGenerator(name="book_generator", sequenceName = "B_BOOK_NO_SEQ")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "book_generator")
    Integer bookId;
    String bookTitle;
    String bookWriter;
    String bookPublisher;
    String bookDate;

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getBookWriter() {
        return bookWriter;
    }

    public void setBookWriter(String bookWriter) {
        this.bookWriter = bookWriter;
    }

    public String getBookPublisher() {
        return bookPublisher;
    }

    public void setBookPublisher(String bookPublisher) {
        this.bookPublisher = bookPublisher;
    }

    public String getBookDate() {
        return bookDate;
    }

    public void setBookDate(String bookDate) {
        this.bookDate = bookDate;
    }
}
