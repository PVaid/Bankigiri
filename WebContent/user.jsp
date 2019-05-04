<%@ page import ="java.sql.*" %>
<%@ page import="p1.*" %>
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


<style> 
input[type=button], input[type=submit], input[type=reset] {

height: 50px;

background: lightblue;

color: black;

border: 5px solid #eee;

border-radius: 80px;

box-shadow: 5px 5px 5px #eee;

text-shadow:none;

font-weight:bold;
 font-size: 22px;
    font-weight: 600;
    font-family: "Nunito Sans";
    cursor: pointer;


}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover {

height: 50px;

background: #016ABC;

color: black;

border: 5px solid #eee;

border-radius: 20px;

box-shadow: 5px 5px 5px #eee;

text-shadow:none;

font-weight:bold;

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
}

.select_design {
	text-align:center;
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
				<!-- <li class="first"><a href="Newlogin.jsp">CUSTOMER LOGIN</a></li>
					<li><a href="newBank_login.jsp">BANK LOGIN</a></li>
					<li><a href="newAdmin_login.jsp">ADMIN LOGIN</a></li> -->
					
					<li><a href="otherbanknewac.jsp">New Details?</a>
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
<form class="design" method=post action="usercheck.jsp" name="f" onSubmit='return call()'>
 <table>
 

<tr>
<SELECT class="select_design" NAME="bname" > 
<% 
try
{
Connection con = DB.getCon();
	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(2)%></option>
	
<%	}}
	catch(Exception e)
	{
	   System.out.println(e);
	   
	 }  			 
				  
%>
  </SELECT></tr>
</table>
<br> <BR>
 <input type="submit" value="Submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Sign Out " onClick="window.location='Newlogin.jsp'">


<!-- STYLING OF BUTTONS -->



<!-- END STYLING OF BUTTONS -->

 </form>
 <br></br>





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