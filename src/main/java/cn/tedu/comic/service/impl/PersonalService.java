package cn.tedu.comic.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import cn.tedu.comic.entity.User;
import cn.tedu.comic.entity.Words;
import cn.tedu.comic.entity.collect;
import cn.tedu.comic.mapper.DetailsMapper;
import cn.tedu.comic.mapper.PersonalMapper;
import cn.tedu.comic.service.IPersonalService;
import cn.tedu.comic.service.ex.ServiceException;
import cn.tedu.comic.service.ex.UpdateUserAboutException;
import cn.tedu.comic.service.ex.UpdateUserPasswordException;
/**
 * 处理个人中心页面的操作---业务层-实现类
 * @author Administrator
 *
 */
@Service("personalService")
public class PersonalService implements IPersonalService{

	@Autowired
	private PersonalMapper personalMapper;
	
	@Autowired
	private DetailsMapper detailsMapper;
	
	@Override
	public List<Words> selectByUBid(Integer uBid, Integer page) {
		if(page == null){
			page = 1;
		}
		// 获得当前id的所有留言
		return detailsMapper.selectByUBid(uBid, (page - 1) * ROWS, ROWS);
	}
	

	@Override
	public List<Words> selectByUBids(Integer uBid) {
		return detailsMapper.selectByUBids(uBid);
	}
	
	@Override
	public void updatePassword(Integer id, String oldPassword, String newPassword) throws UpdateUserPasswordException,ServiceException {
		User user = getUserById(id);
		// 获取用户的盐值
		String salt = user.getSalt();
		// 对输入的旧密码进行加密
		String pwd = getEncryptPassword(oldPassword, salt);
		// 判断加密后的旧密码是否与数据库中存储的密码相同
		if(pwd.equals(user.getPassword())){
			// 若相同,使用已有盐值进行加密
			String password = getEncryptPassword(newPassword, salt);
			// 执行修改
			Integer rows = personalMapper.updatePassword(id, password);
			if(rows != 1){
				throw new ServiceException("数据修改发生未知异常,请联系系统管理员!");
			}
		}else{
			throw new UpdateUserPasswordException("原密码不正确!");
		}
	}

	/**
	 * 获取用户的收藏列表
	 */
	@Override
	public List<collect> getCollectList(Integer uid, Integer page) {
		return personalMapper.getCollectBooksByUid(uid, (page - 1) * COUNT, COUNT);
	}
	
	@Override
	public List<collect> getCollectList(Integer uid) {
		return personalMapper.getCollectBooksByUids(uid);
	}
	
	/**
	 * 删除一条收藏记录
	 */
	@Override
	public void deleteCollectById(Integer collectId) {
		personalMapper.deleteCollectById(collectId);
	}
	
	/**
	 * 用户修改个人资料的数据,将要存储到数据库中
	 */
	@Override
	public void updateUserAbout(User user) {
		System.out.println("准备执行用户资料修改操作: " + user);
		if("".equals(user.getNickname())){
			user.setNickname(null);
		}
		if("".equals(user.getQq())){
			user.setQq(null);
		}
		if("".equals(user.getEmail())){
			user.setEmail(null);
		}
		if("".equals(user.getPhone())){
			user.setPhone(null);
		}
		if("".equals(user.getSignature())){
			user.setSignature(null);
		}
		if("".equals(user.getAvadar())){
			user.setAvadar(null);
		}
		Integer rows = personalMapper.updateUserAbout(user);
		if(rows != 1){
			throw new UpdateUserAboutException("修改数据失败,联系系统管理员!");
		}
		System.out.println("用户资料修改操作执行完毕!");
	}
	
	/**
	 * 修改个人资料时,补全默认属性
	 */
	@Override
	public void tolerantData(User user, String bday) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try {
			// 通过id获取用户信息, 设置默认数据
			User user1 = getUserById(user.getId());
			// 设置生日
			user.setBirthday(sdf.parse(bday));
			// 设置默认属性
			Date now = new Date();
			user.setCreateUser(user1.getUsername());
			user.setCreateTime(now);
			user.setModifiedUser(user1.getUsername());
			user.setModifiedTime(now);
		} catch (ParseException e) {
			throw new ServiceException("字符串转换时间格式出错!");
		}
	}
	
	/**
	 * 根据id查找用户数据
	 */
	@Override
	public User getUserById(Integer id) {
		return personalMapper.selectUserById(id);
	}
	
	//对密码进行加密
	private String getEncryptPassword(String password,String salt){
		//对原密码加密
		String s1=DigestUtils.md5DigestAsHex(password.getBytes()).toUpperCase();
		//对现密码加密
		String s2=DigestUtils.md5DigestAsHex(salt.getBytes()).toUpperCase();
		//拼起来再加密5次
		String s3=s1+s2;
		for(int i=0;i<5;i++){
			s3=DigestUtils.md5DigestAsHex(s3.getBytes()).toUpperCase();
		}
		//返回加密结果
		return s3;
	}



}
