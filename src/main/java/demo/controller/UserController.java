package demo.controller;

import demo.model.Article;
import demo.model.User;
import demo.service.ArticleService;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created at 221
 * 16-7-9 上午11:18.
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController {

    @Autowired
    public UserService userService;

    @Autowired
    public ArticleService articleService;

    @RequestMapping("register")
    public String register(User user) {
        userService.create(user);
        return "redirect:/index.jsp";
    }

    @RequestMapping("login")
    public String login(User user) {
        user = userService.login(user);
        if (user != null) {
            session.setAttribute("user", user);
            String role = user.getRole();
            if (role.equals("admin")) {
                return "redirect:/article/list";
            }
            if (role.equals("user")) {
                return "redirect:/article/queryAll";
            }

        }
        request.setAttribute("message", "invalid username or password.");
        return "index";
    }

    @RequestMapping("logout")
    public String logout() {
        session.invalidate();
        return "redirect:/index.jsp";
    }

    @RequestMapping("findById/{id}")
    public String findById(@PathVariable("id") Integer id) {
        session.setAttribute("article", articleService.search(id));
        return "redirect:/article/detail.jsp";
    }
}
