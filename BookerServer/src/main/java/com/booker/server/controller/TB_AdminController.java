package com.booker.server.controller;

import com.booker.server.model.Book;
import com.booker.server.model.MemberModel;
import com.booker.server.services.BookService;
import com.booker.server.services.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Cheechyo on 2018. 1. 15..
 */
@Controller
@RequestMapping("/admin")
public class TB_AdminController {
    @Autowired
    BookService bookService;

    @Autowired
    MemberService memberService;

    @GetMapping("")
    public void admin(){
    }

    @GetMapping("/catalog")
    @ResponseBody
    public Page<Book> catalog(Pageable pageable){
        return bookService.findAll(pageable);
    }

    @GetMapping("/members")
    @ResponseBody
    public Page<MemberModel> member(Pageable pageable){
        return memberService.findAll(pageable);
    }
}
