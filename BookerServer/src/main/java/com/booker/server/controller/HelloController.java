package com.booker.server.controller;

import com.booker.server.services.AModelService;
import com.booker.server.services.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
 
    @RequestMapping("/mainSearch")
    public void mainSearch(){}
	
	
	
    
}
