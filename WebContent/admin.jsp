<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!--  <?php
    
    session_start();
    //if($_SESSION["admin"]==""){ //the user is not logged in as admin but is trying to open thi page
?>  

<?php
$servername = "localhost";
$dBUsername = "root";
$dBPassword = "";
$dBName = "mydb";

$conn = mysqli_connect($servername, $dBUsername, $dBPassword, $dBName);

if (!$conn) {
    die("Connection failed: ".mysqli_connect_error());
}  
?>
-->
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
        <a class="navbar-brand js-scroll-trigger" href="index.html">Beauty Corner</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
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
                  <th class="cell100 column2" style="text-align: center; width: 33%;">Telefon</th>
                  <th class="cell100 column3" style="text-align: center; width: 33%;">Sterge utilizator</th>
                </tr>
              </thead>
            </table>
          </div>
          <div class="table100-body js-pscroll">
            <table>
                <!--  <?php 
                    $res=mysqli_query($conn,"SELECT * FROM users");
                ?>-->
              <tbody>
                <!--  <?php
                $contor=1;
                while($row=mysqli_fetch_array($res))
                {
                    if($row['usertype'] == 0)
                    {
                        echo '><tr class="row100 body">';
                        echo '<td class="cell100 column1" style="text-align: center; width: 33%;">'; echo $row["username"]; echo '</td>';
                        echo '<td class="cell100 column2" style="text-align: center; width: 33%;">'; echo $row["email"]; echo '</td>';
                        echo '<td class="cell100 column3" style="text-align: center; width: 33%;">'; ?> <a href="includes/deleteuser.php?id=<?php echo $row['id']; ?>"> <i class="fa fa-trash"></i> </a> <?php echo '</td>';
                        echo '</tr>';
                        $contor=$contor + 1;
                    }  
                }
                ?> -->                 
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
               <!--   <?php 
                    $res=mysqli_query($conn,"SELECT * FROM programari ORDER BY data, ora, serviciu ASC");
                ?> -->
              <tbody>
              <!--    <?php
                $contor=1;
                while($row=mysqli_fetch_array($res))
                {
                        echo '<tr class="row100 body">';
                        echo '<td class="cell100 column1" style="text-align: center; width: 16,6%;">'; echo $row["nume"]; echo '</td>';
                        echo '<td class="cell100 column2" style="text-align: center; width: 16,6%;">'; echo $row["telefon"]; echo '</td>';
                        echo '<td class="cell100 column3" style="text-align: center; width: 16,6%;">'; echo $row["serviciu"]; echo '</td>';
                        echo '<td class="cell100 column4" style="text-align: center; width: 16,6%;">'; echo $row["data"]; echo '</td>';
                        echo '<td class="cell100 column5" style="text-align: center; width: 16,6%;">'; echo $row["ora"]; echo '</td>';
                        echo '<td class="cell100 column6" style="text-align: center; width: 16,6%;">'; ?> <a href="includes/deleteprogramare.php?id=<?php echo $row['id_programare']; ?>"> <i class="fa fa-trash"></i> </a> <?php echo '</td>';
                        echo '</tr>';
                        $contor=$contor + 1;
                }
                ?>  -->                
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
            <span class="copyright">Copyright &copy; Beauty Corner 2018</span>
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
          <div class="col-md-4">
            <span class="copyright">Andra Seserman + Alexandra Popa</span>
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
