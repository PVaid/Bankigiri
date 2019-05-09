
<%@ page import="java.sql.*"%>
<%@ page import="p1.*"%>
<BODY background="backgroun.png">
	<BR>
	<BR>
	<BR>
	<center>
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
		<h2>
			<u><center>
					<font size="+2" color="#000000"> User Issues </font></u>
		</h2>
		<table width="60%" border="1" align="center">
			<tr align="center">

				<td><font size="4" color="#000000">Name</font></b></td>
				<td><font size="4" color="#000000">Email</b></td>
				<td><font size="4" color="#000000">Subject</b></td>
				<td colspan="2"><font size="4" color="#000000">Message</b></td>
			</tr>
			<%
				Connection con = DB.getCon();
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("Select * from contact");
				while (rs.next()) {
			%>
			<tr align="center">

				
				<td><font size="3" color="#000000"><%=rs.getString(1)%></font></td>
				<td><font size="3" color="#000000"><%=rs.getString(2)%></font></td>
				<td><font size="3" color="#000000"><%=rs.getString(3)%></font></td>
				<td><font size="3" color="#000000"><%=rs.getString(4)%></font></td>			
			</tr>
			<BR>
			<BR>
			<%
				}
			%>
			<center>
		</table>
		<BR> <BR> <BR> <input type="button" name=back
			value="   BACK   " onClick="window.location='adminhome.jsp'">