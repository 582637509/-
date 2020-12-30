package test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.comic.entity.Record;
import cn.tedu.comic.entity.User;
import cn.tedu.comic.mapper.PersonalMapper;
import cn.tedu.comic.service.IPersonalService;

public class TestPersonal {
	private AbstractApplicationContext ac;
	private PersonalMapper pm;
	private IPersonalService ps;

	@Before
	public void before() {
		ac = new ClassPathXmlApplicationContext("spring-dao.xml", "spring-service.xml");
		pm = ac.getBean("personalMapper", PersonalMapper.class);
		ps = ac.getBean("personalService", IPersonalService.class);
	}

	@After
	public void after() {
		ac.close();
	}

	@Test
	public void test() {
		System.out.println(pm.getCollectBooksByUid(25,0,6));
	}

}
