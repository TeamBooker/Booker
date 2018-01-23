package com.booker.server.repository;

import com.booker.server.model.MemberModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import java.util.HashMap;
import java.util.Map;

public interface MemberRepository extends PagingAndSortingRepository<MemberModel, Integer> {
	
	MemberModel findOneByUsername(String username);

    default Map<String, Integer> getProfile(MemberModel aMember){
        return new HashMap<String, Integer>(){{
            this.put("reservation", countReservationByMemberId(aMember.getId()));
            this.put("read", countReadingByMemberId(aMember.getId()));
            this.put("rental", countRentalByMemberId(aMember.getId()));
            this.put("wish", 99);
        }};
    }

    @Query("select count(r) from Read r where r.memberId=:memberId")
    Integer countReadingByMemberId(@Param("memberId") Integer memberId);

    @Query("select count(r) from Rental r where r.memberId=:memberId")
    Integer countRentalByMemberId(@Param("memberId") Integer memberId);

    @Query("select count(r) from Reservation r where r.memberId=:memberId")
    Integer countReservationByMemberId(@Param("memberId") Integer memberId);

}
