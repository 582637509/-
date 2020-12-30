package cn.tedu.comic.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.comic.entity.Book;
import cn.tedu.comic.entity.IndexImage;
import cn.tedu.comic.entity.Message;
import cn.tedu.comic.entity.ResponseResult;
import cn.tedu.comic.entity.User;
import cn.tedu.comic.entity.Words;
import cn.tedu.comic.service.IBookService;
import cn.tedu.comic.service.IDetailMapper;
import cn.tedu.comic.service.IIndexImageService;
import cn.tedu.comic.service.IPersonalService;
import cn.tedu.comic.utils.BookUtils;

@Controller
@RequestMapping("/details")
public class DetailsController {
	@Autowired
	private IBookService bookService;
	@Autowired
	private IIndexImageService indexImageService;
	@Autowired
	private IDetailMapper iDetailMapper;
	@Autowired
	private IPersonalService iPersonalService;

	/**
	 * 首页点击图片跳转进入该漫画的详情页面
	 * 
	 * @param bookname
	 *            漫画名字
	 * @param modelMap
	 *            资源文件
	 * @return 视图
	 */
	@RequestMapping("/details.do")
	public String details(String bookname, ModelMap modelMap, HttpSession session) {
		Book book = bookService.selectBookByBookName(bookname);
		modelMap.addAttribute("book", book);
		List<String> chapters = BookUtils.getAllChapterByBookname(bookname);
		modelMap.addAttribute("chapters", chapters);
		Map<IndexImage, Book> imageAndBook = indexImageService.selectAllIndexImageAndBook();
		imageAndBook.forEach((k, v) -> {
			modelMap.addAttribute(k.getLocation(), v);
		});
		Integer uid = PersonalController.getUid(session);
		// 查找出id
		Integer id = iDetailMapper.selectById(uid, book.getId());

		if (id != null) {
			modelMap.addAttribute("collect", "1");
		} else {
			modelMap.addAttribute("collect", "0");
		}
	
		User user = iPersonalService.getUserById(uid);

		modelMap.addAttribute("user", user);

		List<Message> message = iDetailMapper.selectMessage(book.getId());
		modelMap.addAttribute("message", message);
		return "details";
	}

	/**
	 * 为漫画投票, 点赞为红票, 差评为黑票
	 * 
	 * @param id
	 *            书的id
	 * @param ticket
	 *            票数
	 */
	@RequestMapping("/UpdateTicket.do")
	@ResponseBody
	public void UpdateTicket(Integer id, String ticket) {
		if ("红票".equals(ticket)) {
			bookService.setRedTicket(id);
		} else if ("黑票".equals(ticket)) {
			bookService.setBlackTicket(id);
		}
	}

	@RequestMapping("/collect.do")
	@ResponseBody
	public ResponseResult<Integer> collect(Integer bookid, HttpSession session) {
		// 从session中获取当前用户
		Integer uid = PersonalController.getUid(session);
		Integer id = iDetailMapper.selectById(uid, bookid);
		ResponseResult<Integer> sfd = new ResponseResult<Integer>();
		if (id == null) {
			// 插入数据库
			iDetailMapper.collect(uid, bookid);
			sfd.setData(1);
			return sfd;
		} else{
			sfd.setData(0);
			iDetailMapper.deleteById(id);
			return sfd;
		}
	}


	@RequestMapping("/leaveMessage.do")
	@ResponseBody
	public void leaveMessage(HttpSession session, @RequestParam("book_id") Integer bookId, String message,@RequestParam("nameVersion") String system,String browser) {
		Integer uId = PersonalController.getUid(session);
		Message mess = new Message();
		mess.setUid(uId);
		mess.setBookid(bookId);
		mess.setMess(message);
		mess.setSystem(system);
		mess.setAddress("珠海");
		mess.setBrowser(browser);
		iDetailMapper.leaveMessage(mess);
	}
	 
	@RequestMapping("/insertWords.do")
	@ResponseBody
	public void insertWords(HttpSession session,@RequestParam("UB_id")Integer UBid,Integer bookid,String words){
		Integer uid = PersonalController.getUid(session);
		Words word = new Words();
		word.setUid(uid);
		word.setUBid(UBid);
		word.setBookid(bookid);
		word.setWords(words);
		iDetailMapper.insertWords(word);
	}
}
