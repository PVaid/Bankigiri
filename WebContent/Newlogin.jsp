
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Arvo"rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />




<script type="text/javascript">
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		// add a zero in front of numbers<10
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
		t = setTimeout('startTime()', 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i;
		}
		return i;
	}
</script>

<style>
@import url('https://fonts.googleapis.com/css?family=Nunito+Sans');


.vldform {
	box-sizing: border-box;
	width: 375px;
	display: flex;
	flex-direction: column;
	padding: 35px 55px;
	font-family: "Nunito Sans";
	animation: a .5s;
	animation-fill-mode: forwards;
	border: #d4d4d4 1px solid;
	border-radius: 10px;
	box-shadow: 0 2px 6px 0 hsla(0, 0%, 0%, 0.2);
	
}

.vldform a {
	text-decoration: none;
}

.vldform h1 {
	font-size: 40px;
	color: #0A7F99;
	margin: 0px 0px 26px 0px;
}

.vldform__textbox {
	border: 0;
	outline: 0;
	border-bottom: 2px #0A7F99 solid;
	font-size: 18px;
	margin-top: 36px;
	padding-bottom: 9px;
	font-family: "Nunito Sans";
}

.vldform__textbox[type="password"]::after {
	content: " ";
	display: block;
	width: 10px;
	height: 10px;
	background-color: #0A7F99;
}

.vldform__recoverypassword {
	align-self: flex-end;
	margin: 10px 0px;
	font-size: 16px;
	color: #2E67A9;
}

.vldform__button {
	margin-top: 42px;
	height: 50px;
	border: 0;
	color: #fff;
	border-radius: 10px;
	background-image: linear-gradient(#0A7F99, #0A7F99);
	font-size: 22px;
	font-weight: 600;
	font-family: "Nunito Sans";
	cursor: pointer;
}

.vldform__signup {
	align-self: center;
	margin-top: 50px;
	margin-bottom: 0px;
}

.vldform__signup a {
	color: #6538B5;
	font-weight: 600;
	margin-left: 4px;
}

.vldreg {
	display: none;
}

.vldrecpass {
	display: none;
}

@
keyframes a { 0% {
	opacity: 0;
	transform: translateY(-5px)
}

to {
	opacity: 1;
	transform: translateY(5px)
}

}
@media ( max-width : 400px) {
	.vldform {
		width: 350px;
		padding: 20px 40px;
	}
}

@media ( max-width : 360px) {
	.vldform {
		width: 305px;
		padding: 20px 35px;
	}
	.vldform__signup {
		text-align: center;
	}
	.vldform__signup a {
		margin-left: 14px;
	}
}
</style>

<title>BANKIGIRI</title>
</head>

<body onload="startTime()">


	<div id="bg1"></div>
	<div id="bg2"></div>
	<div id="outer">
	
	<!-- HEADER STARTS -->
		<div id="header">
			<div id="logo">
				<h1>BANKIGIRI - A CONNECTED BANKING FOR ALL </h1>
			</div>
			<br>
			<marquee>
				<b><i>Bankigiri brings Banking at your Finger Tips by
						serving our customers on 3S policy - Simple, Smart and Secure.
						Join us Today to have better experience of Banking.</i></b>
			</marquee>
			<div id="txt" align="right"></div>
			<div id="nav">
				<ul>
					<li class="first"><a href="index.jsp">Home</a></li>
					<li><a href="newBank_login.jsp">BANK LOGIN</a></li>
					<li><a href="newAdmin_login.jsp">ADMIN LOGIN</a></li>
					<li><a href="loanfacilities.html">LOANS</a></li>
					
					<li><a href="newcontact.jsp">CONTACT US</a></li>
				</ul>
				<br class="clear" />
			</div>
		</div>

<!-- HEADER ENDS -->
<br></br>

<center>
<form class="vldform vldauth" method="post" action="logincheck.jsp"
		name="f" onSubmit='return call()' >
		
		
		
		
		<h1>User Log in</h1>
		<input class="vldform__textbox" type="text" placeholder="Customer Id"
			name="cid" required> <input class="vldform__textbox"
			type="password" id="" placeholder="Password" name="pwd" required>
			 <a
			class="vldform__recoverypassword" href="#"
			onclick="window.location='New_Customer_Login.jsp'">Don't have an account? Sign Up!</a> <input
			class="vldform__button" type="submit" value="Log in" width="25%">
		
	</form>
	 <br></br>
	
	
		</div>
		<br class="clear" />
	</div>
	</div>
	<div id="copyright">&copy; Bankigiri. Designed by Pareekshit
		(2015CSA1127).</div>
		
		</center>
</body>

</html>