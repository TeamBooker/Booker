package com.booker.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Cheechyo on 2018. 1. 10..
 */
@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }
    
    @RequestMapping("/main")
    public String main(){
    	return "main";
    }
    
    @RequestMapping("/signup")
    public String signUp() {
    	return "signup";
    }
    
    @RequestMapping("/search")
    public String search() {
    	return "search";
    }
    
}
