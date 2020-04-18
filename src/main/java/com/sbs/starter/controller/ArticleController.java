package com.sbs.starter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbs.starter.dto.Article;
import com.sbs.starter.service.ArticleService;

import groovy.util.logging.Slf4j;
import jline.internal.Log;

@Controller
@Slf4j
public class ArticleController {
	@Autowired
	ArticleService articleService;
	
	@RequestMapping("/article/list")
	public String showList() {
		List<Article> list = articleService.getList();
		
		Log.info("list : "+list);
		
		return "article/list";
	}
}
