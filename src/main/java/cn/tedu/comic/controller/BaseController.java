package cn.tedu.comic.controller;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.comic.entity.ResponseResult;
import cn.tedu.comic.service.ex.BookNotFountException;
import cn.tedu.comic.service.ex.FirstException;
import cn.tedu.comic.service.ex.InsertDateException;
import cn.tedu.comic.service.ex.LastException;
import cn.tedu.comic.service.ex.PasswordNotMatchException;
import cn.tedu.comic.service.ex.ServiceException;
import cn.tedu.comic.service.ex.UpdateUserAboutException;
import cn.tedu.comic.service.ex.UpdateUserPasswordException;
import cn.tedu.comic.service.ex.UserAlreadyExistException;
import cn.tedu.comic.service.ex.UserNotFountException;



public class BaseController {
	/**
	 * 捕捉错误信息
	 */
	@ExceptionHandler(ServiceException.class)
	@ResponseBody
	public ResponseResult<Void> handleException(ServiceException e){
		if(e instanceof UserAlreadyExistException){//用户已存在异常
			return new ResponseResult<Void>(401, e);
		}else if(e instanceof PasswordNotMatchException){//密码不匹配异常
			return new ResponseResult<Void>(402,e);
		}else if(e instanceof UserNotFountException){//用户没找到异常
			return new ResponseResult<Void>(403,e);
		}else if(e instanceof BookNotFountException){//书本找不到异常
			return new ResponseResult<Void>(404,e);
		}else if(e instanceof FirstException){//已经是第一页异常
			return new ResponseResult<Void>(405,e);
		}else if(e instanceof LastException){//已经是最后一页异常
			return new ResponseResult<Void>(406,e);
		}else if(e instanceof UpdateUserPasswordException){//用户修改密码操作异常
			return new ResponseResult<Void>(407,e);
		}else if(e instanceof UpdateUserAboutException){//用户修改资料操作异常
			return new ResponseResult<Void>(408,e);
		}else if(e instanceof InsertDateException){//插入异常
			return new ResponseResult<Void>(450,e);
		}else{//不知道异常，不可能走这里，但以防万一
			return new ResponseResult<Void>(500,e);
		}
	}
}
