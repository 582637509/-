package cn.tedu.comic.utils;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class BookUtils {
	
	/**
	 * 相对路径转化为绝对路径
	 * @param relativePath 相对路径 如：/book/一拳超人 转成 E:/漫画/一拳超人
	 * @return
	 */
	public static String relativePathToAbsolutePath(String relativePath){
		String bookname=relativePath.substring("/book/".length());
		String path="E:/漫画/"+bookname;
		return path;
	}
	
	/**
	 * 用于用户上传漫画，绝对路径转相对路径
	 * @param absolutePath 绝对路径：E:/demo/ddd/0003.jpg 转成 /book/ddd/0003.jpg
	 * @return
	 */
	public static String absolutePathToRelativePath(String absolutePath){
		String bookname=absolutePath.substring("E:/漫画/".length());
		String path="/book/"+bookname;
		return path;
	}
	
	/**
	 * 获取一本书下所有的章节
	 * @param bookName 书名
	 * @return 这本书的所有章节
	 */
	public static List<String> getAllChapterByBookname(String bookname){
		List<String> list=new ArrayList<String>();
		String path="E:/漫画/"+bookname;
		File file=new File(path);
		File[] files=file.listFiles();
		for(File f:files){
			if(!f.getName().equals("封面")){
				list.add(f.getName());
			}
		}
		return list;
	}
	
	/**
	 * 获取一本书下一个章节中所有的图片
	 * @param bookname 书名
	 * @param chapter 章节名
	 * @return
	 */
	public static List<String> getAllImageUrlByBooknameAndChapter(String bookname,String chapter){
		List<String> list=new ArrayList<String>();
		String path="E:/漫画/"+bookname+"/"+chapter;
		File file=new File(path);
		File[] files=file.listFiles();
		for(File f:files){
				list.add("/book/"+bookname+"/"+chapter+"/"+f.getName());
		}
		return list;
	}
	
	//测试以上方法
	public static void main(String[] args) {
		System.out.println(getAllImageUrlByBooknameAndChapter("一拳超人", "一拳超人 003集"));
	}
}
