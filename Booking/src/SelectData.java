

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

/**
 * Servlet implementation class SelectData
 */
@WebServlet("/SelectData")
public class SelectData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectData() {
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
				String serviciu = session.getAttribute("serviciu").toString();
				//SimpleDateFormat formatData = new SimpleDateFormat("dd-MMM-yyyy");
				String data = request.getParameter("data");
				/*ArrayList<PrepareForProgramare> pfp = null;
				ArrayList<String> hours;
				
				boolean flagGasit = false;
				
				String ora10 = "available";
				String ora12 = "available";
				String ora14 = "available";
				String ora16 = "available";
				int occupiedHours = 0;
				
				for (PrepareForProgramare p : pfp) {
					if(p.getData().equals(data) && p.getServiciu().equals(serviciu)) {
						flagGasit = true;
						hours = p.getHours();
						for(String h : hours) {
							if(h.equals("10:00")) {
								ora10 = "unavailable";
								occupiedHours++;
							} else if(h.equals("12:00")) {
								ora12 = "unavailable";
								occupiedHours++;
							} else if(h.equals("14:00")) {
								ora14 = "unavailable";
								occupiedHours++;
							} else if(h.equals("16:00")) {
								ora16 = "unavailable";
								occupiedHours++;
							} 
						}
					}
				}
				
				if(occupiedHours == 4) {
					String occupied = "yes";
					session.setAttribute("occupied",occupied);
					response.sendRedirect("selectareData.jsp");
				} else {
					session.setAttribute("ora10",ora10);
					session.setAttribute("ora12",ora12);
					session.setAttribute("ora14",ora14);
					session.setAttribute("ora16",ora16);
					session.setAttribute("data",data);
					response.sendRedirect("selectareOra.jsp");
				}
				
				if(!flagGasit) {
					pfp.add(new PrepareForProgramare(serviciu,data));
				}
					
				*/
				try {
				
					Class.forName("com.mysql.jdbc.Driver");
			
					//Conexiunea se personalizeaza in functie de localhost/database_name, username si password 
					//de la phpMyAdmin
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beautycorner","root","");
					Statement stat = conn.createStatement();
					
					//programari contine: id (auto incrementat), username si email (optional), 
					//nume, telefon, serviciu, data programare, ora si detalii in plus pentru programare
					String sql = "Select * from programari where data='"+data+"' and serviciu='"+serviciu+"'"; //mysql query
					ResultSet result = stat.executeQuery(sql);
					
					String ora10 = "available";
					String ora12 = "available";
					String ora14 = "available";
					String ora16 = "available";
					
					int occupiedHours = 0;
					
					while(result.next()) {
						String ora = result.getString("ora");
						if(ora.equals("10:00")) {
							ora10 = "unavailable";
							occupiedHours++;
						} else if(ora.equals("12:00")) {
							ora12 = "unavailable";
							occupiedHours++;
						} else if(ora.equals("14:00")) {
							ora14 = "unavailable";
							occupiedHours++;
						} else if(ora.equals("16:00")) {
							ora16 = "unavailable";
							occupiedHours++;
						} 
					} 	
					
					if(occupiedHours == 4) {
						String occupied = "yes";
						session.setAttribute("occupied",occupied);
						response.sendRedirect("selectareData.jsp");
					} else {
						session.setAttribute("ora10",ora10);
						session.setAttribute("ora12",ora12);
						session.setAttribute("ora14",ora14);
						session.setAttribute("ora16",ora16);
						session.setAttribute("data",data);
						response.sendRedirect("selectareOra.jsp");
					}
			
					conn.close(); //close connection
			
				} catch(Exception e) {
					response.sendRedirect("index.jsp");
				}
				
				
			}
		} catch (Exception e) {
			response.sendRedirect("notLoggedIn.jsp");
		}
	}

}
