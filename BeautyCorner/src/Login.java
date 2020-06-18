import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
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
				HttpSession session = request.getSession();
				session.setAttribute("username",username);
				session.setAttribute("password",pwd);
				String email = result.getString("email");
				int id = result.getInt("id");
				session.setAttribute("email",email);
				session.setAttribute("id_user", id);
				if(username.equals("admin")) response.sendRedirect("http://localhost:8082/Admin/index.jsp");
				else response.sendRedirect("index.jsp");
			} else {
				response.sendRedirect("error_login.jsp");
			}
			
			conn.close(); //close connection
			
		} catch(Exception e) {
			System.out.println(e);
		}
		
	}	
}
