package cn.tedu.comic.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import com.github.junrar.Archive;
import com.github.junrar.rarfile.FileHeader;
import com.github.junrar.rarfile.MainHeader;

public class RarUtils {
	//2个参数，一个是被解压文件rar路径，一个是解压至的文件路径
	/**
	 * 解压文件
	 * @param sourceRar 源文件
	 * @param destDir 目标目录
	 * @return 图片集合
	 * @throws Exception 可能发生的异常
	 */
		public static List<String> unrar(String sourceRar,String destDir) throws Exception{
			List<String> imageurl=null;
			Archive a = null;
			FileOutputStream fos = null;    
			try{
				imageurl=new ArrayList<String>();
				a = new Archive(new File(sourceRar));    
				FileHeader fh = a.nextFileHeader();    
				while(fh!=null){
					if(!fh.isDirectory()){    
						String compressFileName = fh.getFileNameString().trim();
						String destFileName = destDir + compressFileName.replaceAll("/", "\\\\");
						//1.取得文件路径
						String destDirName = destFileName.substring(0, destFileName.lastIndexOf("\\"));
						//2.创建文件夹    
						File dir = new File(destDirName);    
						if(!dir.exists()||!dir.isDirectory()){    
							dir.mkdirs();    
						}
						imageurl.add(destFileName);
						//创建输出流
						fos = new FileOutputStream(new File(destFileName));
						//3.解压缩文件，传入参数FileHeader和输出流
						a.extractFile(fh, fos);    
						fos.close();    
						fos = null;    
					}    
					fh = a.nextFileHeader();    
				}    
				a.close();    
				a = null;    
				return imageurl;
			}catch(Exception e){    
				throw e;    
			}finally{
				if(fos!=null){    
					try{fos.close();fos=null;}catch(Exception e){e.printStackTrace();}    
				}    
				if(a!=null){    
					try{a.close();a=null;}catch(Exception e){e.printStackTrace();}    
				}
			}    
		} 
		
		//测试以下
//		public static void main(String[] args) {
//			try {
//				List<String> list=unrar("E:\\demo\\庖厨天下第三话上.rar", "E:\\demo\\ddd\\");
//				for(int i=0;i<list.size();i++){
//					System.out.println(BookUtils.absolutePathToRelativePath(list.get(i)));
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
}
