package com.booker.server.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booker.server.model.MemberModel;
import com.booker.server.services.impl.MemberServiceImpl;

@Controller
public class TB_MemberController {
	
	@Autowired
	MemberServiceImpl memberService;
	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(Model model,HttpSession session,String InputId,String InPutPassword){
		
		MemberModel member = memberService.findOneByUsername(InputId);
		
		/*로그인 오류 검사*/
		if(member==null) {
			model.addAttribute("Login_error", "1");
			return "top";
		}else if(!member.getPassword().equals(InPutPassword)) {
			model.addAttribute("Password_error","1");
			return "top";
		}
		
		/*로그인 성공*/
		session.setAttribute("Name_tag", InputId.toUpperCase().charAt(0));
		session.setAttribute("UserId", InputId);
		return "top";
		}
	
	/*아이디 중복검사*/
	/*jsp가 아닌 data로 사용하기 위한 어노테이션 추가*/
	@RequestMapping(value="/checkid", method=RequestMethod.POST)
	@ResponseBody
	public int check(Model model, String InputId) {
		System.out.println("아이디 중복");
		MemberModel member = memberService.findOneByUsername(InputId);
		
		int check_id;	
		
		if(member==null) {
			check_id=0;
			return check_id;
		}else {
			check_id=1;
			return check_id;
		}
		
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	@ResponseBody
	public int signup(Model model,String InputId, String InputPassword) {
		System.out.println(InputId+" "+InputPassword);
		memberService.insertMember(InputId, InputPassword);
		return 0;
	}
	
	@RequestMapping(value="/read", method= RequestMethod.POST)
	public String read(Model model) {
		System.out.println("열람 실행");
		return "readList";
	}

	@RequestMapping(value="/reservation", method= RequestMethod.POST)
	public String reservation(Model model) {
		System.out.println("예약 실행");
	
		return "reservationList";
	}
	
	@RequestMapping(value="/rental", method= RequestMethod.POST)
	public String retal(Model model) {
		System.out.println("대출 실행");
		
		return "rentalList";
	}
	
	@RequestMapping(value="/wish", method= RequestMethod.POST)
	public String wish(Model model) {
		System.out.println("위시 실행");
		
		return "wishList";
	}
}
