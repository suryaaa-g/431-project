<!DOCTYPE html>
<html>
   <head>
      <title>Customer Representative Creation</title>
   </head>
   <style>
   
   	body{background: #FFFAF0;}
   </style>
   <body>
   <h1>Customer Representative Creation</h1>
     <form action="../../RepRegisterServlet" method="POST">
       Username:	<input type="text" name="username"/> <br/>
       Password:	<input type="password" name="password"/> <br/>
       Email:		<input type="email" name="email"/> <br/>
       <input type="submit" value="Submit"/>
       <div>
       		<a href='../AdminMain.jsp'>Go back to Admin Main Page</a>
       </div>
     </form>
   </body>
</html>