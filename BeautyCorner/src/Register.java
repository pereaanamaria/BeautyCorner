

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

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
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String pwdr = request.getParameter("pwd_repeat");
		
		if(!pwd.equals(pwdr)) {
			response.sendRedirect("wrong_pass_confirm.jsp");
		} else {
		
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
			
				//Conexiunea se personalizeaza in functie de localhost/database_name, username si password 
				//de la phpMyAdmin
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beautycorner","root","");
				Statement stat = conn.createStatement();
				//users e tabelul pe care l-am folosit
				String sql = "Select * from users where username='"+username+"' and password='"+pwd+"'"; //mysql query
				ResultSet result = stat.executeQuery(sql);
			
				if(result.next()) {
					response.sendRedirect("error_register.jsp");
				} else {
					String sql1 = "Insert into users (username,email,password) values ('"+username+"','"+email+"','"+pwd+"')";
					stat.executeUpdate(sql1);
					
					HttpSession session = request.getSession();
					session.setAttribute("username",username);
					session.setAttribute("password",pwd);
					session.setAttribute("email",email);
					
					String sql2 = "Select * from users where username='"+username+"'"; 
					ResultSet res = stat.executeQuery(sql2);
					if(res.next()) {
						int id = res.getInt("id");
						session.setAttribute("id_user",id);
					}
					
					response.sendRedirect("index.jsp");
				}
			
				conn.close(); //close connection
			
			} catch(Exception e) {
				System.out.println(e);
			}
		
		}
	}
}