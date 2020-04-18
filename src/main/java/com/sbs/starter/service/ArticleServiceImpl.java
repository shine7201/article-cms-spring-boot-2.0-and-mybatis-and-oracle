package com.sbs.starter.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sbs.starter.dto.Article;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Override
	public List<Article> getList() {
		//이건 가짜 데이터. 중간 확인용
		Article article1 = new Article(1, "2019-08-20 12:12:12", "제목1", "내용1");
		Article article2 = new Article(1, "2019-08-20 12:12:13", "제목2", "내용2");
		Article article3 = new Article(1, "2019-08-20 12:12:14", "제목3", "내용3");
		
		List<Article> list = new ArrayList<Article>();
		
		list.add(article1);
		list.add(article2);
		list.add(article3);
		
		return list;
	}

}