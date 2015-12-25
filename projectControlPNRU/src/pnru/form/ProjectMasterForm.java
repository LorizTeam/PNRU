package pnru.form;

import org.apache.struts.action.ActionForm;

public class ProjectMasterForm extends ActionForm {

	private String projectCode; 
	private String projectName;
	private String add;
 
	public ProjectMasterForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProjectMasterForm(String projectCode, String projectName) {
		super();
		this.projectCode = projectCode;
		this.projectName = projectName;
	}
	
	public String getProjectCode() {
		return projectCode;
	}
	
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	
	public String getProjectName() {
		return projectName;
	}
	
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	} 
	 
}
