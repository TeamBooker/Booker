package com.booker.server.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Cheechyo on 2018. 1. 11..
 */
@Entity
@Table(name = "B_AMODEL")
public class AModel implements Serializable{
    @Id
    @GeneratedValue
    private String id;
    private String field;

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
