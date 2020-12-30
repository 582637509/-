package test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.comic.entity.UserBook;
import cn.tedu.comic.mapper.UserBookMapper;
import cn.tedu.comic.service.IUserBookService;

public class TestUserBook {
	AbstractApplicationContext ac;
	UserBookMapper userBookMapper;
	IUserBookService userBookService;
	@Before
	public void before(){
		ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		userBookMapper=ac.getBean("userBookMapper",UserBookMapper.class);
		userBookService=ac.getBean("userBookService",IUserBookService.class);
	}
	
	@After
	public void after(){
		ac.close();
	}
	
	@Test
	//测试持久层插入
	public void test1(){
		UserBook userBook=new UserBook();
		userBook.setBookname("小智传说");
		userBookMapper.insert(userBook);
	}
	
	@Test
	//测试持久层查询
	public void test2(){
		System.out.println(userBookMapper.getUserBookByBookName("嘻嘻"));
	}
	
	@Test
	//测试持久层分页查询
	public void test3(){
		System.out.println(userBookMapper.getAllUserBook(0, 3));
	}
	
	@Test
	//测试持久层分页查询
	public void test4(){
		System.out.println(userBookMapper.getUrlByBookname("这是一本短片漫画"));
	}
	
	@Test
	//测试业务层查图片
	public void test5(){
		System.out.println(userBookService.getImageByBookname("这是一本短片漫画"));
	}
	
	@Test
	//测试持久层书数
	public void test6(){
		System.out.println(userBookMapper.getBooksCount());
	}
	
}
