<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<%

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ru_amazon","root", "PASSWORD");
Statement st = con.createStatement();
Statement st2 = con.createStatement();
ResultSet rs, rs2;

String user = (String)session.getAttribute("user");
rs = st.executeQuery("select a.alert_message from alerts a where a.uname = '" + user + "'");
rs2 = st2.executeQuery("select prod_name, current_price from listings natural join items "
	+ "where seller = '" + user + "'");

%> 
<!DOCTYPE html>
<html>
	<head>
	<link rel='stylesheet' href='../CSS/main.css'>
	 <link rel='stylesheet' href='../CSS/navbar.css'>
	 
	 
	 	<style>
	 	
	 		/* body{background: #FFFAF0;} */
	 		
	 	</style>
	  
		<title>Welcome to the Rutgers Scholar Commons</title>
	</head>
	<body>
		<div class = 'navbar'>
			<a href='rutgersMain.jsp' class='active'>Home</a>
			 <div class = 'dropdown'>
				<button class='dropbtn'>Create a new listing</button>
					<div class='dropdown-content'>
						<a href='CreateListing/itemListing.jsp'>Create a Item Listing</a>
						<a href='CreateListing/serviceListing.jsp'>Offer a service</a>
						<!-- <a href='CreateAuction/truckListing.jsp'>Trucks</a> -->
					</div>
			</div> 
			<div class='dropdown'>
				<button class='dropbtn'>Browse active Rutgers listings</button>
				<div class='dropdown-content'>
			   <a href='BrowseItems/browseProducts.jsp'>Browse Items</a> 
					<!--  <a href='../GetImageServlet'>Browse Items</a> -->
					<a href='BrowseItems/browseServices.jsp'>Browse Services</a>
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
 -->		<a href='../Blog/blogHome.jsp'>Blog</a>
			<a href='SalesReport/userSales.jsp'>My Sales</a>
			<a href='GroupMe/GroupMeList.jsp'>Rutgers Group Me Chats</a>
			<a href='Courses/courses.jsp'>Courses</a>
			<a href='CustomerService/endCustomerService.jsp'>Customer Service</a>
			<a href='../MyBuyServlet'>My Buys</a>
			
			<!-- <a href='deleteAccount/deleteAccount.jsp'>Delete Account</a> -->
			<a href='../logout.jsp' style='float:right'>Log out</a>
		</div>
		<h1>Welcome to the Rutgers Scholar Commons.</h1>
		<p>One man's trash is another man's treasure!?</p>
		<h2>Welcome, <% out.print(session.getAttribute("user").toString());%></h2>
		<div class='center-collapse'>
			<button class='collapsible'>Your Alerts</button>
			<div class='collapsible-content'>
			<% if (!rs.isBeforeFirst() ) { %>
				<p>You have no alerts at this time.</p>
			<% } else { %>
				<table>
					<% while (rs.next()) { %>
					<tr>
						<td><%= rs.getString("alert_message") %></td>
					</tr>
					<% } %>
				</table>
			<% } %> 
			</div>
			<button class='collapsible' class='text-center'>Your Listings</button>
			<div class='collapsible-content'>
			<% if (!rs2.isBeforeFirst() ) { %>
				<p>You currently have no listings.</p>
			<% } 
			else { %>
				<table>
					<tr>
						<th>Item</th>
						<th>Current Bid</th>
						
					<tr>
					<% while (rs2.next()) { %>
					<tr>
						<td><%= rs2.getString("prod_name") %></td>
						<td>$<%= rs2.getString("current_price") %></td>
						>
					</tr>
					<% } %>
				</table>
			<% } %> 
			</div>
		</div>
		
		
		<script src='end.js'></script>
		
		
		
	</body>
</html>