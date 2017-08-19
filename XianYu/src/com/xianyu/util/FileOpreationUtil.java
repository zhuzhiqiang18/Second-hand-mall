package com.xianyu.util;

import java.io.File;

import org.springframework.stereotype.Component;

/**
 * 文件操作工具类
 * @author java_one
 *
 */
@Component
public class FileOpreationUtil {
	/**
	 * 上传文件的时候按照新的命名规则对上传文件名进行修改
	 */
	public static String modifyFileName(String fileName){
		int position = fileName.lastIndexOf(".");
		String ins = fileName.substring(position);
		return System.currentTimeMillis()+ins;
	}
	/**
	 * 删除文件
	 */
	public static boolean deleteFile(String name){
		File file = new File(name);
		if(file.exists()&&file.isFile()){
			if(file.delete()){
				System.out.println("删除"+name+"成功");
				return true;
			}else{
				System.out.println("删除"+name+"失败");
				return false;
			}
		}else{
			System.out.println("删除"+name+"不存在！");
			return false;
		}
	}
}
