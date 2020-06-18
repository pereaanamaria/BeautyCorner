import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.Statement;
//import javax.swing.JOptionPane;

import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

//import javax.swing.*;

/**
 * Servlet implementation class deleteProg
 */
@WebServlet("/deleteProg")
public class deleteProg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteProg() {
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
		int progId = Integer.parseInt(request.getParameter("id"));
		
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beautycorner","root","");
				Statement stat = conn.createStatement();
				String SQL = "DELETE FROM programari WHERE id_programare='"+progId+"'";
				stat.executeUpdate(SQL);
				response.sendRedirect("deletedProg.jsp");
				conn.close(); //close connection
			
			} catch(Exception e) {
				System.out.println(e);
			}
		  
	}
}
