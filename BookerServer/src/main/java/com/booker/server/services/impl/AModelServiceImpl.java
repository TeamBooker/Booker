package com.booker.server.services.impl;

import com.booker.server.model.AModel;
import com.booker.server.repository.AModelRepository;
import com.booker.server.services.AModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Cheechyo on 2018. 1. 11..
 */
@Component
public class AModelServiceImpl implements AModelService {
    @Autowired
    AModelRepository aModelRepository;

    @Override
    public AModel findOne(Integer integer) {
        return aModelRepository.findOne(integer);
    }
}
