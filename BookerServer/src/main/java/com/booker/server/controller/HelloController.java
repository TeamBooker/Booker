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
    
    @Requestmapping("/main")
    public String main(){
    	return "main";
    }
}
