package com.booker.server.services.impl;

import com.booker.server.model.Book;
import com.booker.server.model.MemberModel;
import com.booker.server.model.Rental;
import com.booker.server.repository.RentalRepository;
import com.booker.server.services.RentalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
@Service
public class RentalServiceImpl implements RentalService {

    @Autowired
    private RentalRepository rentalRepository;

    @Override
    public void rentBook(Integer bookId, MemberModel member) {
        final Rental entity = new Rental();
        entity.setBookId(bookId);
        entity.setMemberId(member.getId());
        entity.setRegDate(new Date());
        rentalRepository.save(entity);
    }

    @Override
    public List<Rental> findAllByMemberId(Integer memberId) {
        return rentalRepository.findAllByMemberId(memberId);
    }

    @Override
    public Rental findByBookAndMember(Book book, MemberModel member) {
        return rentalRepository.findByBookIdAndMemberId(book.getBookId(), member.getId());
    }

    @Override
    public Rental findTopByBook(Book book) {
        return rentalRepository.findTopByBookId(book.getBookId());
    }

}
