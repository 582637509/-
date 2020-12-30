package cn.tedu.comic.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.comic.entity.Message;
import cn.tedu.comic.entity.Words;

public interface DetailsMapper {

	/**
	 * 收藏
	 * @param uid 用户id
	 * @param bookid 书的id
	 * @return 
	 */
	Integer collect(@Param("uid")Integer uid,@Param("bookid")Integer bookid);
	
	/**
	 * 根据书籍的id查询用户记录
	 * @param bookid 书籍的id
	 * @return 返回结果
	 */
	Integer selectUidByBookId(Integer bookid);
	
	/**
	 * 删除收藏记录
	 */
	Integer deleteById(Integer id);
	
	/**
	 * 增加评论
	 */
	Integer leaveMessage(Message message);               
	
	/**
	 * 根据书籍id查询评论
	 * @param bookId
	 * @return
	 */
	List<Message> selectMessage(@Param("book_id")Integer bookId);
	
	/**
	 * 根据用户id,和书籍id,查找出id
	 * @param uid 用户id
	 * @param bookid 书籍id
	 * @return 返回id
	 */
	Integer selectById(@Param("uid")Integer uid,@Param("bookid")Integer bookid);
	
	/**
	 * 插入留言
	 * @param uId 用户id
	 * @param ubId 书籍作者id
	 * @param message 留言内容
	 * @return
	 */
	Integer insertWords(Words words);

	/**
	 * 依据用户ID查找一页有多少留言
	 * @param uBid 获得留言的用户ID
	 * @Param off 第几页
	 * @Param len 每页最多len条
	 * @return 留言列表
	 */
	List<Words> selectByUBid(@Param("uBid")Integer uBid, @Param("off")Integer off, @Param("len") Integer len);
	
	/**
	 * 依据用户ID查找所有留言
	 * @param uBid 获得留言的用户ID
	 * @return 留言列表
	 */
	List<Words> selectByUBids(Integer uBid);
	
	/**
	 * 删除一条留言
	 * @param id 该留言的id
	 * @return 受影响行数
	 */
	Integer deleteWords(Integer id);
}
