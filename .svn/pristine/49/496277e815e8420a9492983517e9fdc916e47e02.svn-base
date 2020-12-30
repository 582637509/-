package cn.tedu.comic.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import cn.tedu.comic.entity.User;
import cn.tedu.comic.entity.Words;
import cn.tedu.comic.entity.collect;
import cn.tedu.comic.service.ex.ServiceException;
import cn.tedu.comic.service.ex.UpdateUserPasswordException;
/**
 * 处理个人中心页面的操作---业务层-接口
 * @author Administrator
 *
 */
public interface IPersonalService {
	
	// 用于显示收藏页个数
	static final Integer COUNT = 6;
	
	// 用于显示留言板的行数
	static final Integer ROWS = 4;
	
	/**
	 * 
	 * 依据用户修改密码
	 * @param id 用户id
	 * @param oldPassowrd 旧密码
	 * @param newPassword 新密码
	 * @throws UpdateUserPasswordException 确认密码错误
	 * @throws ServiceException	 修改数据发生未知错误
	 */
	void updatePassword(Integer id,String oldPassowrd, String newPassword) throws UpdateUserPasswordException,ServiceException;
	
	/**
	 * 修改个人信息
	 * @param user 提交的新信息
	 * @return	返回修改后的信息
	 */
	void updateUserAbout(User user);
	
	/**
	 * 为用户修改后的个人信息插入默认的数据,比如:
	 *  更新时间.更新的用户
	 */
    void tolerantData(User user, String bday);
    
    /**
     * 根据用户id查询用户
     * @param id
     * @return 用户信息
     */
    User getUserById(Integer id);
    
    /**
     * 获取用户的一页收藏记录
     * @param uid 用户id
     * @param page 分页
     * @return  收藏记录的列表
     */
    List<collect> getCollectList(Integer uid, Integer page);

    /**
     * 获取所有用户的收藏记录
     * @param uid 用户id
     * @return  收藏记录的列表
     */
    List<collect> getCollectList(Integer uid);
    
    /**
     * 删除一条收藏记录
     * @param collectId 该条收藏记录的id
     * @return 受影响行数
     */
    void deleteCollectById(Integer collectId);
    
    /**
	 * 依据用户ID查找一页留言
	 * @param uBid 获得留言的用户ID
	 * @param page 第几页 
	 * @return 留言列表
	 */
    List<Words> selectByUBid(Integer uBid, Integer page);
    
    /**
     * 依据用户ID查找所有留言
     * @param uBid 获得留言的用户ID
     * @return 留言列表
     */
    List<Words> selectByUBids(Integer uBid);
}
