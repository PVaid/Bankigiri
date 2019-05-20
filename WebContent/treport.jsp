<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>USER HOME</title>
<link href="col_font.css" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Arvo"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<style>
input[type=button], input[type=submit], input[type=reset] {
	height: 50px;
	background: lightblue;
	color: black;
	border: 5px solid #eee;
	border-radius: 80px;
	box-shadow: 5px 5px 5px #eee;
	text-shadow: none;
	font-weight: bold;
	font-size: 22px;
	font-weight: 600;
	font-family: "Nunito Sans";
	cursor: pointer;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover
	{
	height: 50px;
	background: #016ABC;
	color: black;
	border: 5px solid #eee;
	border-radius: 20px;
	box-shadow: 5px 5px 5px #eee;
	text-shadow: none;
	font-weight: bold;
	font-size: 22px;
	font-weight: 600;
	font-family: "Nunito Sans";
	cursor: pointer;
}

.design {
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
	background:rgba(255,255,255,.9);
}

.select_design {
	text-align: center;
	border: 0;
	outline: 0;
	border-bottom: 2px #0A7F99 solid;
	font-size: 18px;
	margin-top: 36px;
	padding-bottom: 9px;
	font-family: "Nunito Sans";
}
</style>

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

</head>
<body bgcolor="#007289" onload="startTime()">
	<div id="outer" style="background:#ffffff">
		<div id="header">
			<div id="logo">
				<h1>BANKIGIRI - A Connected Banking For All</h1>
			</div>
			<br> <marquee> <b><i>Bankigiri brings Banking
						at your Finger Tips by serving our customers on 3S policy -
						Simple, Smart and Secure. ThankYou for being part of Bankigiri.</i></b></marquee>
				<div id="txt" align="right"></div>
				<div id="nav">
					<ul>
						
						<li><a href="loanfacilities.html">Loan</a></li>
						
						<li><a href="Newlogin.jsp">Sign out</a></li>
						<li><a href="newcontact.jsp">CONTACT US</a></li>
					</ul>
					<br class="clear" />
				</div>
		</div>


		<center>
			<br></br> 
			<form class="design" method=post action="usercheck.jsp" name="f"
				onSubmit='return call()'>

				 <input type="button" value="Accepted Transaction" onClick="window.location='trreport.jsp'">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<input type="button" value="Rejected Transaction" onClick="window.location='rejtrans.jsp'">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<input type="button" value="Pending Transaction" onClick="window.location='pendtrans.jsp'">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							<input type="button" value="Back" onClick="window.location='userhome.jsp'">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							


								<!-- STYLING OF BUTTONS --> <!-- END STYLING OF BUTTONS -->
			</form>
			<br></br> 
	</div>
	<br class="clear" />
	</div>
	</div>
	<div id="copyright">&copy; Bankigiri. Designed by Pareekshit
		(2015CSA1127).</div>

	</center>

	<map name="Map" id="Map">
		<area shape="poly" coords="26,32" href="#" />
		<area shape="poly" coords="48,69" href="#" />
	</map>
	</div>
</body>
</html>
