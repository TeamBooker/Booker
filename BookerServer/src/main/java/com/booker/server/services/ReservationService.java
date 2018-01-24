package com.booker.server.services;

import com.booker.server.model.Book;
import com.booker.server.model.MemberModel;
import com.booker.server.model.Reservation;

import java.util.List;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
public interface ReservationService {
    void reservationBook(Integer bookId, MemberModel member);

    List<Reservation> findAllByMemberId(Integer memberId);

    Reservation findByBookAndMember(Book book, MemberModel currentUser);
}
