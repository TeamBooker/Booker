package com.booker.server.repository;

import com.booker.server.model.MemberModel;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface MemberRepository extends PagingAndSortingRepository<MemberModel, Integer> {
	
	MemberModel findOneByUsername(String username);

}
