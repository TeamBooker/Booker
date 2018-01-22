package com.booker.server.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booker.server.model.MemberModel;
import com.booker.server.repository.MemberRepository;
import com.booker.server.services.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberRepository memberRepository;
	
	@Override
	public MemberModel findOneByUsername(String username) {
		// TODO Auto-generated method stub
		return memberRepository.findOneByUsername(username);
	}

	@Override
	public MemberModel insertMember(String username, String password) {
		// TODO Auto-generated method stub
		MemberModel membermodel = new MemberModel();
		membermodel.setUsername(username);
		membermodel.setPassword(password);
		
		return memberRepository.save(membermodel);
	}
	


}
