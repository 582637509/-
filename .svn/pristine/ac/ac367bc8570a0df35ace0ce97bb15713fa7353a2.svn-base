package cn.tedu.comic.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.tedu.comic.entity.UserBook;
import cn.tedu.comic.mapper.UserBookMapper;
import cn.tedu.comic.service.IUserBookService;
import cn.tedu.comic.service.ex.BookExistException;
import cn.tedu.comic.service.ex.UploadUserBookException;
import cn.tedu.comic.utils.BookUtils;
import cn.tedu.comic.utils.RarUtils;

@Service
public class UserBookService implements IUserBookService{
	@Autowired
	private UserBookMapper userBookMapper;
	
	//保存用户上传的书，计入数据库
	@Override
	public void createUserBook(CommonsMultipartFile file,UserBook userBook) {
		//检查书名是否已经存在
		UserBook ub=userBookMapper.getUserBookByBookName(userBook.getBookname());
		if(ub!=null){
			throw new BookExistException("该书已存在，请尝试换一个书名");
		}
		//给书赋一些初值
		Date date=new Date();
		userBook.setCreateTime(date);
		userBook.setPass(1);
		userBook.setUrl("/book/UserBook/"+userBook.getBookname());
		//把文件保存下来
		File dest=new File("E:/漫画/UserBook",userBook.getBookname()+".rar");
		try {
			file.transferTo(dest);
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
			throw new UploadUserBookException("上传失败！请联系系统管理员");
		} catch (IOException e1) {
			e1.printStackTrace();
			throw new UploadUserBookException("上传失败！请联系系统管理员");
		}
		//解压
		List<String> imageurl=null;
		try {
			imageurl=RarUtils.unrar(dest.getAbsolutePath(), "E:\\漫画\\UserBook\\"+userBook.getBookname()+"\\");
		} catch (Exception e) {
			e.printStackTrace();
			throw new UploadUserBookException("上传失败！请联系系统管理员");
		}
		//保存其中三张图片(相对地址)
		Collections.sort(imageurl);
		userBook.setImage1url(BookUtils.absolutePathToRelativePath(imageurl.get(0)));
		userBook.setImage2url(BookUtils.absolutePathToRelativePath(imageurl.get(imageurl.size()/2)));
		userBook.setImage3url(BookUtils.absolutePathToRelativePath(imageurl.get(imageurl.size()-1)));
		
		//删除文件
		dest.delete();
		
		//加入数据库
		userBookMapper.insert(userBook);
	}

	@Override
	public List<UserBook> getUserBookByPage(Integer page) {
		if(page==null||page<1){
			page=1;
		}
		Integer l1=(page-1)*6;//忽略6本
		Integer l2=6;//一页显示6本
		return userBookMapper.getAllUserBook(l1, l2);
	}

	@Override
	public List<String> getImageByBookname(String bookname) {
		List<String> images=new ArrayList<String>();
		//获取书的相对路径
		String url=userBookMapper.getUrlByBookname(bookname);
		//获取书的绝对路径
		String abspath=BookUtils.relativePathToAbsolutePath(url);
		File file=new File(abspath);
		File files[]=file.listFiles();
		for(File f:files){
			images.add("/book/UserBook/"+bookname+"/"+f.getName());
		}
		return images;
	}

	@Override
	public Integer getBooksPages() {
		Integer count=userBookMapper.getBooksCount();
		Integer page=(int) Math.ceil(count*1.0/6);
		return page;
	}

	
}
