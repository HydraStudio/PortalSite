package com.portal.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.ActivityInfo;
import com.portal.model.PageBean;
import com.portal.service.ActivityInfoService;
import com.portal.util.QueryHelper;

@Controller
@Scope("prototype")
public class ActivityInfoAction extends BaseAction<ActivityInfo> {

	private static final long serialVersionUID = -2637537027873914577L;

	@Resource
	private ActivityInfoService activityInfoService;
	
	private File upload;  
    private String uploadContentType;  
    private String uploadFileName;
    
    private String CKEditorFuncNum;  
    private String CKEditor;  
    private String langCode;
	
	
	public String listActivityInfo(){
		QueryHelper queryHelper = new QueryHelper(ActivityInfo.class, "a");
		PageBean pageBean = activityInfoService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_activity_info";
	}
	
	public String addInputActivityInfo(){
		return "input_activity_info";
	}
	
	public String addActivityInfo(){
		activityInfoService.saveActivityInfo(model);
		return "add_activity_info";
	}
	
	
	public String deleteActivityInfo(){
		activityInfoService.deleteActivityInfo(model.getId());
		return "delete_activity_info";
	}
	
	public String modifyInputActivityInfo(){
		ActivityInfo activityInfo = activityInfoService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(activityInfo);
		return "input_activity_info";
	}
	
	//need to modify
	public String modifyActivityInfo(){
		ActivityInfo activityInfo = activityInfoService.getById(model.getId());
		activityInfo.setDate(model.getDate());
		activityInfo.setDescription(model.getDescription());
		activityInfo.setLikeCount(model.getLikeCount());
		activityInfo.setTitle(model.getTitle());
		activityInfoService.modifyActivityInfo(activityInfo);
		return "modify_activity_info";
	}
	
	public String findByDate(){
		List<ActivityInfo> activityInfos = activityInfoService.findByDate(model.getDate());
		ActionContext.getContext().put("activities", activityInfos);
		return "list_activity_index";
	}
	
	//upload File
	public String uploadFile() throws Exception{
		
//		String strPath = ServletActionContext.getServletContext().getRealPath("/uploads");  
//        File path = new File(strPath);  
//        if(!path.exists()){  
//            path.mkdirs();  
//        }  
//        InputStream is = new FileInputStream(this.upload);  
//        OutputStream os = new FileOutputStream(new File(strPath + File.separator + this.uploadFileName));  
//          
//        int len;  
//        byte[] buffer = new byte[1024];  
//        while ((len=is.read(buffer)) > 0) {  
//            os.write(buffer,0,len);  
//        }  
//        if(is!=null){  
//            is.close();  
//        }  
//        if(os!=null){  
//            os.close();  
//        }  
//        
//        PrintWriter out = ServletActionContext.getResponse().getWriter();  
//        //返回给ckeditor  
//        out.write("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("+this.CKEditorFuncNum+", 'uploads/" + this.uploadFileName+"', '');</script>");
        
		HttpServletResponse response = ServletActionContext.getResponse();  
        response.setCharacterEncoding("UTF-8");  
        PrintWriter out = response.getWriter();  
  
  
        //对文件进行校验  
        if(upload==null || uploadContentType==null || uploadFileName==null){  
            out.print("<font color=\"red\" size=\"2\">*请选择上传文件</font>");  
            return null;  
        }  
          
        if ((uploadContentType.equals("image/pjpeg") || uploadContentType.equals("image/jpeg"))  
                && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".jpg")) {  
            //IE6上传jpg图片的headimageContentType是image/pjpeg，而IE9以及火狐上传的jpg图片是image/jpeg  
        }else if(uploadContentType.equals("image/png") && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".png")){  
              
        }else if(uploadContentType.equals("image/gif") && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".gif")){  
              
        }else if(uploadContentType.equals("image/bmp") && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".bmp")){  
              
        }else{  
            out.print("<font color=\"red\" size=\"2\">*文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）</font>");  
            return null;  
        }  
          
        if(upload.length() > 600*1024){  
            out.print("<font color=\"red\" size=\"2\">*文件大小不得大于600k</font>");  
            return null;  
        }  
          
        //将文件保存到项目目录下  
        InputStream is = new FileInputStream(upload);  
        String uploadPath = ServletActionContext.getServletContext()     
                .getRealPath("/upload");   //设置保存目录  
        String fileName = UUID.randomUUID().toString();  //采用UUID的方式随机命名 
        fileName += uploadFileName.substring(uploadFileName.length() - 4);  
        File toFile = new File(uploadPath, fileName);  
        OutputStream os = new FileOutputStream(toFile);     
        byte[] buffer = new byte[1024];     
        int length = 0;  
        while ((length = is.read(buffer)) > 0) {     
            os.write(buffer, 0, length);     
        }     
        is.close();  
        os.close();  
          
        HttpServletRequest request = ServletActionContext.getRequest();
        String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
        
        //设置返回“图像”选项卡  
        String callback = request.getParameter("CKEditorFuncNum");    
        out.println("<script type=\"text/javascript\">");    
        out.println("window.parent.CKEDITOR.tools.callFunction("+ callback + ",\'" +URL+"upload/"+fileName+ "\',\'\');");
//        out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + "upload/" + fileName + "','')");    
        out.println("</script>");
		
		return "upload_success";
	}

	public ActivityInfoService getActivityInfoService() {
		return activityInfoService;
	}

	public void setActivityInfoService(ActivityInfoService activityInfoService) {
		this.activityInfoService = activityInfoService;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getCKEditorFuncNum() {
		return CKEditorFuncNum;
	}

	public void setCKEditorFuncNum(String cKEditorFuncNum) {
		CKEditorFuncNum = cKEditorFuncNum;
	}

	public String getCKEditor() {
		return CKEditor;
	}

	public void setCKEditor(String cKEditor) {
		CKEditor = cKEditor;
	}

	public String getLangCode() {
		return langCode;
	}

	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}
}
