package cn.tedu.comic.service;

import java.util.List;
import java.util.Map;

import cn.tedu.comic.entity.Book;
import cn.tedu.comic.entity.IndexImage;
import cn.tedu.comic.entity.Record;

public interface IIndexImageService {
	/**
	 * 查询所有的主页图片与书的对应关系
	 * @return map key=主页图片信息 value=书本信息
	 */
	Map<IndexImage,Book> selectAllIndexImageAndBook();
	
	/**
	 * 添加一条浏览记录
	 * @param record 浏览记录的实体类
	 */
	void insertRecord(Record record);
	
	/**
	 * 查询该用户的所有浏览记录
	 * @param uid 用户id
	 * @return	返回浏览记录的集合
	 */
	List<Record> selectRecords(Integer uid);
	
	/**
	 * 删除浏览记录
	 * @param id 该条记录的id
	 * @return 受影响的行数
	 */
	Integer deleteRecord(Integer id);
}
