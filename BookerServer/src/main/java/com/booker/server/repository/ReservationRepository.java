package com.booker.server.repository;

import com.booker.server.model.Reservation;
import com.booker.server.model.ReservationId;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
public interface ReservationRepository extends CrudRepository<Reservation, ReservationId>{
    List<Reservation> findAllByMemberId(Integer memberId);

    Reservation findByBookIdAndMemberId(Integer bookId, Integer memberId);
}
