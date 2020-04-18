package com.sbs.starter.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.starter.dao.ArticleDao;
import com.sbs.starter.dto.Article;

@Service
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	ArticleDao articleDao;
	
	// 이제 게시물 관련해서는 모두 Dao에 위임
	@Override
	public List<Article> getList() {
		return articleDao.getList();
	}

	@Override
	public void add(Map<String, Object> param) {
		articleDao.add(param);
	}

}
