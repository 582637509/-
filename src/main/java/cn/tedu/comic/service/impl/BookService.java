package cn.tedu.comic.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.comic.entity.Book;
import cn.tedu.comic.mapper.BookMapper;
import cn.tedu.comic.service.IBookService;
import cn.tedu.comic.service.ex.BookNotFountException;

@Service
public class BookService implements IBookService{
	@Autowired
	private BookMapper bookMapper;
	
	@Override
	public Book selectBookByBookName(String bookname) {                           
		Book book=bookMapper.selectBookByBookname(bookname);
		if(book==null){
			throw new BookNotFountException("书本找不到！");
		}
		return book;
	}

	@Override
	public void setRedTicket(Integer id) {
		//红票加1
		bookMapper.setRedTicket(id);
	}

	@Override
	public void setBlackTicket(Integer id) {
		//黑票加1
		bookMapper.setBlackTicket(id);
	}
	
	@Override
	public List<Book> selectBooksLikeName(String likename) {
		return bookMapper.selectBooksLikeName(likename);
	}

	@Override
	public List<Book> getBooksByPlaceInPage(String place, Integer page) {
		
		if(place.equals("VIP")){//如果是VIP
			return bookMapper.getVIPBooks();
		}else if(place.equals("今日")){//如果是今日更新
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date date=new Date();//今天时间
			List<Book> list=new ArrayList<Book>();
			//拿到所有的书
			List<Book> books=bookMapper.selectBooksLikeName("");
			for(Book book:books){
				String d1=sdf.format(book.getModifiedTime());
				String d2=sdf.format(date);
				if(d1.equals(d2)){
					list.add(book);
				}
			}
			return list;
		}else{//如果是普通区
			if(page==null||page<1){
				page=1;
			}
			Integer l1=(page-1)*6;//忽略6本
			Integer l2=6;//一页显示6本
			return bookMapper.getBooksByPlace(place, l1, l2);
		}
	}

	@Override
	public Integer getPageByPlace(String place) {
		Integer count=bookMapper.getBooksByPlaceCount(place);
		Integer page=(int) Math.ceil(count*1.0/6);
		//获取页数
		return page;
	}

	//获得人气5本书
	@Override
	public List<Book> getFiveBookByPlace(String place) {
		return bookMapper.getFiveBookByPlace(place);
	}

	
	
}
