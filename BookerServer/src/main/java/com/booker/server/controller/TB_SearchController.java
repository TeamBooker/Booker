package com.booker.server.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booker.server.model.Book;
import com.booker.server.services.SearchService;

@Controller
public class TB_SearchController {
	
	@Autowired
	SearchService searchservice;
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public void search() {}
	
	@RequestMapping("/search_list")
	@ResponseBody
    public Page<Book> search_list(String keyword,Model model,Pageable pageable) {
    	Page<Book> searchList;

    	if(keyword==null || keyword.equals("")) {
    		System.out.println("not search");
    		searchList =searchservice.findAll(pageable);
    	}else {
    		System.out.println("search");
    		searchList = searchservice.findByBook_titleStartingWith(pageable,keyword);
    		 System.out.println(searchList.getSize());
    	}
    	
    	return searchList;
    }
	
	@RequestMapping(value="/pageBook",method=RequestMethod.GET)
    @ResponseBody
    public Page<Book> pageBook(Pageable pageable){
		return null;
		
	}

}
