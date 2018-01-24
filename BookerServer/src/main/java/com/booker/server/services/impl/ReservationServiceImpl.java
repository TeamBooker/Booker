package com.booker.server.services.impl;

import com.booker.server.model.Book;
import com.booker.server.model.MemberModel;
import com.booker.server.model.Reservation;
import com.booker.server.repository.ReservationRepository;
import com.booker.server.services.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
@Service
public class ReservationServiceImpl implements ReservationService{
    @Autowired
    private ReservationRepository reservationRepository;

    @Override
    public void reservationBook(Integer bookId, MemberModel member) {
        final Reservation reservation = new Reservation();
        reservation.setBookId(bookId);
        reservation.setMemberId(member.getId());
        reservation.setRegDate(new Date());
        reservationRepository.save(reservation);
    }

    @Override
    public List<Reservation> findAllByMemberId(Integer memberId) {
        return reservationRepository.findAllByMemberId(memberId);
    }

    @Override
    public Reservation findByBookAndMember(Book book, MemberModel member) {
        return reservationRepository.findByBookIdAndMemberId(book.getBookId(), member.getId());
    }

}
