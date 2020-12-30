package test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.comic.entity.Book;
import cn.tedu.comic.entity.IndexImage;
import cn.tedu.comic.entity.Record;
import cn.tedu.comic.mapper.BookMapper;
import cn.tedu.comic.mapper.IndexImageMapper;
import cn.tedu.comic.service.IIndexImageService;
import cn.tedu.comic.service.impl.IndexImageService;

public class TestIndexImage {
	AbstractApplicationContext ac;
	IndexImageMapper indexImageMapper;
	IIndexImageService indexImageSerice;
	@Before
	public void before(){
		ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		indexImageMapper=ac.getBean("indexImageMapper",IndexImageMapper.class);
		indexImageSerice=ac.getBean("indexImageService",IndexImageService.class);
	} 
	@After
	public void after(){
		ac.close();
	}
	
	@Test
	//测试持久层插入一条主页图片信息数据
	public void test1(){
		IndexImage indexImage=new IndexImage();
		indexImage.setLocation("line1_play2");
		indexImage.setBookname("斗罗大陆");
		Date date=new Date();
		indexImage.setCreatedTime(date);
		indexImage.setModifiedTime(date);
		indexImage.setCreatedUser("yzc");
		indexImage.setModifiedUser("yzc");
		indexImageMapper.insertImageinfo(indexImage);
	}
	
	@Test
	//测试业务层查询所有主页图片信息
	public void test2(){
		List<IndexImage> list=indexImageMapper.selectAllIndexImage();
		System.out.println(list);
	}
	
	@Test
	//查询所有主页图片的数据
	public void test3(){
		Map<IndexImage, Book> map=indexImageSerice.selectAllIndexImageAndBook();
		map.forEach((o1,o2)->{
			System.out.println(o1.getLocation()+o2.getBookname());
		});
	}
	
	// 测试修改重复的浏览记录
	@Test
	public void insertTest(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Record r = new Record(25,"住诸天纪",sdf.format(new Date()));
		System.out.println(indexImageMapper.insertRecord(r));
		
	}
	
}
