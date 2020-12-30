package cn.tedu.comic.mapper;

import cn.tedu.comic.entity.User;

public interface VIPMapper {
	
	/**
	 * 添加一个会员
	 * @param user 设置该用户会员期限
	 * @return 返回受影响
	 */
	Integer upgradeVipUser(User user);
	
	/**
	 * 查询会员用户信息
	 * @param id 用户id 
	 * @return	返回该条用户信息
	 */
	User selectVIPUser(Integer id);
	
	/**
	 * 清空该用户的会员有效期
	 * @param id
	 * @return
	 */
	Integer updateVIPUser(Integer id);
}
