package cn.tedu.comic.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.comic.entity.IndexImage;
import cn.tedu.comic.entity.Record;

public interface IndexImageMapper {
	/**
	 * 插入一条主页图片信息
	 * @param indexImage 主页图片信息
	 * @return 受影响行数
	 */
	Integer insertImageinfo(IndexImage indexImage);
	
	/**
	 * 查询所有的主页图片信息
	 * @return list集合，里面装着所有的主页图片
	 */
	List<IndexImage> selectAllIndexImage();
	
	/**	  
	 * 添加一条用户浏览记录,包含着用户的id,漫画的名字,观看的时间
	 * @param record  代表浏览记录的实体类
	 * @return 受影响行数	
	 */
	Integer insertRecord(Record record);
	
	/**
	 * 通过用户id,书名查找该浏览记录是否有存储过
	 * @param uid
	 * @param bookname
	 * @return 满足条件的个数
	 */
	Integer selectRecord(@Param("uid")Integer uid, @Param("bookname") String bookname);
	
	/**
	 * 为了不重复出现同一书名的浏览记录,将重复出现的记录的时间,修改为最新时间
	 * @param record  可能书名会重复的,新的浏览记录
	 * @return	受影响行数
	 */
	Integer updateRecord(Record record);
	
	/**
	 * 查询该用户的所有浏览记录
	 * @param uid 用户id
	 * @return 返回所有记录的集合
	 */
	List<Record> selectRecords(Integer uid);
	
	/**
	 * 删除一条浏览记录
	 * @param bookname 被删除的记录的书名
	 * @return 返回受影响行数
	 */
	Integer deleteRecord(Integer id);
}
