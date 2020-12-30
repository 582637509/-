package cn.tedu.comic.service;

import java.util.List;

import cn.tedu.comic.entity.Book;

public interface IBookService {
	/**
	 * 查询一本书
	 * @param bookname 书名
	 * @return 受影响行数
	 */
	Book selectBookByBookName(String bookname);
	
	/**
	 * 模糊查询
	 * @param likename 模糊名字
	 * @return 书的集合
	 */
	List<Book> selectBooksLikeName(String likename);
	
	/**
	 * 点赞数加1(红票)
	 * @param bookname 书名
	 */
	void setRedTicket(Integer id);
	
	/**
	 * 点赞数加1(黑票)
	 * @param bookname 书名
	 */
	void setBlackTicket(Integer id);
	
	/**
	 * 根据书的产地找书，分页
	 * @param place 产地如（日本）
	 * @param page 页数
	 * @return 书的集合
	 */
	List<Book> getBooksByPlaceInPage(String place,Integer page);
	
	/**
	 * 查询一个产地的书有多少本
	 * @param place
	 * @return
	 */
	Integer getPageByPlace(String place);
	
	/**
	 * 根据一个产地查询人气前5本的书
	 * @param place 产地（日本，中国，无）
	 * @return 5本书的集合
	 */
	List<Book> getFiveBookByPlace(String place);
}
