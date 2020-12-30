package test;

import java.util.Calendar;
import java.util.Date;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.comic.entity.User;
import cn.tedu.comic.mapper.VIPMapper;

public class TestVip {
	
	AbstractApplicationContext ac;
	VIPMapper vip;
	@Before
	public void defore(){
		ac = new ClassPathXmlApplicationContext("spring-dao.xml");
		vip = ac.getBean("VIPMapper",VIPMapper.class);
	}
	
	@After
	public void After(){
		ac.close();
	}
	
	@Test
	// 修改会员
	public void test3(){
		vip.updateVIPUser(25);
	}
	
	@Test
	// 添加会员
	public void test1(){
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.MONTH, 1);
		User v = new User();
		v.setId(25);
		v.setMember(calendar.getTime());
		vip.upgradeVipUser(v);
	}

	@Test
	// 查询会员
	public void test2(){
		System.out.println(vip.selectVIPUser(25));
	}
	
	
}
