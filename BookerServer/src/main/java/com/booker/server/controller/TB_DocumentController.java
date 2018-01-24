package com.booker.server.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booker.server.model.Book;
import com.booker.server.model.Comment;
import com.booker.server.services.CommentService;
import com.booker.server.services.DocumentService;
import com.booker.server.util.ListVector;


@Controller
public class TB_DocumentController {
	
	@Autowired
    DocumentService documentservice;
	@Autowired
	CommentService commentService;
	
	@RequestMapping("/bookDetail")
	public void bookDetail(){System.out.println("상세화면");}
	
	@RequestMapping(value="/bookDetail_Content", method=RequestMethod.GET)
	@ResponseBody
	public ListVector bookDetail_Content(Model model, Integer bookId, Pageable pageable) {
		Book book=documentservice.findOneByBookId(bookId);
		Page<Comment> commentList=commentService.findByCommentBookId(pageable, bookId);
		ListVector list = new ListVector(2);
		list.add(book);
		list.add(commentList);
		System.out.println(book+" "+commentList);
		System.out.println(list.get(0)+"상세보기 성공"+list.get(1));
		return  list;
	}
	
	@RequestMapping(value="/commentAdd", method=RequestMethod.POST)
	@ResponseBody
	public ListVector commentAdd(Integer bookId,Integer rate ,String bookComment,Pageable pageable, HttpSession session) {
		String userId;
		userId=session.getAttribute("UserId").toString();
		commentService.insertComment(bookId, rate, bookComment, userId);
		Page<Comment> commentList = commentService.findByCommentBookId(pageable, bookId);
		ListVector list = new ListVector(2);
		list.add(userId);
		list.add(commentList);
		return list;
		
	}
	
	@RequestMapping(value="/commentDel", method=RequestMethod.POST)
	@ResponseBody
	public ListVector commentDel(Integer commentNo,Integer bookId,Pageable pageable) {
		
		commentService.deleteComment(commentNo);
		Page<Comment> commentList = commentService.findByCommentBookId(pageable, bookId);
		ListVector list = new ListVector(2);
		list.add(commentNo);
		list.add(commentList);
		return list;
	}

}
