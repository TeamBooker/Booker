package com.booker.server.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Cheechyo on 2018. 1. 11..
 */
@Entity
@Table(name = "B_AMODEL")
public class AModel implements Serializable{
    @Id
    @SequenceGenerator(name="amodel_generator", sequenceName = "B_AMODEL_ID_SEQ")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "amodel_generator")
    private Integer id;

    private String field;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

}
