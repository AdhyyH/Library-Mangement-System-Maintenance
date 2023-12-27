<?php
	$conn = mysqli_connect("localhost", "root", "", "lms_db");
	
	if(!$conn) 
	{ 
		die(" Connection Error "); 
	} 
	
	if(isset($_POST['submitButton']))
	{
		$Borrower_ID = $_POST['Borrower_ID'];
		$Borrower_name = $_POST['Borrower_name'];
		$Borrower_type = $_POST['Borrower_type'];
		$Borrower_IC_num = $_POST['Borrower_IC_num'];
		$Borrower_Phone_num = $_POST['Borrower_Phone_num'];
		$Borrower_email = $_POST['Borrower_email'];
		$Borrower_Address = $_POST['Borrower_Address'];
		$nameBook = $_POST['nameBook'];
		$isbn = $_POST['isbn'];
		$borrowDate = $_POST['borrowDate'];
		$borrowRet = $_POST['borrowRet'];
		
		$query = "INSERT INTO borrower (Borrower_ID, Borrower_name, Borrower_type, Borrower_IC_num, Borrower_Phone_num, Borrower_email, Borrower_Address, nameBook, isbn, borrowDate, borrowRet)
					VALUES ('$Borrower_ID', '$Borrower_name', '$Borrower_type', '$Borrower_IC_num', '$Borrower_Phone_num', '$Borrower_email', '$Borrower_Address', '$nameBook','$isbn', '$borrowDate', '$borrowRet')";

		$result = mysqli_query($conn, $query);
		
		if($result)
		{
			echo "Data successfully added into the system";
			header("location:BorrowerList.php");
		}
		else
		{
			die("Error inserting data !  ".$conn->error);
			header("location:AddBorrower.php");
		}
	}
	
	else
	{
		header("location:AddBorrower.php");
	}
?>