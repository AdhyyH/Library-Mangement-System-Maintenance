<?php
	$conn = mysqli_connect("localhost", "root", "", "lms_db");
	
	if(!$conn) 
	{ 
		die(" Connection Error "); 
	}
	
	$query = "SELECT * FROM librarian
				LIMIT 6";
	
	$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>List of Librarian</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/logo.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

<style>

	input[type=text] 
	{
	  width: 100%;
	  padding: 10px;
	}
	
	table
	{
		width: 100%;
	}
  
	#list th, #list td 
	{
	  border: 3px solid black;
	  border-collapse: collapse;
	  background: white;
	  padding: 10px;
	}

	#list th 
	{
	  background-color: #ffd503;
	  color: white;
	}
	
	#searchButton
	{
	  width: 100%;
	  font-size: 2px;
	  padding: 20px;
	  border: 1px solid #ddd;
	}
	
	#backButton
	{
		border-radius: 12px;
		padding: 15px 20px;
		font-color: black;
		background: #ffe033;
		text-align : center;
		font-size : 20px;
	}
	
	#backButton:hover
	{
		background: black;
		color: #ffe033;
	}
	
	#greenlinks:link, #greenlinks:visited 
	{
	  background-color: #00aea6;
	  color: white;
	  padding: 6px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  border-radius: 4px;
	}

	#greenlinks:hover, #greenlinks:active 
	{
	  background-color: #ffd600;
	  color: black;
	}

</style>
</head>

<body>

<!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container-fluid">

      <div class="row justify-content-center align-items-center">
        <div class="col-xl-11 d-flex align-items-center justify-content-between">
          <h1 class="logo"><a href="../login/librarian.php">Library Management System</a></h1>
          <!-- Uncomment below if you prefer to use an image logo -->
          <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

          <nav id="navbar" class="navbar">
            <ul>
              <li><a href="../login/librarian.php">Home</a></li>
			  <li class="dropdown"><a href="#"><span>Menu</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                  <li><a href="../manage_book_record/manage_book_record.php">Manage Book Record</a></li>
                  <li><a href="ManageUser.php">Manage User</a></li>
				  <li><a href="../manageFineModule/manageFineModule.php">Manage Fine</a></li>
				  <li><a href="../manage_reservation/managereserv.php">Manage Reservation</a></li>
				  <li><a href="../viewReport/ReportMain.php">Report</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><span>Profile</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
		  <li><a href="../login/logout_controller.php?logout">Log Out</a></li>
                </ul>
              </li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
          </nav><!-- .navbar -->
        </div>
      </div>

    </div>
  </header><!-- End Header -->

 <!-- ======= hero Section ======= -->
  <section id="hero">
    <div class="hero-container">

        <ol id="hero-carousel-indicators" class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <div class="carousel-item active" style="background-image: url(assets/img/book/book1.jpg)">
            <div class="carousel-container">
              <div class="container">
                <h2 class="animate__animated animate__fadeInDown">List of Librarians</h2>
                <p class="animate__animated animate__fadeInUp"></p>
				
				<center>

					<table>
					
					  <!-- TitleColumn -->
					  <tr id="list">
						<td style="background-color:#00aea6; color: white"><b>Librarian ID</b></td>
						<td style="background-color:#00aea6; color: white"><b>Name</b></td>
						<td style="background-color:#00aea6; color: white"><b>Phone Number</b></td>
						<td style="background-color:#00aea6; color: white"><b>Email</b></td>
						<td colspan="1" style="background-color:#00aea6; color: white"><b>ACTIONS</b></td>
					  </tr>
					  
					  <?php
						while($row=mysqli_fetch_assoc($result))
						{
							$librarianID = $row['librarianID'];
							$name = $row['name'];
							$username = $row['username'];
							$password = $row['password'];
							$phoneNum = $row['phoneNum'];
							$Email = $row['Email'];
					  ?>
						<tr id="list">
							<td><?php echo $librarianID ?></td>
							<td><?php echo $name ?></td>
							<td><?php echo $phoneNum ?></td>
							<td><?php echo $Email ?></td>
							<td><a id="greenlinks" href="LibrarianListDetails.php?GetLibrarian=<?php echo $librarianID ?>">View Details</a></td>
						</tr>
					  <?php
						}
					  ?>
					</table><br>
					
					<input type="button" id="backButton" name="Back" value="Back" onclick="location.href='./ManageUser.php'"><br><br>
				</center>
              </div>
            </div>
          </div>
        </div>
    </div>
  </section><!-- End Hero Section -->

</div>

<!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>LIBRARY MANAGEMENT SYSTEM</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
      -->
        Designed by <a href="https://bootstrapmade.com/" style="color:#3CB371;" >BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>



</body>

</html>