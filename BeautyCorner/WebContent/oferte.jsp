<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*, java.io.*, javax.servlet.*, java.lang.*, java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>

	<meta charset="utf-8">
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Oferte</title>

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

    <!-- Navigatie -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.jsp">Beauty Corner</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.jsp#services">Servicii</a>
            </li>
             <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownServices" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Prețuri
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownServices">
                <a class="dropdown-item" href="machiaj.jsp">Machiaj</a>
                <a class="dropdown-item" href="coafura.jsp">Coafură</a>
                <a class="dropdown-item" href="oferte.jsp">Oferte</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.jsp#about">Despre</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.jsp#team">Echipa</a>
            </li>
            
            <% 
         	try {
         	session = request.getSession(false);
         	String username = session.getAttribute("username").toString();
         	int id_user = Integer.parseInt(session.getAttribute("id_user").toString());
    		
         	if (session != null && (!username.equals("") && username!=null)) {
            		
            %>
            	<li class="nav-item">
           		<a class="nav-link js-scroll-trigger" href="http://localhost:8081/Booking/index.jsp?id_user=<%=id_user%>">Programare</a>
            	</li>
            
          		<li class="nav-item">
           		<a class="nav-link js-scroll-trigger" href="profil.jsp">Profil</a>
           		</li>
            
            	<li class="nav-item">
            	<a class="nav-link js-scroll-trigger" href="logout.jsp">Logout</a>
            	</li>
           		
            <% } else { %>
            	<li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
                </li>
                
                <li class="nav-item">
          		<a class="nav-link js-scroll-trigger" href="register.jsp">Register</a>
             	</li>	
            		
             <%  } 
         	} catch(Exception e) { %>
             	
             	<li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
                </li>
                
                <li class="nav-item">
          		<a class="nav-link js-scroll-trigger" href="register.jsp">Register</a>
             	</li>	
             
             <%} %>
             
          </ul>
        </div>
      </div>
    </nav>

    <!-- Servicii -->
    <section id="preturi">
    <div class="container-table100">
      <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Oferte</h2>
            <h3 class="section-subheading text-muted">Salonul Beauty Corner oferă următoarele pachete de servicii promoționale:</h3>
      </div>
      <div class="wrap-table100">
        <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1" style="text-align: center; width: 33%;">Pachet</th>
                  <th class="cell100 column2" style="text-align: center; width: 33%;">Pret</th>
                  <th class="cell100 column3" style="text-align: center; width: 33%;">Durata</th>
                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <table>
              <tbody>
                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Pachet schimbare look</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">200 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">120 minute</td>
                </tr>

                <tr class="row100 body">
                  <td style="text-align: center;" colspan=3> * Pachetul include: vopsit + spălat + tuns + uscat + aranjat</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Pachet ocazie (zi)</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">150 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">120 minute</td>
                </tr>

                <tr class="row100 body">
                  <td style="text-align: center;" colspan=3> * Pachetul include: coafat + machiaj de zi + aplicare gene false</td>
                </tr>

                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Pachet ocazie (seară)</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">300 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">150 minute</td>
                </tr>

                <tr class="row100 body">
                  <td style="text-align: center;" colspan=3> * Pachetul include: coafat + machiaj de seară + aplicare gene false</td>
                </tr>


                <tr class="row100 body">
                  <td class="cell100 column1" style="text-align: center; width: 33%;">Pachet mireasă</td>
                  <td class="cell100 column2" style="text-align: center; width: 33%;">400 RON</td>
                  <td class="cell100 column3" style="text-align: center; width: 33%;">180 minute</td>
                </tr>

                <tr class="row100 body">
                  <td style="text-align: center;" colspan=3> * Pachetul include: coafat + machiaj de mireasă + aplicare gene false</td>
                </tr>

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

</html>