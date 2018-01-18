package com.booker.server.repository;

import org.springframework.data.repository.CrudRepository;

import com.booker.server.model.MemberModel;

public interface MemberRepository extends CrudRepository<MemberModel, Integer> {
	
	MemberModel findOneByUsername(String username);

}
