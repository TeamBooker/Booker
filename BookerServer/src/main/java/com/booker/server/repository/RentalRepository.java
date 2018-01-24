package com.booker.server.repository;

import com.booker.server.model.Rental;
import com.booker.server.model.RentalId;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
public interface RentalRepository extends CrudRepository<Rental, RentalId>{
    List<Rental> findAllByMemberId(Integer memberId);
    Rental findByBookIdAndMemberId(Integer bookId, Integer memberId);
    Rental findTopByBookId(Integer bookId);
}
