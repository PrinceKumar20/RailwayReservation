<?php 
session_start();
	if(empty($_SESSION['user_info'])){
		echo "<script type='text/javascript'>alert('Please login');</script>";
	}
$conn = mysqli_connect("localhost","root","","railway");
if(!$conn){  
	echo "<script type='text/javascript'>alert('Database failed');</script>";
  	die('Could not connect: '.mysqli_connect_error());  
}
if (isset($_POST['submit']))
{
$trains=$_POST['trains'];
$sql = "SELECT t_no FROM trains WHERE t_name = '$trains';";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$email=$_SESSION['user_info'];
$query="UPDATE passengers SET t_no='$row[t_no]' WHERE email='$email';";
$sql2 = "SELECT p_id FROM passengers WHERE email = '$email';";
$result2 = mysqli_query($conn, $sql2);
$row2 = mysqli_fetch_assoc($result2);
$sql3 = "SELECT tr_fare FROM trains WHERE t_name = '$trains';";
$result3 = mysqli_query($conn, $sql3);
$row3 = mysqli_fetch_assoc($result3);
$uquery = "INSERT INTO bookings (t_status, t_fare, p_id) VALUES ('Waiting', $row3[tr_fare], $row2[p_id]);";

if(mysqli_query($conn, $uquery) and mysqli_query($conn, $query))
{  
	$message = "Ticket booked successfully!";

}
	else {
		$message="Transaction failed";
	}
	echo "<script type='text/javascript'>alert('$message');</script>";
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Book a ticket</title>
	<link rel="stylesheet" href="style.css">
	<style type="text/css">

html { 
		  background: url(img/bg2.jpg) no-repeat center center fixed; 
		  -webkit-background-size: cover;
		  -moz-background-size: cover;
		  -o-background-size: cover;
		  background-size: cover;
		}
		#booktkt{
			margin-top: 10px;
			margin-left: 100px;
			width: 50%;
			height: 60%;
			padding-top: 50px;
			padding-left: 50px;
			background-color: rgba(255,255,255,0.7);
			border-radius: 75px;
		}
		#journeytext{
			color: black;
			font-size: 28px;
			font-family:"Comic Sans MS", cursive, sans-serif;
		}
		#trains	{
			margin-left: 5px;
			font-size: 15px;
		}
		#datepicker{
			color: black;
			font-size: 19px;	
		}
		#timepicker{
			color: black;
			font-size: 19px;	
		}
		#selecttag{
			color: black;
			font-size: 19px;	
		}
		#nonac{
			margin-left:141px;
		}
		#submit	{
			margin-left: 240px;
			margin-bottom: 30px;
			margin-top: 150px
		}
		#acnonac{
			color: black;
			font-size: 19px;
		}
	</style>
	<script type="text/javascript">
		function validate()	{
			var trains=document.getElementById("trains");
			if(trains.selectedIndex==0)
			{
				alert("Please select your train");
				trains.focus();
				return false;		
			}
		}
	</script>
</head>
<body>
	<?php
		include ('header.php');
	?>
	<div id="booktkt">
	<h1 align="center" id="journeytext">Book your Journey</h1><br/><br/>
	<form method="post" name="journeyform" onsubmit="return validate()">
	<label id = "datepicker"><strong>Select Journey date : </strong></label>
	<input type = "date"/><br></br><br></br>
	<label id = "timepicker"><strong>Select Journey time : </strong></label>
	<input type = "time"/><br></br><br></br>
	<label id = "acnonac"><strong>Choose Class : </strong></label>
		<INPUT type="radio" name="AC" value="ac" align="center" id="ac"/>AC<br></br>
		<INPUT type="radio" name="NONAC" value="nonac" align="center" id="nonac"/>NON AC
	<br></br>
	<label id = "selecttag"><strong>Choose train : </strong></label>
		<select id="trains" name="trains" required>
			<option selected disabled>_______________Click here to select train______________</option>
            <option value="Ajanta" > Ajanta Express : From Manmad To Secunderabad</option>
            <option value="Pushpak" >Pushpak Express : From Lucknow To Mumbai CST</option>
            <option value="Karnataka" >Karnataka Epress : From Bengaluru To New Delhi</option>
            <option value="Rajdhani" >Rajdhani Superfast : From Mumbai Central To Delhi</option>
            <option value="Mysore Express" >Mysore Express : From Mysuru To Bengaluru</option>
            <option value="Taj Expres" >Taj Express : From Hazrat Nizamuddin To Jhansi</option>
            <option value="Tippu Express" >Tippu Express : From Bengaluru To Mysuru</option>
            <option value="Gujarat Mail" >Gujarat Mail (Passenger) : From Ahmedabad To Mumbai Central</option>
            <option value="Deccan Express" >Deccan Express : From Mumbai To Pune</option>
            <option value="Ananya Express" >Ananya Express : From Sealdas To Udaipur</option>
            <option value="Gomti Express" >Gomti Express : From Lucknow NR To New Delhi</option>
            <option value="Jan Shatabdi" >Jan Shatabdi (Super fast) : From Patna To Rachi</option>
            <option value="Shanthi Express" >Shanthi Express : From Indore To Ghandhi Nagar Capital</option>
            <option value="Udyan Express" >Udyan Express : From Mumbai CST To Bengaluru</option>
            <option value="West Coast Express" >West Coast Express : From Chennai To Mangaluru</option>
            <option value="Sanghamitra" >Sanghamitra (Super fast) : From Bengaluru To Patna</option>
            <option value="Poorna Express" >Poorna Express : From Ernakulam To Pune</option>
            <option value="Hussain Tawar Express" >Hussain Tawar Express : From Hyderabad To Mumbai</option>
            <option value="Gyan Ganga" >Gyan Ganga (Passenger) : From Pune To Darbhanga</option>
		<br/><br/>
		<input type="submit" name="submit" id="submit" class="button" />
	</form>
	</div>
	</body>
	</html>