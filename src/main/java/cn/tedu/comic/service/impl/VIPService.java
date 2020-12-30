package cn.tedu.comic.service.impl;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.comic.entity.User;
import cn.tedu.comic.mapper.VIPMapper;
import cn.tedu.comic.service.IVIPService;
import cn.tedu.comic.service.ex.InsertDataException;

@Service("vIPService")
public class VIPService implements IVIPService{

	@Autowired
	private VIPMapper vm;
	
	/**
	 * 获取用户充值信息
	 * @param uid	用户ID
	 * @param total_amount  充值金额
	 */
	public void addVIPData(Integer uid, BigDecimal total_amount,HttpSession session){
		Double money = Double.valueOf(total_amount.toString());
		Calendar calendar = Calendar.getInstance();
		User user = (User) session.getAttribute("user");
		Date date = user.getMember();
		if(date != null){
			calendar.setTime(date);
		}
		calendar.add(Calendar.MONTH, (int)(money / 30));
		user.setMember(calendar.getTime());
		// 执行添加
		insertVIPUser(user);
	};
	
	/**
	 * 添加会员
	 */
	@Override
	public void insertVIPUser(User user) {
		Integer rows = vm.upgradeVipUser(user);
		if(rows != 1){
			throw new InsertDataException("添加会员出现错误!");
		}
	}


}
