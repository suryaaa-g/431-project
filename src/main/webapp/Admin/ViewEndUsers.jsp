<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<html>
<head>
    <title>List Of End Users</title>
	<style>
			table {
				border: 1px solid black;
				border-collapse: collapse;	
				width: 50%
			}
			table.center {
  				margin-left: auto; 
  				margin-right: auto;
			}
			th, td {
				text-align: left;
				padding: 15px;
			}	
			tr:nth-child(even) {
				background-color: #f2f2f2;
			}
			body{background: #FFFAF0;}
		</style>
</head>
<body>
<h1> List of End Users</h1>
    <%  Class.forName("com.mysql.cj.jdbc.Driver");
  
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ru_amazon","root", "PASSWORD");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from users where acct_type=" +"'end';");%>
        
        <table>
          <tr>
             <th>Username</th>
              <th>Password</th>
               <th>Email</th>
          </tr>
      
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("uname") %></td>
                <td><%=rs.getString("upwd") %></td>
                <td><%=rs.getString("uemail") %></td>
            
            </tr>
            <%}%>
        </table><br>
       <a href='AdminMain.jsp'>Go back to Admin Main Page</a>
        <%con.close();%>
</body>
