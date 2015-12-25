package pnru.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import pnru.data.ProjectMasterDB;
import pnru.form.ProjectMasterForm;
 

public class ProjectMasterAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProjectMasterForm projectMasterForm = (ProjectMasterForm) form;// TODO Auto-generated method stub
		ProjectMasterDB projectMasterDB = new ProjectMasterDB();
		String projectCode 	= projectMasterForm.getProjectCode();
		String projectName 	= new String(projectMasterForm.getProjectName().getBytes("ISO8859_1"), "utf-8");
 
		String add 					= projectMasterForm.getAdd();
	//	String update 				= materialForm.getUpdate();
	//	String delete 				= materialForm.getDelete();
		String alertMassage			= "";
		 
		String forwardText = null;
	  
		if(add!=null){
			
		if(!projectCode.equals("")&&!projectName.equals("")){
		
			projectMasterDB.AddProjectMaster(projectCode, projectName);
		
		List projectMasterList = projectMasterDB.GetProjectMasterList("", "");
		request.setAttribute("projectMasterList", projectMasterList);
		
		forwardText = "success";
		}else{
			alertMassage = "กรุณา กรอก ข้อมูลให้ครบถ้วน";
			forwardText = "success";
		}
		}
	/*	if(update!=null){
			if(!materialCode.equals("")&&!materialName.equals("")&&!amount.equals("")&&!unit.equals("")){
		 
				materialDB.UpdateMaterial(materialCode, materialName, amount, unit);
			
				List materialList = materialDB.GetMaterialList("", "");
				request.setAttribute("materialList", materialList);
			
			forwardText = "success";
		}else{
			alertMassage = "กรุณา กรอก ข้อมูลให้ครบถ้วน";
			forwardText = "success";
		}	
		}
		if(delete!=null){
			materialDB.DeleteMaterial(materialCode);
			
			List materialList = materialDB.GetMaterialList("", "");
			request.setAttribute("materialList", materialList);
			
			forwardText = "success";
		}
		*/
		return mapping.findForward(forwardText);
	}
}