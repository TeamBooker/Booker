package com.booker.server.services;

import com.booker.server.model.MemberModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface MemberService {

	MemberModel findOneByUsername(String username);
	
	MemberModel insertMember(String username,String password);

    Page<MemberModel> findAll(Pageable pageable);
}
