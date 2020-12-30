package cn.tedu.comic.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.comic.entity.Record;
import cn.tedu.comic.entity.ResponseResult;
import cn.tedu.comic.entity.User;
import cn.tedu.comic.service.IBookService;
import cn.tedu.comic.service.IIndexImageService;
import cn.tedu.comic.service.ex.FirstException;
import cn.tedu.comic.service.ex.LastException;
import cn.tedu.comic.utils.BookUtils;

@Controller
@RequestMapping("/details/read")
public class ReadController extends BaseController{

	@Autowired
	private IIndexImageService iindexImageService;
	
	//阅读漫画，把这个章节的所有图片传到主页
	/**
	 * 点击图片或者章节进入观看漫画的界面
	 * @param bookname 漫画名
	 * @param chapter  章节
	 * @param modelMap 资源文件 
	 * @return 视图
	 */
	@RequestMapping("/read.do")
	public String read(String bookname,String chapter,ModelMap modelMap,HttpSession session){
		List<String> images=BookUtils.getAllImageUrlByBooknameAndChapter(bookname, chapter);
		modelMap.addAttribute("images",images);
		// 插入浏览记录
		User user = (User) session.getAttribute("user");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Record record = new Record(user.getId(), bookname, sdf.format(new Date()));
		// 处理添加业务
		iindexImageService.insertRecord(record);
		return "read";
	}

	//翻页，上一页
	@RequestMapping("/pre.do")
	@ResponseBody
	public ResponseResult<String> pre(String bookname,String chapter){
		//获得该书的所有章节
		List<String> chapters=BookUtils.getAllChapterByBookname(bookname);

		for(int i=0;i<chapters.size();i++){
			if(chapters.get(i).equals(chapter)){
				if(i!=0){
					chapter=chapters.get(i-1);
					break;
				}else{
					throw new FirstException("已经是第一章了！");
				}
			}
		}
		try {
			bookname=URLEncoder.encode(bookname, "utf-8");
			chapter=URLEncoder.encode(chapter, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		//"redirect:read.do?bookname="+bookname+"&chapter="+chapter
		ResponseResult<String> rr=new ResponseResult<String>();
		rr.setData("read.do?bookname="+bookname+"&chapter="+chapter);
		return rr;
	}
	
	//翻页，下一页
	@RequestMapping("/next.do")
	@ResponseBody
	public ResponseResult<String> next(String bookname,String chapter){
		//获得该书的所有章节
		List<String> chapters=BookUtils.getAllChapterByBookname(bookname);

		for(int i=0;i<chapters.size();i++){
			if(chapters.get(i).equals(chapter)){
				System.out.println(i);
				if(i!=chapters.size()-1){
					chapter=chapters.get(i+1);
					break;
				}else{
					throw new LastException("已经是最后一章了！");
				}
			}
		}
		try {
			bookname=URLEncoder.encode(bookname, "utf-8");
			chapter=URLEncoder.encode(chapter, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		ResponseResult<String> rr=new ResponseResult<String>();
		rr.setData("read.do?bookname="+bookname+"&chapter="+chapter);
		return rr;
	}
}
