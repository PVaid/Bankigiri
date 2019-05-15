<html>
<body background="backgroun.png">
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

	<%@ page import="java.sql.*"%>
	<%@ page import="p1.*"%>
	<%
		try {
			int i = 0;
			String cid = (String) session.getAttribute("cid");
			String bname = (String) session.getAttribute("bname");
			Connection con = DB.getCon();
			PreparedStatement st1 = con.prepareStatement("select * from reject where cid=? and bname=? ");
			st1.setString(1, cid);
			st1.setString(2, bname);
			ResultSet rs = st1.executeQuery();
	%><BR>
	<BR>
	<center>
		<h2>
			Rejected Transactions<BR>
			<BR>
			<table align=center cellpadding="0" border=1 width="50%"
				cellspacing="0">
				<colgroup span=3 align=center width="10%">
				<tr>
					<td align=center><b> A/C Number </td>

					<td align=center><b>Account Type</td>
					<td align=center><b>Name of Bank</td>
				</tr>
				<%
					while (rs.next()) {
							i++;
				%>
				<td align=center><b><%=rs.getString(2)%></td>
				<td align=center><b><%=rs.getString(3)%></td>
				<td align=center><b><%=rs.getString(4)%></td>

				<%
					}
					} catch (Exception e) {
						System.out.println(e);
					}
				%>
			</table>
			<center>
				<BR>
				<BR>
				<BR> <input type="button" name=back value="   BACK   "
					onClick="window.location='treport.jsp'">
			</center>
</body>
</html>