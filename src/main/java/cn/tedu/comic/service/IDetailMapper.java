package cn.tedu.comic.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.comic.entity.Message;
import cn.tedu.comic.entity.Words;

public interface IDetailMapper {
	
	/**
	 * 收藏
	 * @param uid 用户id
	 * @param bookid 书籍id
	 */
	void collect(Integer uid,Integer bookid);
	
	/**
	 * 依据书id查询记录
	 * @param bookid 书的is
	 * @return 返回查询结果
	 */
	Integer selectUidByBookId(Integer bookid);
	
	/**
	 * 根据书籍id,用户id删除记录
	 * @param uid 用户id
	 * @param Bookid 书籍id
	 * @return 删除条数
	 */
	Integer deleteById(Integer id);
    
	/**
	 * 留言存入数据库
	 * @param uId 用户id
	 * @param bookId 书籍id
	 * @param message 留言字段
	 * @return
	 */
	void leaveMessage(Message message);
	
	/**
	 * 读取留言
	 * @param bookId 书籍id
	 * @return 返回所有留言
	 */
	List<Message> selectMessage(Integer bookId);
	
	/**
	 * 根据用户id,和书籍id,查找出id
	 * @param uid 用户id
	 * @param bookid 书籍id
	 * @return 返回id
	 */
	Integer selectById(Integer uid,Integer bookid);
	
	/**
	 * 插入留言
	 * @param uId 用户id
	 * @param ubId 书籍作者id
	 * @param message 留言内容
	 * @return 返回插入的数
	 */
	Integer insertWords(Words words);
	
	/**
	 * 删除一条留言
	 * @param id 该条留言的id
	 */
	void deleteWords(Integer id);
}
