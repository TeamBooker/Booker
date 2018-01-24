package com.booker.server.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
@Entity
@Table(name = "B_RENTAL")
@IdClass(RentalId.class)
@Data
public class Rental implements Serializable {

    @Id
    Integer memberId;
    @Id
    Integer bookId;
    Date regDate;
    public Rental(){}

    public Rental(Integer memberId, Integer bookId) {
        this.memberId = memberId;
        this.bookId = bookId;
        this.regDate = new Date();
    }
}
