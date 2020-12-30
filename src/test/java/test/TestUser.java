package test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.comic.mapper.UserMapper;
import cn.tedu.comic.service.IUserService;

public class TestUser {
	AbstractApplicationContext ac;
	UserMapper userMapper;
	IUserService userService;
	@Before
	public void before(){
		ac=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
		userMapper=ac.getBean("userMapper",UserMapper.class);
		userService=ac.getBean("userService",IUserService.class);
	}
	
	@After
	public void after(){
		ac.close();
	}
	
	@Test
	public void test1(){
		System.out.println(userMapper.selectUserById(10));
	}
	
}
