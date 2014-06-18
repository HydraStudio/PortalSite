package com.portal.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.portal.base.BaseAction;
import com.portal.model.Achievement;
import com.portal.model.PageBean;
import com.portal.model.Production;
import com.portal.model.Teacher;
import com.portal.service.TeacherService;
import com.portal.util.QueryHelper;


@Controller
@Scope("prototype")
public class TeacherAction extends BaseAction<Teacher> {

	private static final long serialVersionUID = -2985434730683122955L;

	@Resource
	private TeacherService teacherService;
	
	public String listTeacher(){
		QueryHelper queryHelper = new QueryHelper(Teacher.class, "a");
		PageBean pageBean = teacherService.searchPagination(pageNum, pageSize, queryHelper);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list_all";
	}
	
	public String addInputTeacher(){
		
		return "input";
	}
	
	public String addTeacher() throws Exception{
//		HttpServletRequest request = ServletActionContext.getRequest();
		String fileName = uploadCommon();
//		String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
        String imageUrl = "upload/" + fileName;
        model.setImageUrl(imageUrl);
        teacherService.saveTeacher(model);
		return "add";
	}
	
	public String deleteTeacher(){
		teacherService.deleteTeacher(model.getId());
		return "delete";
	}
	
	public String modifyInputTeacher(){
		Teacher teacher = teacherService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(teacher);
		return "input";
	}
	
	public String modifyTeacher() throws Exception{
		Teacher teacher = teacherService.getById(model.getId());
		teacher.setImageName(model.getImageName());
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String changeFlag = request.getParameter("changeFlag");
		//check if change the picture
		if(changeFlag != null && !changeFlag.equals("")){
			String fileName = uploadCommon();
//			String URL=request.getScheme()+"://"+request.getServerName()+ request.getContextPath()+"/";
	        String imageUrl = "upload/" + fileName;
	        teacher.setImageUrl(imageUrl);
		}
		teacherService.modifyTeacher(teacher);
		return "modify";
	}
	
	public String indexGetTeacher(){
		List<Teacher> teachers = teacherService.findAllTeachers();
		if(teachers !=null && teachers.size()>0){
			ActionContext.getContext().getValueStack().push(teachers.get(0));
		}
		return "index_get_teacher";
	}
}
