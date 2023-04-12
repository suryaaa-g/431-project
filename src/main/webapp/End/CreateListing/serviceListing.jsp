<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<link rel='stylesheet' href='../../CSS/navbar.css'>
	<link rel='stylesheet' href='../../CSS/params.css'>
		<title>List A Service</title>
	</head>
	<style>
		body{
		
		background-color: #e9bcb7;
		background-image: linear-gradient(315deg, #e9bcb7 0%, #29524a 74%);
	}
	
	h1, p, h2,label{
	color: white;
}
	</style>
	<body>
		<div class = 'navbar'>
			<a href='rutgersMain.jsp' class='active'>Home</a>
			 <div class = 'dropdown'>
				<button class='dropbtn'>Create a new listing</button>
					<div class='dropdown-content'>
						<a href='itemListing.jsp'>Create a Item Listing</a>
						<a href='serviceListing.jsp'>Offer a service</a>
						<!-- <a href='CreateAuction/truckListing.jsp'>Trucks</a> -->
					</div>
			</div> 
			<div class='dropdown'>
				<button class='dropbtn'>Browse active Rutgers listings</button>
				<div class='dropdown-content'>
			   <a href='../BrowseItems/browseProducts.jsp'>Browse Items</a> 
					<!--  <a href='../GetImageServlet'>Browse Items</a> -->
					<a href='../BrowseItems/browseServices.jsp'>Browse Services</a>
					<!-- <a href='BrowseAuctions/endTruckParams.jsp'>Trucks</a>  -->
				</div>
			</div>
		<!-- 	<div class='dropdown'>
				<button class='dropbtn'>Browse All Active Listings?</button> -->
				<!-- <div class='dropdown-content'> -->
					<!-- <a href='BrowseVehicles/endSedanParams.jsp'>Sedans</a>
					<a href='BrowseVehicles/endBikeParams.jsp'>Bike</a>
					<a href='BrowseVehicles/endTruckParams.jsp'>Trucks</a> -->
				<!-- </div> -->
<!-- 			</div>
 -->		<a href='../../Blog/blogHome.jsp'>Blog</a>
			<a href='../SalesReport/userSales.jsp'>My Sales</a>
			<a href='../GroupMe/GroupMeList.jsp'>Rutgers Group Me Chats</a>
			<a href='../Courses/courses.jsp'>Courses</a>
			<a href='../CustomerService/endCustomerService.jsp'>Customer Service</a>
			<a href='../../MyBuyServlet'>My Buys</a>
			
			<!-- <a href='../../deleteAccount/deleteAccount.jsp'>Delete Account</a> -->
			<a href='../logout.jsp' style='float:right'>Log out</a>
		</div>
		<div class='back'>
			<h1>Create a new Service listing</h1>
			<!-- idk about this yet -->
			<form action="../../AddServiceServlet" method="POST">
				<div class='lcolumn'>
					<label>Name of the Service:</label>
					<input type="text" name="name"/>
					<!-- <label>Condition:</label>
					<select name="condition" id="condition">
						<option value="brandnew">Brand New</option>
						<option value="good">Used: Good</option>
						<option value="fair">Used: Fair</option>
					</select> -->
					<label>Where Service is being offered:</label>
					 <textarea  name="location" rows="4" cols="40"
       					 placeholder="How or where will you be offering this service i.e Student center, library, dorm, etc. ">
       				</textarea>
       					 
					<label>Course or Subject (type N/A if you don't have one):</label>
					<input type="text" name="subject"/>
					<!-- <label>Model:</label>
					<input type="text" name="model"/>
					<label>Color:</label>
					<input type="text" name="color"/>
					<label>Design:</label>
					<input type="text" name="design"/>
					<label>Year:</label>
					<input type="text" name="year"/>
					<label>Mileage:</label>
					<input type="text" name="mileage"/>
					<label>Auction end date and time:</label>
					<input type="datetime-local" name="endDate"/>
					<input type="submit" value="List Item"> -->
				</div>
				<div class='rcolumn'>
					<!-- <label>Accident Free?</label>
					<select name="accident" id="accident">
						<option value=false>No</option>
						<option value=true>Yes</option>
					</select>
					<label>Height:</label>
					<input type="text" step="0.5" name="height">
					<label>Back Support</label>
					<select name="support" id="support">
						<option value=false>No</option>
						<option value=true>Yes</option>
					</select>
					<label>Transmission Type</label>
					<select name="transmition" id="transmition">
						<option value=manual>Manual</option>
						<option value=auto>Automatic</option>
					</select>
					<label>Weight</label>
					<select name="weight" id="weight">
						<option value=heavy>heavy</option>
						<option value=medium>medium</option>
						<option value=light>light</option>
					</select>
					 -->
					 <label>Description:</label>
					<!-- <input type="text" name="description"/> -->
					<textarea id="description" name="description" rows="4" cols="50">Enter text here...</textarea>
					
					
					<label>Qualifications</label>
					 <textarea name="qualification" rows="4" cols="40" placeholder="List your qualifications separated by commas..."> </textarea>
       				
       				 <label>Price (specify if it is hourly):</label>
					<input type="number" step="0.01" name="charge"/>
					
					
						<input type="submit" value="List Service">
				</div>
			</form>
		</div>
	</body>
</html>