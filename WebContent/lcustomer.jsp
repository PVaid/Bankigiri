<html>
<body background="backgroun.png">

<%@page import="java.sql.*"%>
<%@ page import ="p1.*" %>
		<BODY><BR><BR><BR>
		
		
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
		</style>
		
<CENTER>
<h2><U>List of Customers</H2><BR><BR><BR><BR>
<table align=center cellpadding=0 border=3 width="60%">
<colgroup span=4 align=center width="20%" bordercolor="#FFCCCC">
<tr>
	<td align=center><b>A/C Number </td>
		<td align=center><b>A/C Name </td>
			<td align=center><b>Balance</td>
				<td align=center><b>A/C Type</td>
				</tr>
<%
int count=0;
String bname=request.getParameter("bname");

//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
Connection con = DB.getCon();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where bname='"+bname+"'");
while(rs.next())
{
	count++;
	%>

<tr>
	<td align=center><%=rs.getString(4)%> </td>
		<td align=center><%=rs.getString(6)%> </td>
		<td align=center><%=rs.getFloat(8)%> </td>
		<td align=center><%=rs.getString(5)%> </td></tr>
	<%
}
if(count==0)
response.sendRedirect("norec1.jsp");
%>
</table>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='Bank_Main_page.jsp'">
 </center>
 </CENTER>
 </BODY>
 </html>
   