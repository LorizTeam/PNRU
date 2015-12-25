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
	 
	    <script src="js/metro.js"></script>
	    <script src="js/docs.js"></script>
	    <script src="js/prettify/run_prettify.js"></script>
	    <script src="js/ga.js"></script>
 		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
  
	</head>

	<body>
		 <div><%@include file="topmenu.jsp" %></div>
		 <br>
		 <div class="example" data-text="รายละเอียด">
         <div class="grid">
		  	<div class="row cells4">
		  		<div class="cell"> 
		        	รหัส-ชื่อ โครงการ
			        <div class="input-control text full-size">
					    <select onchange="">
					    	<option>-- โปรดเลือก --</option>
					        <option>521800001 - อาคารเรือนไทย</option>
					        <option>521800002 - แหล่งเรียนรู้และวิจัย กาซะลองสปา</option>
					        <option>521800003 - ถ่ายภาพพิมพ์บัตรและสื่อสารดิจตอล</option>
					        <option>521800004 - โรงแรม</option>
					        <option>521800005 - ศูนย์บริการ</option>
					        <option>521800006 - สปา & ฟิตเนส</option>
					        <option>521800007 - ศูนย์อาหารและร้านค้า</option> 
					    </select>
					</div>
				</div>
		        <div class="cell"> 
		        	รหัสกิจกรรม
			        <div class="input-control text full-size">
					    <input type="text">
					</div>
				</div>
		        <div class="cell"> 
		        	ชื่อกิจกรรม
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
                	<th>รหัส-ชื่อ โครงการ</th>
                    <th>รหัส-กิจกรรม</th>
                    <th>ชื่อ-กิจกรรม</th> 
                </tr>
                </thead> 
                  
                <tbody>
                <tr> 
                	<td>255800003 - แหล่งเรียนรู้และวิจัย กาซะลองสปา</td>
                    <td>001</td>
                    <td>โครงการแหล่งเรียนรู้และวิจัย กาซะลองสปา</td>   
                </tr>	
                <tr> 
                	<td>255800003 - โครงการแหล่งเรียนรู้และวิจัย กาซะลองสปา</td>
                    <td>002</td>
                    <td>งบบุคลากร</td>  
                </tr>
                <tr> 
                	<td>255800003 - โครงการแหล่งเรียนรู้และวิจัย กาซะลองสปา</td>
                    <td>003</td>
                    <td>หมวดค่าใช้สอย</td>  
                </tr> 
                </tbody>
            </table>
        </div> <!-- End of example table -->  
        
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
