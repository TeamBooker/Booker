package com.booker.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Cheechyo on 2018. 1. 22..
 */
@RequestMapping("/myProfile")
@Controller
public class TB_MyProfileController {
    @RequestMapping("")
    public void myProfile(){}
}
