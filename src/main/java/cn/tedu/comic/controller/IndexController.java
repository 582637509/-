package cn.tedu.comic.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.comic.entity.Book;
import cn.tedu.comic.entity.IndexImage;
import cn.tedu.comic.entity.ResponseResult;
import cn.tedu.comic.entity.User;
import cn.tedu.comic.service.IBookService;
import cn.tedu.comic.service.IUserService;
import cn.tedu.comic.service.impl.IndexImageService;

@Controller
public class IndexController extends BaseController {
    @Autowired
    private IUserService userService;
    @Autowired
    private IndexImageService indexImageService;
    @Autowired
    private IBookService bookService;

    @RequestMapping("/index.do")
    public String index(ModelMap modelMap) {
        Map<IndexImage, Book> imageAndBook = indexImageService.selectAllIndexImageAndBook();
        imageAndBook.forEach((image, book) -> {
            modelMap.addAttribute(image.getLocation(), book);
        });
        List<Book> books1 = bookService.getFiveBookByPlace("中国");
        List<Book> books2 = bookService.getFiveBookByPlace("日本");
        List<Book> books3 = bookService.getFiveBookByPlace("");
        modelMap.addAttribute("line2books1", books1);
        modelMap.addAttribute("line2books2", books2);
        modelMap.addAttribute("line2books3", books3);
        return "index";
    }

    //搜索
    @RequestMapping("/selectBook.do")
    public String index(String likename, ModelMap modelMap) {
        if (likename != "") {
            List<Book> books = bookService.selectBooksLikeName(likename);
            if (books.size() > 0) {
                modelMap.addAttribute("books", books);
            } else {
                modelMap.addAttribute("books", "");
                modelMap.addAttribute("message", "查无此书！");
            }
        }
        return "selectBook";
    }

    //验证用户名是否存在
    @RequestMapping("/check_username.do")
    @ResponseBody
    public ResponseResult<Void> checkUsername(@RequestParam("username") String username) {
        userService.checkUsername(username);
        return new ResponseResult<Void>();
    }

    //注册
    @RequestMapping("/handle_reg.do")
    @ResponseBody
    public ResponseResult<Void> handleReg(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("email") String email,
            @RequestParam("phone") String phone) {
        //测试代码：http://localhost:8086/daicomic/handle_reg.do?username=999&password=999&email=123@qq.com&phone=110
        User user = new User(username, password, email, phone);
        userService.reg(user);
        return new ResponseResult<Void>();
    }

    //登录
    @RequestMapping("/handle_login.do")
    @ResponseBody
    public ResponseResult<Void> handleLogin(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession session, HttpServletResponse response) {
        User user = new User();
        user.setUsername(username);

        user.setPassword(password);
        User u = userService.login(user);
        session.setAttribute("user", u);
        session.setAttribute("id", u.getId());

        Cookie cookie = new Cookie("sso", username + "#" + password);
        cookie.setPath("/");
        response.addCookie(cookie);
        return new ResponseResult<Void>();
    }

    @RequestMapping("/area.do")
    public String showArea(@RequestParam("place") String place, Integer page, ModelMap map) throws UnsupportedEncodingException {
        List<Book> books = bookService.getBooksByPlaceInPage(place, page);
        map.addAttribute("books", books);
        Integer pages = bookService.getPageByPlace(place);
        map.addAttribute("pages", pages);
        return "area";
    }


}
