<%@ page language="java" import="java.util.*,java.text.DecimalFormat" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>index</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width; initial-scale=1.0">
		
		<link rel="shortcut icon" href="/favicon.ico">
		<link href="css/metro.css" rel="stylesheet">
        <link href="css/metro-icons.css" rel="stylesheet">
        <link href="css/metro-responsive.css" rel="stylesheet">
		<link href="css/metro-schemes.min.css"rel="stylesheet" />
		<link href="css/style.css" rel="stylesheet" />

        
	</head>

	<body class="">
		 <div data-include="topmenu.html"></div>

 		<div class="container-center">
 			<a href="projecthd.jsp">
 			<div class="tile tile-wide-x bg-teal fg-white" data-role="tile">
		    	 <div class="tile-content iconic">
                    <span class="icon mif-books"></span>
                    <span class="tile-label">โครงการ</span>
                </div>
		    </div></a>		
		    <div class="tile tile-wide-x bg-teal fg-white" data-role="tile">
		    	<div class="tile-content iconic">
		    		<span class="icon mif-clipboard"></span>
                    <span class="tile-label">เบิกงบประมาณ</span>
		    	</div>
		    </div>		
		    <div class="tile tile-wide-x bg-teal fg-white" data-role="tile">
		    	<div class="tile-content iconic">
		    		<span class="icon mif-dollar"></span>
                    <span class="tile-label">รายรับ</span>
		    	</div>
		    </div>		
		    <div class="tile tile-wide-x bg-teal fg-white" data-role="tile">
		    	<div class="tile-content iconic">
		    		<span class="icon mif-chart-line"></span>
                    <span class="tile-label">รายงานสรุป</span>
		    	</div>
		    </div>
	    		  	
 		</div>        	
 		<br><br><br><br><br><br><br><br><br>
    	<h3 class="align-center fg-emerald"></h3>
		<div class="container-center">
			
		<div class="grid">
			
			<div class="row">
				<div class="cell" id="chart-area">	
					<ul class="legend" style="list-style-type: square; float: right ">
						<li style="color:rgba(220,220,220,1);">งบประมาณ</li>			
						<li style="color:rgba(151,187,205,1);">รายจ่าย</li>
						<li style="color:rgba(179, 255, 204,1);">คงเหลือ</li>
						<li style="color:rgba(255, 217, 179,1);">รายรับ</li>
						
					</ul>														
					<canvas id="bar" height="310" width="1000"></canvas>		
					
				</div>			
			</div>
		</div>
			
			
			
		</div>

            
            
            
            
            
              
        <script src="js/jquery-2.1.3.min.js"></script>
        <script src="js/metro.js"></script>
            
        <script src="js/Chart.js"></script>
        <script src="src/Chart.Line.js"></script> 
        <script>

			var helpers = Chart.helpers;
			var canvas = document.getElementById('bar');
			var randomScalingFactor = function() {
			  return Math.round(Math.random() * 1000000)
			};
			var barChartData = {
			   labels : ["January","February","March","April","May","June","July","August","September","October","December"],
			   datasets : [
							{	label: "My First dataset",						
								fillColor : "rgba(220,220,220,0.5)",
								strokeColor : "rgba(220,220,220,0.8)",
								highlightFill: "rgba(220,220,220,0.75)",
								highlightStroke: "rgba(220,220,220,1)",
								data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
							},
							{	label: "My First dataset2",
								fillColor : "rgba(151,187,205,0.5)",
								strokeColor : "rgba(151,187,205,0.8)",
								highlightFill : "rgba(151,187,205,0.75)",
								highlightStroke : "rgba(151,187,205,1)",
								data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
							},
							{	label: "My First dataset3",
								fillColor : "rgba(179, 255, 204,0.5)",
								strokeColor : "rgba(179, 255, 204,0.8)",
								highlightFill : "rgba(179, 255, 204,0.75)",
								highlightStroke : "rgba(179, 255, 204,1)",
								data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
							},
							{	label: "My First dataset4",
								fillColor : "rgba(255, 217, 179,0.5)",
								strokeColor : "rgba(255, 217, 179,0.8)",
								highlightFill : "rgba(255, 217, 179,0.75)",
								highlightStroke : "rgba(255, 217, 179,1)",
								data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
							}
							
						]
			
			  }
			  // 
			var bar = new Chart(canvas.getContext('2d')).Bar(barChartData, {
			  responsive:true,
			  barValueSpacing : 10,
			  barDatasetSpacing : 0
			});
			// 
			var legendHolder = document.createElement('div');
			legendHolder.innerHTML = bar.generateLegend();
			
			document.getElementById('legend').appendChild(legendHolder.firstChild);
		</script>
		<script src="includehtml1.js"></script>   
	</body>
</html>
