<!-- bmain.jsp -->

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



<title>BANKIGIRI</title>
</head>
<body onload="startTime()">

<%
String bn=(String)session.getAttribute("bname");
%>


	<div id="bg1"></div>
	<div id="bg2"></div>
	<div id="outer">
	
	<!-- HEADER STARTS -->
		<div id="header">
			<div id="logo">
				<h1>BANKIGIRI - A Connected Banking For All</h1>
			</div>
			<br>
			<marquee>
				<b><i>Welcome To <%=bn%> Bank.</i></b>
			</marquee>
			<div id="txt" align="right"></div>
			<div id="nav">
				<ul>
					<li class="first"><a href="lcustomer.jsp?bname=<%=bn%>">List of Customers</a></li>
					<li><a href="lacconts.jsp?bname=<%=bn%>">List of A/c</a></li>
					<li><a href="transpen.jsp?bname=<%=bn%>">Transfer Pending</a></li>
					<li><a href="transdec.jsp?bname=<%=bn%>">Transfer Decline</a></li>
					<li><a href="newaccpen.jsp?bname=<%=bn%>">New Pending A/c</a></li>
					<li><a href="newBank_login.jsp">SignOut</a></li>
				</ul>
				<br class="clear" />
			</div>
		</div>

<!-- HEADER ENDS -->

<!-- PICTURE BANNER STARTS -->

		<div id="banner">
			<div class="captions">
				<h2>GOOD PEOPLE TO GROW WITH</h2>
			</div>
			<img src="images/banner.jpg" alt="" height=100% />
		</div>
		
<!-- PICTURE BANNER ENDS -->		
</body>
</html>
