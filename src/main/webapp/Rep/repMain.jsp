<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>BuyMe Customer Representative Page</title>
	</head>
	<style>
	
		body{
			background: #FFFAF0;
		
		}
		a:link, a:visited {
  background-color: black;
  color: white;
  padding: 14px 25px;
  text-align: center; 
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
		
	
	</style>
	<body>
		<h1>Scholar Commons Customer Representative Page</h1>
		<div>
			<a href='viewEndUsers2.jsp'>View End Users</a><br/>
			<br/>
			<a href='answerQuestions/repCustService.jsp'>Customer Service</a><br/>
			<br/>
			<a href='RepFunctions/EditUser.jsp'>Edit User Account</a><br/>
			<br/>
			<a href='RepFunctions/DeleteUser.jsp'>Delete User Account</a><br/>
			<br/>
			<a href='RepFunctions/DeleteAuction.jsp'>Delete Auction</a><br/>
			<br/>
			
			<a href='../logout.jsp'>Log out</a>
		</div>
	</body>
</html>