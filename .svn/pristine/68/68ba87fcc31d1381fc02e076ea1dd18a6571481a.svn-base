package cn.tedu.comic.service;

import java.math.BigDecimal;

import javax.servlet.http.HttpSession;

import cn.tedu.comic.entity.User;
import cn.tedu.comic.service.ex.InsertDataException;

public interface IVIPService {
	
	/**
	 * 添加一个会员用户
	 * @param user
	 * @throws InsertDataException 添加会员数据异常
	 */
	void insertVIPUser(User user) throws InsertDataException;
	
	/**
	 * 获取用户充值信息
	 * @param uid 用户ID
	 * @param total_amount 充值金额
	 */
	void addVIPData(Integer id, BigDecimal total_amount,HttpSession session);
		
}
