package com.booker.server.services.impl;

import com.booker.server.model.MemberModel;
import com.booker.server.repository.MemberRepository;
import com.booker.server.services.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberRepository memberRepository;

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

	@Override
	public Page<MemberModel> findAll(Pageable pageable) {
		return memberRepository.findAll(pageable);
	}


    public Map<String, Object> getProfile(String username) {
		final MemberModel aMemberModel = memberRepository.findOneByUsername(username);
		final Map<String, Integer> profile;
		if (aMemberModel == null){
			final HashMap<String, Integer> dummyProfile = new HashMap<String, Integer>() {{
				this.put("reservation", -1);
				this.put("read", -1);
				this.put("rental", -1);
				this.put("wish", -1);
			}};
			profile = dummyProfile;
		} else {
			profile = memberRepository.getProfile(aMemberModel);
		}
		return new HashMap<String, Object>(){{
            this.put("name", username);
			this.put("numberOf", profile);
        }};
    }

}
