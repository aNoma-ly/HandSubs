<?php
	
	
	$con = mysqli_connect('127.0.0.1','root','');
	
	if(!$con)
	{
		echo 'Not Connected To Server';
	}
	if(!mysqli_select_db($con,'manage_subs_database'))
	{
		echo 'Database Not Selected';
	}
	
	$SubName = $_POST['subscriptionName'];
	$Cycle = $_POST['cycle'];
	$Price = $_POST['price'];
	$StartDate = $_POST['startDate'];
	$ExpiredDate = $_POST['expiredDate'];
	$Status = $_POST['status'];
	
	$sql = "INSERT INTO subscriptions (Subscription_name,Billing_cycle,Price,Start_date,Expired_date,Status) VALUES ('$SubName','$Cycle','$Price','$StartDate','$ExpiredDate','$Status')";

	if(!mysqli_query($con,$sql))
	{
		echo 'Not Inserted';
		
	}
	else
	{
		echo 'Inserted';
		//echo  "<script>window.location.href='displayList.php'</script>";
	}
	
	//header("refresh:10; url=index.html");
	
	?>