package com.booker.server.controller;

import com.booker.server.model.MemberModel;
import com.booker.server.services.impl.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class TB_MemberController {

	@Autowired
	MemberServiceImpl memberService;


	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(Model model,HttpSession session,String inputId,String inputPassword){

		MemberModel member = memberService.findOneByUsername(inputId);

		/*로그인 오류 검사*/
		if(member==null) {
			model.addAttribute("Login_error", "1");
			return "top";
		}else if(!member.getPassword().equals(inputPassword)) {
			model.addAttribute("Password_error","1");
			return "top";
		}

		/*로그인 성공*/
		session.setAttribute("Name_tag", inputId.toUpperCase().charAt(0));
		session.setAttribute("UserId", inputId);
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

	@RequestMapping(value="/read")
	public String read(Model model) {
		System.out.println("열람 실행");
		return "readList";
	}

	@RequestMapping(value="/reservation")
	public String reservation(Model model) {
		System.out.println("예약 실행");

		return "reservationList";
	}

	@RequestMapping(value="/rental")
	public String retal(Model model) {
		System.out.println("대출 실행");

		return "rentalList";
	}

	@RequestMapping(value="/wish")
	public String wish(Model model) {
		System.out.println("위시 실행");

		return "wishList";
	}

	@GetMapping("/currentUserProfile")
    @ResponseBody
	public Map<String, Object> currentUser (){
		return new HashMap<String, Object>(){{
			this.put("name", "kwj9211@gmail.com");
			this.put("numberOf", new HashMap<String, Number>(){{
				this.put("reservation", 1);
				this.put("reading", 2);
				this.put("rental", 3);
				this.put("wish", 4);
			}});
		}};
	}

	@RequestMapping(value = "/logout")
	public String logout(Model model, HttpServletRequest request, HttpSession session)
	{
		System.out.println("로그아웃");
		//getSession(false) 현재 세션이 존재하면 기존 세션 리턴, 없으면 null값 리턴
		session = request.getSession(false);

		//현재 세션이 존재하면
		if(session != null)
		{
			//세션 소멸
			session.invalidate();
		}

		return "redirect:/main";
	}
}
