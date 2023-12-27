<?php
	$conn = mysqli_connect("localhost", "root", "", "lms_db");
	
	if(!$conn) 
	{ 
		die(" Connection Error "); 
	} 
	
	if(isset($_POST['submitButton']))
	{
        $librarianID = $_POST['librarianID'];
		$name = $_POST['name'];
		$username = $_POST['username'];
		$password = $_POST['password'];
		$Email = $_POST['Email'];
        $phoneNum = $_POST['phoneNum'];
		
		$query = "INSERT INTO librarian (librarianID, name, username, password, Email, phoneNum)
					VALUES ('$librarianID', '$name', '$username', '$password', '$Email', '$phoneNum')";

		$result = mysqli_query($conn, $query);
		
		if($result)
		{
			echo "Data successfully added into the system";
			header("location:LibrarianList.php");
		}
		else
		{
			die("Error inserting data !  ".$conn->error);
			header("location:AddLibrarian.php");
		}
	}
	
	else
	{
		header("location:AddLibrarian.php");
	}
?>