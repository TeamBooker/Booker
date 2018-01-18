package com.booker.server.services;

import com.booker.server.model.MemberModel;

public interface MemberService {

	MemberModel findOneByUsername(String username);
	
	MemberModel insertMember(String username,String password);
}
