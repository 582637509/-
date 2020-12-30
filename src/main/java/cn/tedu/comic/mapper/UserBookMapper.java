package cn.tedu.comic.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.comic.entity.UserBook;

public interface UserBookMapper {
	/**
	 * 插入一本用户上传的书
	 * @param userBook 用户上传的书的信息
	 * @return
	 */
	Integer insert(UserBook userBook);
	
	/**
	 * 查询一本书
	 * @param bookname 书名
	 * @return 用户书
	 */
	UserBook getUserBookByBookName(String bookname);
	
	/**
	 * 查询所有的书
	 * @param l1 分页，跳过多少本
	 * @param l2 分页，一页显示多少本
	 * @return 书的集合
	 */
	List<UserBook> getAllUserBook(@Param("l1")Integer l1,@Param("l2")Integer l2);
	
	/**
	 * 根据书名查书的路径
	 * @param bookname 书名
	 * @return 书的相对路径
	 */
	String getUrlByBookname(String bookname);
	
	/**
	 * 查一共有多少本用户上传的书
	 */
	Integer getBooksCount();
}
