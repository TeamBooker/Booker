package com.booker.server.controller;

import com.booker.server.model.Book;
import com.booker.server.services.AModelService;
import com.booker.server.services.BookService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Cheechyo on 2018. 1. 10..
 */
@Controller
public class HelloController {

    @Autowired
    AModelService aModelService;
    
    @Autowired
    BookService bookservice;

    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }
    
    @RequestMapping("/main")
    public String main(){
    	return "main";
    }
 
 
	
	
	
    
}
