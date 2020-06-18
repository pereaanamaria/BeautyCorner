import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import javax.swing.*;

/**
 * Servlet implementation class Register
 */
@WebServlet("/deleteUser")
public class deleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteUser() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int userId = Integer.parseInt(request.getParameter("id"));
		String userId = request.getParameter("id");
		System.out.println(userId);
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beautycorner","root","");
				Statement stat = conn.createStatement();
				String SQL = "DELETE FROM users WHERE id = '"+userId+"' ";
				stat.executeUpdate(SQL);
				JOptionPane.showMessageDialog(null, "Utilizatorul a fost sters!");
				response.sendRedirect("index.jsp");
				conn.close(); //close connection
			
			} catch(Exception e) {
				System.out.println(e);
			}
	
	}
}
