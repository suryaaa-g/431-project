package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteRepServlet
 */
@WebServlet("/DeleteRepServlet")
public class DeleteRepServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRepServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String uname = request.getParameter("username");
		PrintWriter out = response.getWriter();
		
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ru_amazon","root", "PASSWORD");
			    Statement st = con.createStatement();
			    ResultSet rs;
			    rs = st.executeQuery("select * from users where uname='" + uname + "'and acct_type='rep'");
			    
			    if(!rs.next()) {
			    	 out.println("<!DOCTYPE html>");

			 		out.println("<html>");
			 		out.println("<head>");
			 		
			 		out.println("<body>");
			 		
			 		//fix path
			 		out.println("Customer Representative does not exist <div><a href='DeleteRep.jsp'>Try again</a></div>");			 		
			 		
			 		
			 		
			 		out.println("</body>");
			 		out.println("</html>");
			 		
			 		
			 		
			    }
			    
			    else {
					PreparedStatement pst = con.prepareStatement("DELETE FROM users WHERE uname='"+uname+"'");
					pst.executeUpdate();
					
					//fix path
					response.sendRedirect("Admin/AdminMain.jsp");

			    }
		}
		catch(Exception e) {
			
		}
		
	}

}
