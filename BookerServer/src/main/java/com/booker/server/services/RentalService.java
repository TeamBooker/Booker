package com.booker.server.services;

import com.booker.server.model.MemberModel;
import com.booker.server.model.Rental;

import java.util.List;

/**
 * Created by Cheechyo on 2018. 1. 24..
 */
public interface RentalService {
    void rentBook(Integer bookId, MemberModel member);

    List<Rental> findAllByMemberId(Integer memberId);

}
