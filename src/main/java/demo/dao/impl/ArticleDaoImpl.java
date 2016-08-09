package demo.dao.impl;

import org.springframework.stereotype.Repository;

import demo.dao.ArticleDao;
import demo.model.Article;

@Repository
public class ArticleDaoImpl extends GenericDaoImpl<Article, Integer> implements ArticleDao {
}