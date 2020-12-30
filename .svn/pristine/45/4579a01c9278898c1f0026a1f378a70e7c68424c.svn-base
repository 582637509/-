package cn.tedu.comic.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.comic.entity.Flow;
import cn.tedu.comic.mapper.PayMapper;
import cn.tedu.comic.service.IPayService;
import cn.tedu.comic.service.ex.InsertDateException;

@Service
public class PayService implements IPayService{

	@Autowired
	private PayMapper payMapper;
	
	@Override
	public void insertPayRecord(Flow flow) {
		Integer rows = payMapper.insertPayRecord(flow);
		if(rows != 1){
			throw new InsertDateException("插入数据发生错误!");
		}
	}

}
