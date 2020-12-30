package cn.tedu.comic.service.impl;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.comic.entity.Book;
import cn.tedu.comic.entity.IndexImage;
import cn.tedu.comic.entity.Record;
import cn.tedu.comic.mapper.BookMapper;
import cn.tedu.comic.mapper.IndexImageMapper;
import cn.tedu.comic.service.IIndexImageService;

@Service
public class IndexImageService implements IIndexImageService{
	@Autowired
	private IndexImageMapper indexImageMapper;
	
	@Autowired
	private BookMapper bookMapper;
	
	@Override
	//查询所有的主页图片与书的对应关系
	public Map<IndexImage, Book> selectAllIndexImageAndBook() {
		Map<IndexImage, Book> map=new HashMap<IndexImage, Book>();
		List<IndexImage> list=indexImageMapper.selectAllIndexImage();
		for(IndexImage indexImage:list){
			String bookname=indexImage.getBookname();
			Book book=bookMapper.selectBookByBookname(bookname);
			map.put(indexImage, book);
		}
		return map;
	}

	/**
	 * 添加一条用户浏览记录,如果已经有了,则把时间修改为最新时间,
	 * 如果没有则添加.
	 */
	@Override
	public void insertRecord(Record record) {
		Integer rows = indexImageMapper.selectRecord(record.getUid(), record.getBookname());
		System.out.println(rows);
		if(rows != 1){
			indexImageMapper.insertRecord(record);
		}else{
			indexImageMapper.updateRecord(record);
		}
	}

	/**
	 * 获取用户的所有浏览记录
	 */
	@Override
	public List<Record> selectRecords(Integer uid) {
		List<Record> records = indexImageMapper.selectRecords(uid);
		for (Record record : records) {
			String date = record.getDate();
			date = date.substring(0, date.lastIndexOf(":"));
			record.setDate(date);
		}
		return records;
	}

	@Override
	public Integer deleteRecord(Integer id) {
		return indexImageMapper.deleteRecord(id);
	}
	
}
