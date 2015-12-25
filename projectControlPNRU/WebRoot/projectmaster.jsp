<%@ page language="java" import="java.util.*,java.text.DecimalFormat" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import="pnru.data.ProjectMasterDB" %>
<%@ page import="pnru.form.ProjectMasterForm" %>
<%@ page import="pnru.util.DBConnect" %>
<%
	List projectMasterList1 = null;
	if (request.getAttribute("projectMasterList") == null) {
	ProjectMasterDB projM = new ProjectMasterDB();
	projectMasterList1 = projM.GetProjectMasterList("","");
	}else{
	projectMasterList1 = (List) request.getAttribute("projectMasterList");
	}
 %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>topmenu</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width; initial-scale=1.0">
		
		<link rel="shortcut icon" href="/favicon.ico">
		<link href="css/metro.css" rel="stylesheet">
        <link href="css/metro-icons.css" rel="stylesheet">
        <link href="css/metro-responsive.css" rel="stylesheet">
		<link href="css/metro-schemes.css" rel="stylesheet">
		<link href="css/docs.css" rel="stylesheet"> 
	 
	    <script src="js/metro.js"></script>
	    <script src="js/docs.js"></script>
	    <script src="js/prettify/run_prettify.js"></script>
	    <script src="js/ga.js"></script>
 		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
  
	</head>

	<body>
		 <div><%@include file="topmenu.jsp" %></div>
		 <br>
		 <html:form action="/projectMaster" method="post">
		 <div class="example" data-text="รายละเอียด">
         <div class="grid">
		  	<div class="row cells4">
		        <div class="cell"> 
		        	รหัสโครงการ
			        <div class="input-control text full-size">
					    <input type="text" name="projectCode">
					</div>
				</div>
		        <div class="cell"> 
		        	ชื่อโครงการ
			        <div class="input-control text full-size">
					    <input type="text" name="projectName">
					</div>
				</div> 
				<div class="cell"><br>
					  <button class="button success" type="submit" name="add">เพิ่ม</button> <button class="button success">แก้ไข</button> <button class="button success">ลบ</button>
				</div> 
		    </div>
		 </div>  
		</div>  
		 
        <div class="example" data-text="รายการ">
            <table id="table_project" class="dataTable striped border bordered" data-role="datatable" data-searching="true">
                <thead>
                <tr> 
                	<th>เลขที่</th>
                    <th>รหัส-โครงการ</th>
                    <th>ชื่อ-โครงการ</th> 
                </tr>
                </thead> 
                  
                <tbody>
                <%	if (projectMasterList1 != null) {
						List projectMasterList = projectMasterList1;
						int x = 0;
						for (Iterator iter = projectMasterList.iterator(); iter.hasNext();) {
						x++; 
						ProjectMasterForm projMaster = (ProjectMasterForm) iter.next();
				%>
                <tr> 
                    <td align="center"><%=x%></td>
                    <td align="center"><%=projMaster.getProjectCode()%></td>
                    <td align="center"><%=projMaster.getProjectName()%></td>  
                </tr>	  
                <% 	} %>
                </tbody>
                <%} else { %>
                <tbody>
                	<tr> 
                    <td colspan="3">ไม่พบข้อมูล</td> 
                	</tr>
                </tbody>
                <%	} %>
                
            </table>
        </div> <!-- End of example table -->  
        </html:form>
        
        <script src="js/jquery-2.1.3.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/metro.js"></script>
        <script src="includehtml.js"></script>        
   
   		<script>
        $(function(){
            $('#table_project').dataTable();
        });
    	</script>
	</body>
</html>
