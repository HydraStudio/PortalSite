package com.portal.action;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.portal.base.BaseAction;

@Controller
@Scope("prototype")
public class DataBaseAction extends BaseAction<Object> {

	private static final long serialVersionUID = 7719440010425107514L;

	
	public String backupDataBase() throws Exception{
		String root = ServletActionContext.getServletContext().getRealPath("/upload");
		Runtime rt = Runtime.getRuntime();  
		String serverName = ServletActionContext.getRequest().getServerName();
		int serverPort = ServletActionContext.getRequest().getServerPort();
		System.out.println(serverName+":"+serverPort);
		String cmd ="mysqldump -h "+ serverName + " -uroot -proot oa > "+ root +"\\metall.sql";  
		rt.exec("cmd /c " + cmd);
		
//		Process process =rt.exec("cmd /c " + cmd);  
//		InputStreamReader isr = new InputStreamReader(process.getErrorStream());  
//		LineNumberReader input = new LineNumberReader(isr);  
////		String line;  
////		while((line = input.readLine())!= null){  
////			System.out.println(line+"~~~~~~~~~~");
////		}
		return "backup_database";
	}
	
	public InputStream getDownloadFile() throws Exception {  
		return ServletActionContext.getServletContext().getResourceAsStream("upload/metall.sql");
	}
	
	public String downLoadSql(){
		return "success";
	}
	
	public String restoreDataBase() throws Exception{
		String fileName = uploadCommon();
		
		String root = ServletActionContext.getServletContext().getRealPath("/upload");
		Runtime rt = Runtime.getRuntime();  
		String serverName = ServletActionContext.getRequest().getServerName();
//		int serverPort = ServletActionContext.getRequest().getServerPort();
		String cmd ="mysql -h "+ serverName + " -uroot -proot oa < "+ root +"\\"+fileName;  
		rt.exec("cmd /c " + cmd);
		
		return "restore_database";
	}
	
	public String systemManager(){
		return "success";
	}
}
