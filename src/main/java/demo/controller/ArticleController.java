package demo.controller;

import demo.model.Article;
import demo.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("article")
public class ArticleController extends BaseController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping("create")
    private String create(Article article) {
        articleService.create(article);
        return "redirect:list";
    }

    @RequestMapping("list")
    private String list() {
        session.setAttribute("list", articleService.list());
        return "redirect:/admin.jsp";
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        session.setAttribute("article", articleService.search(id));
        return "redirect:/article/edit.jsp";
    }

    @RequestMapping("modify")
    private String modify(Article article) {
        articleService.modify(article);
        return "redirect:list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        articleService.remove(id);
        return "redirect:/article/list";
    }

    @RequestMapping("queryAll")
    public String queryAll(){
        session.setAttribute("list", articleService.list());
        return "redirect:/user.jsp";
    }

    @RequestMapping("queryForDetail/{id}")
    public String queryForDetail(@PathVariable("id") Integer id){
        session.setAttribute("article", articleService.search(id));
        return "redirect:/article/detail.jsp";
    }

    @RequestMapping("searchByKey")
    public String searchByKey(String title, String content){
        Map<String, Object> map = new HashMap<>();
        map.put("title", title);
        map.put("content", content);
        session.setAttribute("list", articleService.queryByMap("search_by_keys", map));
        return "redirect:/user.jsp";
    }

}