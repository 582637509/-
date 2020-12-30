package cn.tedu.comic.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.tedu.comic.entity.ResponseResult;
import cn.tedu.comic.entity.User;
import cn.tedu.comic.entity.UserBook;
import cn.tedu.comic.service.IUserBookService;
import cn.tedu.comic.service.IUserService;

@Controller
@RequestMapping("/share")
public class ShareController extends BaseController{
	@Autowired
	private IUserBookService userBookService;
	@Autowired
	private IUserService userService;
	
	//显示分享页面
	@RequestMapping("/share.do")
	public String showShare(Integer page,ModelMap modelMap){
		List<UserBook> userBooks=userBookService.getUserBookByPage(page);
		modelMap.addAttribute("userBooks", userBooks);
		//key：用户id，value：用户名
		Map<String,String> map=new HashMap<String,String>();
		for(UserBook userBook:userBooks){
			userBook.getUid();
			//放入用户id，用户姓名
			map.put("u"+userBook.getUid(),userService.selectUserById(userBook.getUid()).getNickname());
			modelMap.addAttribute("u"+userBook.getUid(), userService.selectUserById(userBook.getUid()).getNickname());
		}
		modelMap.addAttribute("map", map);
		//获取页数
		Integer pages=userBookService.getBooksPages();
		modelMap.addAttribute("pages", pages);
		return "share";
	}
	
	//显示上传页面
	@RequestMapping("/showUpload.do")
	public String showUpload(){
		return "goUpload";
	}
	
	//上传文件
	@RequestMapping("/upload.do")
	@ResponseBody
	public ResponseResult<Void> doUpload(@RequestParam CommonsMultipartFile file,UserBook userBook
			,HttpSession session){
		User user=(User) session.getAttribute("user");
		userBook.setUid(user.getId());
		userBookService.createUserBook(file, userBook);
		return new ResponseResult<Void>();
	}
	
	//读漫画
	@RequestMapping("/read.do")
	public String read(String bookname,ModelMap modelMap){
		List<String> images=userBookService.getImageByBookname(bookname);
		modelMap.addAttribute("images", images);
		return "user_book_read";
	}
}
