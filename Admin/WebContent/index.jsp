<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

    try
    {
    	// create our mysql database connection
    	Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beautycorner","root","");

      	// create the java statement
      	Statement st = conn.createStatement();
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
    body { background-image:url("pink.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:}
    </style>

    <meta charset="utf-8">
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">

    <!-- Custom styles for this template -->
    <link href="css/agency.css" rel="stylesheet">

  </head>

  <body id="page-top">
   <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="http://localhost:8082/Admin/index.jsp">Beauty Corner</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
          	<li class="nav-item">
            	<a class="nav-link js-scroll-trigger" href="logout.jsp">Logout</a>
            </li>
          </ul>
        </div>
      </div>
  </nav>

 <!-- ADMINISTRARE -->
  
  <section id="preturi">
    <h1 class="section-heading text-uppercase" style="text-align: center;">ADMIN</h1><br>
    <div class="container-table100">
      <div class="wrap-table100">
            <div class="col-lg-12 text-center">
                <h2 class="section-subheading text-muted">ADMINISTRARE UTILIZATORI</h2><br>
            </div>
        <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1" style="text-align: center; width: 33%;">Nume</th>
                  <th class="cell100 column2" style="text-align: center; width: 33%;">Email</th>
                  <th class="cell100 column3" style="text-align: center; width: 33%;">Actiune</th>
                </tr>
              </thead>
            </table>
          </div>
          <div class="table100-body js-pscroll">
            <table>
                <%
                String queryUsers = "SELECT * FROM users";
                %>
              <tbody>
                <%
                ResultSet rs1 = st.executeQuery(queryUsers);
                while (rs1.next())
                {   
                	int userid = rs1.getInt("id");
                	//System.out.println(userid);
                	
               		 
                    if(rs1.getString("username").equals("admin"))
                    	continue;%>
                
                	<tr class="row100 body">
                	<td class="cell100 column1" style="text-align: center; width: 33%;"><%=rs1.getString("username")%></td>
                    <td class="cell100 column2" style="text-align: center; width: 33%;"><%=rs1.getString("email")%></td>
                    <td class="cell100 column3" style="text-align: center; width: 33%;"> 
                    	<form method="post" action="http://localhost:8080/BeautyCorner/deleteUser">
                    		<input type="hidden" name="id" id="userId" value="<%=userid%>"/>
                    		<input type="submit" value="Sterge utilizator" class="btn btn-primary">
                    	</form>
                    </td>
                    </tr>   
                <%
                }
				%>     
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <div class="wrap-table100" style="width: 900px">
            <div class="col-lg-12 text-center">
                <h2 class="section-subheading text-muted">ADMINISTRARE PROGRAMĂRI</h2><br>
            </div>
        <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1" style="text-align: center; width: 16,6%;">Nume</th>
                  <th class="cell100 column2" style="text-align: center; width: 16,6%;">Telefon</th>
                  <th class="cell100 column3" style="text-align: center; width: 16,6%;">Serviciu</th>
                  <th class="cell100 column4" style="text-align: center; width: 16,6%;">Data</th>
                  <th class="cell100 column5" style="text-align: center; width: 16,6%;">Ora</th>
                  <th class="cell100 column6" style="text-align: center; width: 16,6%;">Anuleaza</th>
                </tr>
              </thead>
            </table>
          </div>
          <div class="table100-body js-pscroll">
            <table>
               <%
                String queryProgramari = "SELECT * FROM programari";
               %>
              <tbody>
                <%
                ResultSet rs2 = st.executeQuery(queryProgramari);
                while (rs2.next())
                {   
                	int programareid = rs2.getInt("id_programare");
                	//session.setAttribute("deleteprogramare",programareid);
                %>
                	<tr class="row100 body">
                	<td class="cell100 column1" style="text-align: center; width: 16,6%;"><%=rs2.getString("nume")%></td>
                    <td class="cell100 column2" style="text-align: center; width: 16,6%;"><%=rs2.getString("telefon")%></td>
                    <td class="cell100 column3" style="text-align: center; width: 16,6%;"><%=rs2.getString("serviciu")%></td>
                    <td class="cell100 column4" style="text-align: center; width: 16,6%;"><%=rs2.getString("data")%></td>
                    <td class="cell100 column5" style="text-align: center; width: 16,6%;"><%=rs2.getString("ora")%></td>
                    <td class="cell100 column6" style="text-align: center; width: 16,6%;"> 
                    	<form method="post" action="http://localhost:8081/Booking/deleteProgAdmin">
                    		<input type="hidden" name="id" id="progId" value="<%=programareid%>"/>
                    		<input type="submit" value="Sterge programare" class="btn btn-primary">
                    	</form></td>
                    </tr>   
                <%
                }
                st.close();
    			}
    			catch (Exception e)
    			{
    				System.out.println(e);
    			}
				%>                
              </tbody>
            </table>
          </div>
        </div>
      </div>

    </div>
  </section>


  <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; Beauty Corner 2019</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="https://twitter.com/beautycorner_17">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.facebook.com/Beauty-Corner-1721063864855508/">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.instagram.com/explore/locations/228446904/beauty-corner/">
                  <i class="fab fa-instagram"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>

  </body>
