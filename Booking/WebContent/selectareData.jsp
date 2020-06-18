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

    <title>Programare Data</title>

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
      </div>
    </nav>
    
    <!-- Programare -->
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">PROGRAMARE DATĂ</h2>
            <h3 class="section-subheading text-muted"></h3>
          </div>
        </div>
        
        <% 
        	try{
        		session = request.getSession(false);
        		
        		if(session!=null) {
        			String occupied = session.getAttribute("occupied").toString();	
        			if(occupied != null && occupied.equals("yes")) {
        			%>
        				<div class="row">
          					<div class="col-lg-12 text-center">
            					<h2 class="section-heading text-center">Upss..</h2>
            					<h3 class="section-subheading text-center">Se pare că în data aceasta totul este rezervat la serviciul selectat de dumneavoastră.</h3>
            					<h3 class="section-subheading text-muted"></h3>
          					</div>
        				</div>
        			<%
        				session.removeAttribute("occupied");
        			}
        		}
        		
        	} catch(Exception e) {}
        %>
        
        <div class="row">
          <div class="col-lg-12">
            <form action="SelectData" method="post">
              <div class="row">
                <div class="col-md-6">

                  <div class="form-group">
                    <input class="form-control" id="datePicker" name="data" type="date" placeholder="Data" required="required" data-validation-required-message="Alege o zi!">
                  </div>
                  </div>
                <div class="col-md-6">
                  <input type="submit" value="Continuare" class="btn btn-primary btn-xl text-uppercase">
                </div>

              </div>
            </form>
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

    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>

    <script>

      var datePicker = document.getElementById('datePicker');

      datePicker.addEventListener("input", function(e) {
        var selectedDate = new Date( e.target.value );
        var currentDate = new Date();

      });

    </script>

  </body>

</html>