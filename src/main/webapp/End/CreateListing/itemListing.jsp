<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<link rel='stylesheet' href='../../CSS/navbar.css'>
	<link rel='stylesheet' href='../../CSS/params.css'>
		<title>List an Item</title>
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
			<a href='../rutgersMain.jsp' class='active'>Home</a>
			<div class = 'dropdown'>
				<button class='dropbtn'>Create a new listing</button>
					<div class='dropdown-content'>
						<a href='itemListing.jsp'>Sell an Item</a>
						<a href='serviceListing.jsp'>Offer a service</a>
						<!-- <a href='truckListing.jsp'>Trucks</a> -->
					</div>
			</div>
			<div class='dropdown'>
				<button class='dropbtn'>Browse active Rutgers listing</button>
				<div class='dropdown-content'>
					<a href='../BrowseItems/browseProducts.jsp'>Browse Products</a>
				<!-- 	<a href='../BrowseAuctions/endBikeParams.jsp'>Browse Services</a> -->
					<!-- <a href='../BrowseAuctions/endTruckParams.jsp'>Trucks</a> -->
				</div>
			</div>
			<div class='dropdown'>
				<button class='dropbtn'>Browse Items</button>
				<div class='dropdown-content'>
					<a href='../BrowseItems/endSedanParams.jsp.jsp'>Sedans</a>
					<a href='../BrowseItems/endBikeParams.jsp.jsp'>Bikes</a>
					<a href='../BrowseItems/endTruckParams.jsp'>Trucks</a>
				</div>
			</div>
			<a href='../BidHistory/searchAuctionHistory.jsp'>Browse Auction Bid Histories</a>
			<a href='../UserHistory/searchUserHistory.jsp'>Browse User Histories</a>
			<a href='../CustomerService/endCustomerService.jsp'>Customer Service</a>
			<!-- <a href='../Profile/endProfile.jsp'>Profile</a> -->
			<a href='../../logout.jsp' style='float:right'>Log out</a>
		</div>
		<div class='back'>
			<h1>Create a new Item listing</h1>
			<!-- idk about this yet -->
			
			<!-- IDK WHY BUT I COULDNT CHANGE THE SERVLET MAPPING: BUT AddlistingServlet refers to addItemServlet -->
			<form action="../../AddlistingServlet" method="POST" enctype="multipart/form-data"> 
				<div class='lcolumn'>
					<label>Name:</label>
					<input type="text" name="name"/>
					<label>Condition:</label>
					<select name="condition" id="condition">
						<option value="brandnew">Brand New</option>
						<option value="good">Used: Good Condition</option>
						<option value="fair">Used: Fair Condition</option>
						<option value="fair">Bad Condition</option>
					</select>
					
					<label>Location:</label>
					<input type="text" name="location"/>
					<label>Type:</label>
					<input type="text" name="type"/>
					<label>Color:</label>
					<input type="text" name="color"/>
					<label>Description:</label>
					<!-- <input type="text" name="description"/> -->
					<textarea id="description" name="description" rows="4" cols="50">Enter text here...</textarea>
					
					<!-- <label>Year:</label>
					<input type="text" name="year"/>
					<label>Mileage:</label>
					<input type="text" name="mileage"/> -->
					<!-- <label>Auction end date and time:</label>
					<input type="datetime-local" name="endDate"/> -->
					<input type="submit" value="List Item">
				</div>
				<div class='rcolumn'>
					<label>Free Delivery?</label>
					<select name="delivery" id="delivery">
						<option value=false>No</option>
						<option value=true>Yes</option>
					</select>
					<!-- <label>Height:</label>
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
					</select> -->
					<label>Price:</label>
					<input type="number" step="0.01" name="price"/>
					
					<label>Upload Photo:</label>
						<input type="file" name="photo" size=50/>
					
					
				</div>
			</form>
					
			
					
				
					
						
					
				
					
				
				
				
		</div>
	</body>
</html>