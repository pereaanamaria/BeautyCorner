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

    <title>Programare</title>

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
            <h2 class="section-heading text-uppercase">PROGRAMARE</h2>
            <h3 class="section-subheading text-muted"></h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
          
            <form action="SelectHours" method="post">
              <div class="row">
                <div class="col-lg-12 text-center">

                  <div class="form-group">
                    <select class="form-control" name="ora" required="required" > 
                    	<option value="" disabled selected>Selectează ora programării</option>
                    <%
                    try {
            			session = request.getSession(false);
            			
            			if(session!=null) {
            				
            				String ora10 = session.getAttribute("ora10").toString();
            				String ora12 = session.getAttribute("ora12").toString();
            				String ora14 = session.getAttribute("ora14").toString();
            				String ora16 = session.getAttribute("ora16").toString();
            				
            				if(ora10.equals("unavailable")) {
            					%><option value="" disabled>10:00</option><%
            				} else {
            					%><option value="10:00">10:00</option><%
            				}
            					
            				if(ora12.equals("unavailable")) {
            					%><option value="" disabled>12:00</option><%
            				} else {
            					%><option value="12:00">12:00</option><%
            				}
            					
            				if(ora14.equals("unavailable")) {
            					%><option value="" disabled>14:00</option><%
            				} else {
            					%><option value="14:00">14:00</option><%
            				}
            				
            				if(ora16.equals("unavailable")) {
            					%><option value="" disabled>16:00</option><%
            				} else {
            					%><option value="16:00">16:00</option><%
            				}
            			}
            		} catch (Exception e) {}
                    %>
                    </select>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="nameField" name="nume" type="text" placeholder="Nume Prenume" required="required" data-validation-required-message="Completează numele și prenumele!">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="phoneField" name="phone" type="tel" placeholder="Telefon" required="required" data-validation-required-message="Completează numărul de telefon!">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <textarea class="form-control" id="detaliiText" name="detalii" placeholder="Alte detalii..."></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <input type="submit" value="Programează-te!" class="btn btn-primary btn-xl text-uppercase">
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

  </body>

</html>