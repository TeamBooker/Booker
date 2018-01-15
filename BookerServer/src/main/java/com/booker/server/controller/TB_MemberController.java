package com.booker.server.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TB_MemberController {
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(Model model,HttpSession session,String InputId,String InPutPassword){
		model.addAttribute("Name_tag", InputId.toUpperCase().charAt(0));
		session.setAttribute("UserId", InputId);
		return "top";
		}

}
