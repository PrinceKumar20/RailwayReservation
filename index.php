<HTML>
<HEAD>
<TITLE>2A Journey</TITLE>
<style type="text/css">
@import url(style.css);
#logo	{ 
	border-radius: 150px;
    border: 1px solid blue; 
    width: 250px;
    height: 250px; 
}

html { 
  background: url(img/wallpaper1.JPG) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
#main	{
		width:100%;
		height: 100%;
		margin: 0 auto;
		margin-top: 0px;
		color: #008011;
    	background-color: rgba(255,255,255, 0.2);
	}

img#logo{
-webkit-filter: drop-shadow(10px 10px 10px cyan));
       filter: drop-shadow(8px 8px 10px cyan);
}

</style>
</HEAD>
<BODY>
<?php 
session_start();
include("header.php"); ?>
<div id="main"><div id="logo">
<A HREF="index.php">
<IMG SRC="img/logo.jpg" alt="Home" id="logo" width="150" height="150"></IMG>
</A></div>

<h1 id = "cname" align="center"><p style = "font-family:georgia,garamond,serif;font-size:65px;font-style:italic;color:black;text-shadow:3px 4px yellow"><strong>Welcome to 2A Journey Fam!</strong></p></h1><br/><br/><br/>

<h2 id = "" align="center"><p style = "font-family:georgia,garamond,serif;font-size:40px;font-style:italic;color:black;text-shadow:2px 2px yellow"><strong>We care about you.....</strong></p></h2>

<br/><br/><br/>
<?php
if(isset($_SESSION['user_info']))
  echo '<h3 align="center"><a href="booktkt.php"><p style = "font-family:georgia,garamond,serif;font-size:30px;font-style:italic;color:black;text-shadow:2px 3px cyan">Click here to book your ticket</p></a></h3>';
else
  echo '<h3 align="center"><a href="register.php"><p style = "font-family:georgia,garamond,serif;font-size:30px;font-style:italic;color:black;text-shadow:2px 3px orange">Please login/register before booking</p></a></h3>';
?>
</div>
</BODY>
</HTML>