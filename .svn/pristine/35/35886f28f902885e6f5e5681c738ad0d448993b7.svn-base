package cn.tedu.comic.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.comic.entity.Book;
import cn.tedu.comic.entity.User;
import cn.tedu.comic.entity.collect;
/**
 * 处理个人中心页面的操作---持久层--接口
 * @author Administrator
 *
 */
public interface PersonalMapper {

	/**
	 * 通过id获取对象
	 * @param id
	 * @return
	 */
	User selectUserById(Integer id);
	
	/**
	 * 用户修改密码
	 * @param id  用户id
	 * @param newPassword  新密码
	 * @return	受影响行数
	 */
	Integer updatePassword(@Param("id") Integer id,@Param("password") String password);
	
	/**
	 * 修改个人信息,包括: 昵称,性别,QQ,生日,电话,邮箱,个性签名,地址
	 * @param user 用户信息
	 * @return	受影响行数
	 */
	Integer updateUserAbout(User user);
	
	/**
	 * 查询该用户的所有收藏记录
	 * @param uid  用户id
	 * @param off  第几页
	 * @param len  显示几个
	 * @return 返回收藏列表
	 */
	List<collect> getCollectBooksByUid(@Param("uid")Integer uid, @Param("off")Integer off, @Param("len")Integer len);

	/**
	 * 查询该用户的所有收藏记录
	 * @param uid  用户id
	 * @param off  第几页
	 * @param len  显示几个
	 * @return 返回收藏列表
	 */
	List<collect> getCollectBooksByUids(Integer uid);
	
	
	/**
	 * 删除一条收藏记录
	 * @param collectId   该条记录的id
	 * @return  受影响行数
	 */
	Integer deleteCollectById(Integer collectId);
	
}
