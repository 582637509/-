package cn.tedu.comic.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.comic.entity.Message;
import cn.tedu.comic.entity.Words;
import cn.tedu.comic.mapper.DetailsMapper;
import cn.tedu.comic.service.IDetailMapper;
import cn.tedu.comic.service.IPersonalService;
import cn.tedu.comic.service.ex.CommentEmptyException;

@Service
public class DetailMapper implements IDetailMapper {

	@Autowired
	DetailsMapper detailsMapper;
	@Autowired 
	IPersonalService iPersonalService ;
	
	
	public void collect(Integer uid, Integer bookid) {
		Integer num = detailsMapper.collect(uid, bookid);
	}
	
	@Override
	public void deleteWords(Integer id) {
		detailsMapper.deleteWords(id);
	}
	
	@Override
	public Integer selectUidByBookId(Integer bookid) {
		Integer num = detailsMapper.selectUidByBookId(bookid);
		return num;
	}
	
	//根据id删除收藏
	public void deleteCollectById(Integer collectId) {
		iPersonalService.deleteCollectById(collectId);
	}

	//根据id删除记录
	public Integer deleteById(Integer id){
		int num= detailsMapper.deleteById(id);
		 return num;
	}
	
	public void leaveMessage(Message message){
		if("".equals(message)){
			throw new CommentEmptyException("评论内容不能为空!");
		}else{
			Date date = new Date();
			SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String time = simple.format(date);
			message.setTime(time);
			detailsMapper.leaveMessage(message);
		}
	}
	
	public List<Message> selectMessage(Integer bookId){
		List<Message> message = detailsMapper.selectMessage(bookId);
		return message;
	}


	@Override
	public Integer selectById(Integer uid, Integer bookid) {
		Integer id= detailsMapper.selectById(uid, bookid);
		return id;
	}

	@Override
	public Integer insertWords(Words words) {
		Date date = new Date();
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = simple.format(date);
		words.setTime(time);
		Integer num= detailsMapper.insertWords(words);
		System.out.println("num:"+num);
		return num;
	}

}
