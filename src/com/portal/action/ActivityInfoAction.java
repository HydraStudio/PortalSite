package com.portal.action;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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
	
	public String addActivityInfo() throws Exception{
//		HttpServletRequest request = ServletActionContext.getRequest();
		String fileName = uploadCommon();
//        String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
        String imageUrl = "upload/" + fileName;
        model.setImageUrl(imageUrl);
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
	public String modifyActivityInfo() throws Exception{
		ActivityInfo activityInfo = activityInfoService.getById(model.getId());
		activityInfo.setDate(model.getDate());
		activityInfo.setDescription(model.getDescription());
		activityInfo.setTitle(model.getTitle());
		activityInfo.setDetail(model.getDetail());
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String changeFlag = request.getParameter("changeFlag");
		//check if change the picture
		if(changeFlag != null && !changeFlag.equals("")){
			String fileName = uploadCommon();
//	        String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
	        String imageUrl = "upload/" + fileName;
	        activityInfo.setImageUrl(imageUrl);
		}
		
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
		
		HttpServletResponse response = ServletActionContext.getResponse();  
        response.setCharacterEncoding("UTF-8");  
        PrintWriter out = response.getWriter();  
  
        HttpServletRequest request = ServletActionContext.getRequest();
		String callback = request.getParameter("CKEditorFuncNum");
  
        //对文件进行校验  
        if(upload==null || uploadContentType==null || uploadFileName==null){  
//            out.print("<font color=\"red\" size=\"2\">*请选择上传文件</font>"); 
            out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",''," + "'<font color=\"red\" size=\"2\">*请选择上传文件</font></font>');");
            return null;  
        }  
          
        if ((uploadContentType.equals("image/pjpeg") || uploadContentType.equals("image/jpeg"))  
                && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".jpg")) {  
            //IE6上传jpg图片的headimageContentType是image/pjpeg，而IE9以及火狐上传的jpg图片是image/jpeg  
        }else if(uploadContentType.equals("image/png") && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".png")){  
              
        }else if(uploadContentType.equals("image/gif") && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".gif")){  
              
        }else if(uploadContentType.equals("image/bmp") && uploadFileName.substring(uploadFileName.length() - 4).toLowerCase().equals(".bmp")){  
              
        }else{  
//            out.print("<font color=\"red\" size=\"2\">*文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）</font>");  
            out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",''," + "'<font color=\"red\" size=\"2\">*文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）</font>');"); 
            return null;  
        }  
          
        if(upload.length() > 600*1024){  
//            out.print("<font color=\"red\" size=\"2\">*文件大小不得大于600k</font>");  
            out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",''," + "'<font color=\"red\" size=\"2\">*文件大小不得大于600k</font>');");
            return null;  
        }  
          
        String fileName = uploadCommon();
        
//        String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
        
        //设置返回“图像”选项卡  
        out.println("<script type=\"text/javascript\">");    
        out.println("window.parent.CKEDITOR.tools.callFunction("+ callback + ",\'" +"upload/"+fileName+ "\',\'\');");
//        out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + "upload/" + fileName + "','')");    
        out.println("</script>");
		
		return "upload_success";
	}
	
	public String addToIndexInputActivityInfo(){
		ActivityInfo activityInfo = activityInfoService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(activityInfo);
//		ActionContext.getContext().put("activityId", model.getId());
		return "add_to_index_input";
	}
	
	
	public String indexShowActivityInfo(){
		ActivityInfo activityInfo = activityInfoService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(activityInfo);
		return "show_activity_info";
	}
	
	public String indexGetMonthActivityInfo(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String year = request.getParameter("year");
		String month = request.getParameter("month");

		//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		
		Calendar begin = Calendar.getInstance();
		Calendar end = Calendar.getInstance();
		
		begin.set(Calendar.YEAR, Integer.valueOf(year));
		begin.set(Calendar.MONTH, Integer.valueOf(month)-1);
		begin.set(Calendar.DAY_OF_MONTH, 1);
		begin.set(Calendar.HOUR_OF_DAY, 0);
		begin.set(Calendar.MINUTE, 0);
		begin.set(Calendar.SECOND, 0);
		
		end.set(Calendar.YEAR, Integer.valueOf(year));
		end.set(Calendar.MONTH, Integer.valueOf(month));
		end.set(Calendar.DAY_OF_MONTH, 1);
		end.set(Calendar.HOUR_OF_DAY, 23);
		end.set(Calendar.MINUTE, 59);
		end.set(Calendar.SECOND, 59);
		end.add(Calendar.DAY_OF_MONTH, -1);
		
		Date beginDate = begin.getTime();
		Date endDate = end.getTime();
		
		List<ActivityInfo> activityInfos = activityInfoService.getPeriodActivities(beginDate, endDate);
		ActionContext.getContext().put("activities", activityInfos);
		
		return "index_get_month_activity";
	}
	
//	public void ajaxUpload() throws Exception{
//		
//		HttpServletRequest request = ServletActionContext.getRequest();
//		String fileName = uploadActivityInfo();
//        String URL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
//        String imageUrl = URL+"upload/" + fileName;
//        ServletActionContext.getResponse().getWriter().print(imageUrl);
//	}
	
	
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
