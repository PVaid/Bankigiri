<%@ page import="java.sql.*"%>
<%@ page import="p1.*"%>
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
<TITLE>New Document</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY background="backgroun.png">
	<center>
		<BR>
		<BR>
		<BR>
		<BR>
		<h2>
			<u>List Of Pending Accounts</u>
		</h2>
		<BR>
		<BR>
		<BR>
		<table align=center cellpadding="0" border=1 width="60%"
			cellspacing="0">
			<colgroup span=4 align=center width="10%">
			<tr>
				<td align=center><b>A/C Number </td>
				<td align=center><b> A/C Name </td>
				<td align=center><b>Customer ID</td>
				<td align=center><b>Name of Bank</td>
				<td align=center><b>Amount</td>
				<td align=center colspan=2><b>Operation</td>
			</tr>
			<%
				String bn = request.getParameter("bname");
				String id = "";
				int in = 0;
				try {
					//Class.forName("oracle.jdbc.driver.OracleDriver");
					//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
					Connection con = DB.getCon();

					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from customer where status=0 and bname='" + bn + "'");
					while (rs.next()) {
						id = rs.getString(1);
			%>
			<tr>
				<td align=center><%=rs.getString(4)%></td>
				<td align=center><%=rs.getString(5)%></td>

				<td align=center><%=id%></td>
				<td align=center><%=rs.getString(7)%></td>
				<td align=center><%=rs.getFloat(8)%></td>
				<td align=center colspan="2"><a href="comp.jsp?id=<%=id%>">Grant</a>
				</td>

			</tr>
			<%
				in++;
					}
					if (in == 0)
						response.sendRedirect("norec1.jsp");
					session.setAttribute("id", id);
				} catch (Exception e) {
					System.out.println(e);
				}
			%>
		</table>
		<BR>
		<BR>
		<center>
			<input type="button" value="     Back     "
				onclick="window.location='bmain.jsp'">
</BODY>
</HTML>
