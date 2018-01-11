package com.booker.server.repository;

import com.booker.server.model.AModel;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Cheechyo on 2018. 1. 11..
 */
public interface AModelRepository extends CrudRepository<AModel, Integer> {
    @Override
    AModel save(AModel entity);

    @Override
    AModel findOne(Integer integer);
}
