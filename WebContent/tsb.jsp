
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


<script>
		function check() {
			if (document.f1.accno.value == "") {
				alert("enter your account number");
				return false;
			}

			if (document.f1.daccno.value == "") {
				alert("enter destination account number");
				return false;
			}
			var id = /^[0-9][0-9]/
			if (!(id.test(document.f1.amt.value))) {
				alert("Invalid amount");
				document.f1.amt.focus();
				return false;
			}

			if (document.f1.password.value == "") {

				alert("enter password");
				return false;
			}
			if (!((document.f1.password.value) == (document.f1.password1.value))) {
				alert("enter correct password");
				return false;
			}
		}
	</script>



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
input[type=text], [type=password], .select {
  width: 80%;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  padding: 12px 12px 12px 12px;
}
.button {
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

.button:hover
	{
	height: 50px;
	background: #007399;
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
					<li><a href="internet banking.html">INTERNET BANKING</a></li>
					<li><a href="newcontact.jsp">CONTACT US</a></li>
				</ul>
				<br class="clear" />
			</div>
		</div>

<!-- HEADER ENDS -->
<br></br>

<center>
<form action="tsbsave.jsp" name="f1" method=get
			onsubmit='return check()' >
			<h2>
				<u>Enter Account Details</u></font>
			</h2>
			<B></B></b>
			<table cellspacing="3">
				<tr>
					<td>
						<h3>Your Account Number
					</td>
					<td><input type="text" name="accno"></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td><h3>Account Type</td>
					<td><SELECT NAME="atype" class="select">
							<option>Current Account</option>
							<option>Savings Account</option>
							<option>Others</option>

					</SELECT></td>
				</tr>
				<tr></tr>
				<tr></tr>

				<tr>
					<td>
						<h3>Destination Account Number
					</td>
					<td><input type="text" name="daccno"></td>
				</tr>
				<tr></tr>
				<tr></tr>

				<tr>
					<td><h3>Destination Account Type</td>
					<td><SELECT NAME="datype" class="select">
							<option>Current Account</option>
							<option>Savings Account</option>
							<option>Others</option>

					</SELECT></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<h3>
					<tr>
						<td><h3>Enter Amount</td>
						<td><input type="text" name="amt"></td>
					</tr>
					<tr></tr>
					<tr></tr>

					<tr>
						<td>

							<h3>Transaction Password
						</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td><h3>Confirm Password</td>
						<td><input type="password" name="password1"></td>
					</tr>
					<br>
					<tr></tr>
					<tr></tr>
			</table>
			<BR> <input type=submit value="       Submit      " class="button">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" name=back value="       Back       "
				onClick="window.location='traamt.jsp'" class="button">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="       Reset       " class="button"> </font></b>
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