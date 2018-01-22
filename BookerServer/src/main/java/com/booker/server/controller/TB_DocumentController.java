package com.booker.server.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.booker.server.model.Book;
import com.booker.server.model.Comment;
import com.booker.server.services.CommentService;
import com.booker.server.services.DocumentService;


@Controller
public class TB_DocumentController {
	
	@Autowired
    DocumentService documentservice;
	@Autowired
	CommentService commentService;
	
	@RequestMapping(value="/bookDetail", method=RequestMethod.GET)
	public String bookDetail(Model model, int bookId, Pageable pageable) {
		Book bookList = documentservice.findOneByBookId(bookId);
		Page<Comment> commentList=commentService.findByCommentBookId(pageable, bookId);
		
		model.addAttribute("book",bookList);
		model.addAttribute("comment",commentList);
		model.addAttribute("bookId",bookId);

		return "bookDetail";
		
	}
	
	@RequestMapping(value="/commentAdd", method=RequestMethod.POST)
	public String commentAdd(Model model,int bookId,int rate ,String bookComment,Pageable pageable, HttpSession session) {
		String userId;
		userId=session.getAttribute("UserId").toString();
		commentService.insertComment(bookId, rate, bookComment, userId);
		Page<Comment> commentList = commentService.findByCommentBookId(pageable, bookId);
		model.addAttribute("bookId",bookId);
		model.addAttribute("comment", commentList);
		return "comment";
		
	}
	
	@RequestMapping(value="/commentDel", method=RequestMethod.POST)
	public String commentDel(Model model,int commentNo,int bookId,Pageable pageable) {
		
		commentService.deleteComment(commentNo);
		Page<Comment> commentList = commentService.findByCommentBookId(pageable, bookId);
		model.addAttribute("bookId",bookId);
		model.addAttribute("comment", commentList);
		return "comment";
	}

}
