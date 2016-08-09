package demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import demo.dao.GenericDao;
import demo.model.Article;
import demo.service.ArticleService;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
public class ArticleServiceImpl extends GenericServiceImpl<Article, Integer> implements ArticleService {

    @Override
    @Autowired
    public void setGenericDao(GenericDao<Article, Integer> genericDao) {
        super.genericDao = genericDao;
    }


}