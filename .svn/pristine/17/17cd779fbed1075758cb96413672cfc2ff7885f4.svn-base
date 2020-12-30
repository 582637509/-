package cn.tedu.comic.service;

import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.tedu.comic.entity.UserBook;

public interface IUserBookService {
	/**
	 * 创建一本用户上传的书
	 * @param userBook 用户书
	 */
	void createUserBook(CommonsMultipartFile file,UserBook userBook);
	
	/**
	 * 查询所有书书，分页
	 * @return 书的集合
	 */
	List<UserBook> getUserBookByPage(Integer page);
	
	/**
	 * 根据书名找到所有的图片
	 * @param bookname 书名
	 * @return 集合
	 */
	List<String> getImageByBookname(String bookname);
	
	/**
	 * 查有多少页
	 */
	Integer getBooksPages();
}
