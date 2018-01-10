package com.booker.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Cheechyo on 2018. 1. 10..
 */
@Controller
public class HelloController {
    @RequestMapping("/")
    public String index(){
        return "public/index.html";
    }

    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "Hello World!";
    }
}
