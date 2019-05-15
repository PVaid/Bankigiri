<%@page import="java.sql.*"%>
<%@ page import="p1.*"%>

<style>

style>input[type=button], input[type=submit], input[type=reset] {
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
</style>

<%
	int count = 0;
	String acc = request.getParameter("accno");

	//Class.forName("oracle.jdbc.driver.OracleDriver");
	//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
	Connection con = DB.getCon();

	Statement st = con.createStatement();
	int i = st.executeUpdate("delete from reject where accno='" + acc + "'");
	if (i > 0)
%>
<BR>
<BR>
<BR>
<BR>
<center>
	<h2>Record is Deleted</h2>
	<br> <BR>
	<BR>
	<center>
		<input type="button" value="     BACK    "
			onClick="window.location='Bank_Main_page.jsp'">