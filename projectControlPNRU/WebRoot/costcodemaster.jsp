<%@ page language="java" import="java.util.*,java.text.DecimalFormat" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>สร้าง กิจกรรม</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width; initial-scale=1.0">
		
		<link rel="shortcut icon" href="/favicon.ico">
		<link href="css/metro.css" rel="stylesheet">
        <link href="css/metro-icons.css" rel="stylesheet">
        <link href="css/metro-responsive.css" rel="stylesheet">
		<link href="css/metro-schemes.css" rel="stylesheet">
		<link href="css/docs.css" rel="stylesheet"> 
	 
	 	<script src="js/jquery-2.1.3.min.js"></script>
	    <script src="js/metro.js"></script>
	    <script src="js/docs.js"></script>
	    <script src="js/prettify/run_prettify.js"></script>
	    <script src="js/ga.js"></script> 
        <script src="js/jquery.dataTables.min.js"></script> 
        <script src="includehtml.js"></script>
  		
	</head>

	<body>
		 <div><%@include file="topmenu.jsp" %></div>
		 <br>
		 <div class="example" data-text="รายละเอียด">
         <div class="grid">
		  	<div class="row cells4">
		  		<div class="cell"> 
		        	รหัส รายการค่าใช้จ่าย
			        <div class="input-control text full-size">
					    <input type="text">
					</div>
				</div>
		        <div class="cell"> 
		        	รหัส รายการค่าใช้จ่าย
			        <div class="input-control text full-size">
					    <input type="text">
					</div>
				</div> 
				<div class="cell"><br>
					  <button class="button success">เพิ่ม</button> <button class="button success">แก้ไข</button> <button class="button success">ลบ</button> 
				</div> 
		    </div>
		 </div>  
		</div>  
		 
        <div class="example" data-text="รายการ">
            <table id="table_project" class="dataTable striped border bordered" data-role="datatable" data-searching="true">
                <thead>
                <tr>  
                    <th>รหัส-รายการค่าใช้จ่าย</th>
                    <th>ชื่อ-รายการค่าใช้จ่าย</th> 
                </tr>
                </thead> 
                  
                <tbody>
                <tr>  
                    <td>001</td>
                    <td>เงินเดือนพนักงานธุรการ ประจำโครงการ 1 คน x 13,200 บาท x 12 เดือน = 158,400</td>   
                </tr>	
                <tr>  
                    <td>002</td>
                    <td>พนักงานนวด</td>  
                </tr>
                <tr>  
                    <td>003</td>
                    <td>ค่าตอบแทนล่วงเวลา</td>  
                </tr> 
                <tr>  
                    <td>004</td>
                    <td>ค่าตอบแทนพนักงงานนวด(รายวัน)</td>  
                </tr> 
                </tbody>
            </table>
        </div> <!-- End of example table -->  
         
   		<script>
        $(function(){
            $('#table_project').dataTable();
        });
    	</script>
	</body>
</html>
