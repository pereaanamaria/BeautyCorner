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

    <title>Beauty Corner</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/agency.css" rel="stylesheet">
    <link href="css/half-slider.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigatie -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Beauty Corner</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Servicii</a>
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
              <a class="nav-link js-scroll-trigger" href="#about">Despre</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">Echipa</a>
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

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in">Bine ați venit la salonul de înfrumusețare</div>
          <div class="intro-heading text-uppercase">BEAUTY CORNER</div>
          <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">AFLĂ MAI MULTE</a>
        </div>
      </div>
    </header>

    <!-- Servicii -->
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Serviciile noastre</h2>
            <h3 class="section-subheading text-muted">Conceptul nou de frumusețe este cel care îmbină armonios elementele specifice eleganței clasice cu tendințele inovative în materie de stilizare. Salonul Beauty Corner se diferențiază pe piață prin identificarea cu succes a nevoilor fiecărei cliente și urmărirea obținerii satisfacției deplină a acesteia. Nu ezita să ne contactezi în orice moment pentru a te simți ca o vedetă!</h3>
            <p style="text-align: justify; text-justify: inter-word;">Indiferent de natura serviciilor dorite, respectiv coafură, machiaj sau combinarea acestora în cadrul unor oferte avantajoase, garantăm folosirea produselor de cea mai bună calitate și măiestria personalului bine instruit în prestarea acestor servicii. În plus, experiența ta în salonul Beauty Corner va fi mereu una placută prin prisma căldurii cu care vei fi primită si consiliată de membrii <a href="#team">echipei noastre</a>.</p>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-4">
            <a href="machiaj.jsp">
            <img class="img-fluid d-block mx-auto" src="img/logos/machiaj.png" alt="">
            <h4 class="service-heading">Machiaj</h4>
            </a>
            <p style="text-align: justify; text-justify: inter-word;" class="text-muted">Fie că te pregătești pentru activitățile de rutină din timpul zilei, de provocările vieții profesionale sau de un eveniment special din viața ta, cum ar fi nunta, un make-up profesional îți poate pune în valoare frumusețea naturală. Un machiaj de zi, de seară sau chiar unul potrivit celor mai pretențioase gale pot fi realizate de specialista Beauty Corner, pregatită să îți recomande cele mai noi stiluri de make-up pentru fiecare situație în parte. Clasic sau modern, neutru sau străucitor – machiajul te va uimi de fiecare dată!</p>
          </div>
          <div class="col-md-4">
            <a href="coafura.jsp">
            <img class="img-fluid d-block mx-auto" src="img/logos/hair.png" alt="">
            <h4 class="service-heading">Coafură</h4></a>
            <p style="text-align: justify; text-justify: inter-word;" class="text-muted">Pentru o zi petrecută la birou, o ieșire în oraș cu prietenele, un eveniment special sau pur și simplu pentru că îți dorești să faci o schimbare, îți propunem servicii moderne de coafură, prestate de stilista noastră pregătită să te surprindă în orice moment. O coafură, o tunsoare sau o nouă culoare a părului, alese special pentru a se potrivi fizionomiei tale, vor fi rezultatul de succes al cerințelor tale. La Beauty Corner, coafurile de zi sau de seară, precum si cele special realizate de noi pentru evenimente inedite, îți vor asigura o prezența de invidiat.</p>
          </div>
          <div class="col-md-4">
            <a href="oferte.jsp">
            <img class="img-fluid d-block mx-auto" src="img/logos/events.png" alt="">
            <h4 class="service-heading">Oferte</h4> 
            </a>
            <p style="text-align: justify; text-justify: inter-word;" class="text-muted">Dacă participi la un eveniment deosebit, cum ar fi o gală, un banchet, un botez, o nunta, sau ești chiar tu fericita mireasă, Beauty Corner este locul potrivit! Deoarece dorim să îți fim alături în cele mai importante momente din viața ta, am conceput special pentru tine o varietate de pachete care cuprind atât machiajul, cât și coafura, pentru ca tu să te poți bucura de mai multe dintre serviciile noastre la un preț avantajos. Echipa noastră de profesioniști te va face să te simți răsfățată, apreciată și se va asigura că vei atrage toate privirile.</p>

          </div>
        </div>
      </div>
    </section>

    <!-- Portfoliu -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('https://beuhairsalon.com/wp-content/uploads/2017/09/beuhair-interior-11-min.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Recepția</h3>
              <p></p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('https://beuhairsalon.com/wp-content/uploads/2017/09/beuhair-interior-9-min.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Spațiul de machiaj</h3>
              <p></p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('https://beuhairsalon.com/wp-content/uploads/2017/09/beuhair-interior-3-min-cropped.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Spațiul de coafură</h3>
              <p></p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

      <section class="py-5">
      <div style="text-align: center;" class="container">
        <h1>Aruncă o privire în salonul nostru!</h1>
        <p></p>
      </div>
    </section>

    <!-- Despre -->
    
 <section class="bg-light" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Despre</h2>
            <h3 class="section-subheading text-muted">Mai mult decât un simplu salon, Beauty Corner este o mică oază de liniște în mijlocul junglei urbane, în care te poți bucura de un ambient plăcut atunci când acorzi timp aspectului tău și de unde pleci de fiecare dată cu zâmbetul pe buze. Îți vom aduce mereu ultimile tendințe în beauty cât mai aproape de tine, pentru ca tu să ai parte de cele mai bune servicii de înfrumusețare. <br> <br>
            Te așteptăm să ne faci o vizită!</h3>
          </div>
          <div class="col-xl-9 mx-auto">
            <div class="cta-inner text-center rounded">
              <h3 class="section-heading mb-5">
                <span class="section-heading-upper">Program</span>
              </h3>
              <ul style="width:50%;" class="list-unstyled list-hours mb-5 text-left mx-auto">
                <li class="list-unstyled-item list-hours-item d-flex">
                  Luni
                  <span class="ml-auto">10:00 - 18:00</span>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Marți
                  <span class="ml-auto">10:00 - 18:00</span>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Miercuri
                  <span class="ml-auto">10:00 - 18:00</span>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Joi
                  <span class="ml-auto">10:00 - 18:00</span>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Vineri
                  <span class="ml-auto">10:00 - 18:00</span>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Sâmbătă
                  <span class="ml-auto">10:00 - 18:00</span>
                </li>
                <li class="list-unstyled-item list-hours-item d-flex">
                  Duminică
                  <span class="ml-auto">10:00 - 16:00</span>
                </li>
              </ul>
              <p class="address mb-5">
                <h3 class="section-heading mb-5">
                  <span class="section-heading-upper">Adresă</span>
                </h3>
                <em>
                  <strong>Strada Liniștei, nr. 15</strong>
                  <br>
                  Timișoara, România
                </em>
                <br>
                <p style="margin-top: 20px; text-align: center;"><iframe src="https://maps.google.com/maps?q=timisoara%20strada%20linistei&t=&z=13&ie=UTF8&iwloc=&output=embed" width="450" height="400" frameborder="0"></iframe></p>
             
              <h3 class="section-heading mb-5">
                <span class="section-heading-upper">Contactează-ne!</span>
              </h3>
              <p>
                <a href="tel:0256 210 812" class="link-top-telefon"><i class="fa fa-phone"></i> 0256 210 812 </a>
              </p>
              <p>
                <a href="mailto:salon_beauty_corner@yahoo.com" class="link-top-email"><i class="fa fa-envelope"></i> salon_beauty_corner@yahoo.com</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Echipa -->
    <section id="team">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Echipa noastră</h2>
            <h3 class="section-subheading text-muted">Îți stăm la dispoziție cu un personal atent selecționat, aflat într-o înaltă și continuă pregătire profesională. Fă cunoștință cu echipa noastră de stiliști, care te va ajuta să îți redescoperi frumusețea naturală și look-ul care ți se potrivește cel mai bine.</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="img/team/1.jpg" alt="">
              <h4>Andra Seserman</h4>
              <p class="text-muted">Make-up Artist</p>
              <p class="text-muted">"Machiajul nu ar trebui niciodată să fie folosit pentru a te ascunde, ci pentru a îți pune în evidență frumusețea."</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="https://www.instagram.com/andraelise/" target="_blank">
                    <i class="fab fa-instagram"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="https://www.facebook.com/andra.seserman" target="_blank">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="img/team/2.jpg" alt="">
              <h4>Alexandra Popa</h4>
              <p class="text-muted">Hairstylist</p>
              <p class="text-muted">"O femeie care decide să își schimbe coafura este pe cale să își schimbe viața."</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="https://www.instagram.com/allepopa/" target="_blank">
                    <i class="fab fa-instagram"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="https://www.facebook.com/alexandra.popa.7355" target="_blank">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
       </div>
    </section>

    <!-- Parteneri -->
    <section class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Parteneri</h2>
            <h3 class="section-subheading text-muted">Principalul nostru obiectiv este acela de a oferi tuturor clientelor servicii de înaltă calitate, garantate de colaborarea cu cele mai bune produse existente pe piață, aparținând unor branduri recunoscute la nivel internațional.</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <a href="https://www.cupio.ro" target="_blank">
              <img class="img-fluid d-block mx-auto" src="img/logos/cupio.png" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="https://www.londaprofessional.com/" target="_blank">
              <img class="img-fluid d-block mx-auto" src="img/logos/londa.png" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="https://www.lorealparis.ro" target="_blank">
              <img class="img-fluid d-block mx-auto" src="img/logos/loreal.png" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="https://www.makeupforever.com/int/en-int" target="_blank">
              <img class="img-fluid d-block mx-auto" src="img/logos/make-up-for-ever-logo.png" alt="">
            </a>
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