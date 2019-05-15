<%@ page import="java.sql.*"%>
<%@ page import ="p1.*" %>
<HTML>
<HEAD>
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
</style>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY background="backgroun.png">
  
<%
    try{
//String id=request.getParameter("id");
String id = (String)session.getAttribute("id");
int in=0;
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();

Statement st=con.createStatement();
int i=st.executeUpdate("update customer set status=1 where id='"+id+"'");
}catch(Exception e){}
 %>
 <center><BR><BR><BR>	<h2>The Request for the Account is Granted</h2>
 <BR><BR>
 <input type="button" value="     Back     " onclick="window.location='Bank_Main_page.jsp'">  
 
</BODY>
</HTML>
