package com.booker.server.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
@Entity
@Table(name = "B_READ")
@Data
public class Read implements Serializable {
    @Id
    Integer memberId;
    @Id
    Integer bookId;
}
