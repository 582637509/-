package cn.tedu.comic.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.comic.entity.Book;

public interface BookMapper {
	/**
	 * 插入一本书
	 * @param book 书的数据
	 * @return 受影响行数
	 */
	Integer insertBook(Book book);
	
	/**
	 * 查询一本书
	 * @param bookname 书名
	 * @return 受影响行数
	 */
	Book selectBookByBookname(String bookname);
	
	/**
	 * 模糊查询
	 * @param likename 模糊名字
	 * @return 书的集合
	 */
	List<Book> selectBooksLikeName(String likename);
	
	/**
	 * 点赞数(红票)
	 * @param id 点赞书的id
	 */
	void setRedTicket(Integer id);
	
	/**
	 * 点赞数(黑票)
	 * @param id 点赞书的id
	 */
	void setBlackTicket(Integer id);
	
	/**
	 * 根据书的类型找书
	 * @param type 书的类型
	 * @param l1 忽略本数
	 * @param l2 显示本数
	 * @return
	 */
	List<Book> getBooksByPlace(
			@Param("place")String place,@Param("l1")Integer l1,
			@Param("l2")Integer l2
			);
	
	/**
	 * 查一个产地的书有多少本（国产漫画）
	 */
	Integer getBooksByPlaceCount(String place);
	
	/**
	 * 根据一个产地查询人气前5本的书
	 * @param place 产地（日本，中国，无）
	 * @return 5本书的集合
	 */
	List<Book> getFiveBookByPlace(String place);
	
	/**
	 * 获得所有vip的图书
	 * @return 所有VIP书籍集合
	 */
	List<Book> getVIPBooks();
	
}