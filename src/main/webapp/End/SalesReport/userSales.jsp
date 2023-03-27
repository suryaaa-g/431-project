<!DOCTYPE html>
<html>
	<head>
		<title>Generate Sales Report</title>
	</head>
	<style>
	 	
	 	body{background: #FFFAF0;}
	 	</style>
	<body>
		<h1>Generate Sales Report</h1>
		<div>
		<form action="../../FetchReportServlet" method="POST">
Choose Data Type: <select size="1" id="data_type" title="" name="option_type">
				<option value="total_earnings">Total Earnings</option>
			<!-- 	<option value="Sold Items">Sold Items</option> -->
				<!-- <option value="best_sellers">Best Sellers</option> -->
			</select><br>
			 <input type="submit" value="Submit"/><br><br><br>
			 </form>

			 <a href='../rutgersMain.jsp'>Go back to Main Page</a>
			 
			</div>
			
	</body>
</html>