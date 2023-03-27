package reps;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddQuestionServlet
 */
@WebServlet("/AddQuestionServlet")
public class AddQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQuestionServlet() {
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
		HttpSession session = request.getSession();
		
PrintWriter out = response.getWriter();
String username = (String)session.getAttribute("user");

out.println(username);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ru_amazon","root", "PASSWORD");
			Statement st = con.createStatement();
			ResultSet rs;
			
			
			
			String q = request.getParameter("question");
			
			if(q.equals("")) {
				
				out.println("<DOCTYPE html>");
				out.println("<html>");
				out.println("<body>");
				out.println("Your question was blank. <div><a href='End/CustomerService/endCustomerService.jsp'>Try again</a></div>");
				out.println("</html>");
				out.println("</body>");
			}
				
				
			else {
				
			
			
				
				PreparedStatement ps = con.prepareStatement("insert into Questions(cust_user, rep_user,date,question) values(?,?,now(),?)");
				ps.setString(1, username);
				ps.setString(2, username);
				ps.setString(3, q);
				
				ps.executeUpdate();
				

				
				
				con.close();
				out.println("Question was Asked...");
				out.println("A customer rep should answer your question soon");

				
			}

				
				
			

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	}


