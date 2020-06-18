import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SelectHours
 */
@WebServlet("/SelectHours")
public class SelectHours extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectHours() {
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
		try {
			HttpSession session = request.getSession(false);
			if(session != null) {
				
		      	int id_user = Integer.parseInt(session.getAttribute("id_user").toString());
				//int	id_user = 3;
				String serviciu = session.getAttribute("serviciu").toString();
				String data = session.getAttribute("data").toString();
				String ora = request.getParameter("ora");
				String nume = request.getParameter("nume");
				String telefon = request.getParameter("phone").toString();
				String description = request.getParameter("detalii");
		
				try {
					
					Class.forName("com.mysql.jdbc.Driver");
			
					//Conexiunea se personalizeaza in functie de localhost/database_name, username si password 
					//de la phpMyAdmin
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beautycorner","root","");
					Statement stat = conn.createStatement();
					
					String sql = "Insert into programari (id_user,nume,telefon,serviciu,data,ora,description) values ('"+id_user+"','"+nume+"','"+telefon+"','"+serviciu+"','"+data+"','"+ora+"','"+description+"')";
					stat.executeUpdate(sql);
					
					response.sendRedirect("progSuccessfully.jsp");
								
					conn.close(); //close connection
					
				} catch(Exception e) {
					System.out.println(e);
				}
			}
		} catch (Exception e) {
			response.sendRedirect("notLoggedIn.jsp");
		}
	}
}
