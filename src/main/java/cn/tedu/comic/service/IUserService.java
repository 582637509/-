package cn.tedu.comic.service;

import cn.tedu.comic.entity.User;

public interface IUserService {
	
	/**
	 * 注册用户
	 * @param user 用户数据
	 * @return 用户数据
	 */
	User reg(User user);
	
	/**
	 * 插入用户
	 * @return 受影响的行数
	 */
	void insert(User user);
	
	/**
	 * 查询用户
	 * @param username 用户名
	 * @return 用户数据
	 */
	User selectUserByUserName(String username);
	
	/**
	 * 验证用户名存在
	 * @param username 用户名
	 */
	void checkUsername(String username);
	
	/**
	 * 登录
	 * @param user 用户信息(用户名和密码)
	 * @return 用户数据
	 */
	User login(User user);
	
	/**
	 * 根据id查用户
	 * @param id 用户id
	 * @return 用户数据
	 */
	User selectUserById(Integer id);
}
