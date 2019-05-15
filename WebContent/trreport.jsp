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
			String q1 = "select * from taccept where scid=? and sbname=? ";
			System.out.println("Query is : " + q1);
			PreparedStatement st1 = con.prepareStatement(q1);
			st1.setString(1, cid);
			st1.setString(2, bname);
			ResultSet rs = st1.executeQuery();
	%><center>
		<h2>
			<u>Accepted Transactions</u><BR>
			<BR>
			<table align=center cellpadding="0" border=1 width="85%"
				cellspacing="0" cellpadding="0">

				<tr>
					<td align=center><b>Source A/C Number </td>

					<td align=center><b>Account Type</td>
					<td align=center><b>Name of Bank</td>
					<td align=center><b>Amount</td>
					<td align=center><b>Destination A/C Number</td>
					<td align=center><b>Balance</td>
				</tr>
				<%
					while (rs.next()) {
							i++;
				%>
				<td align=center><%=rs.getString(2)%></td>
				<td align=center><%=rs.getString(3)%></td>
				<td align=center><%=rs.getString(4)%></td>
				<td align=center><%=rs.getFloat(10)%></td>
				<td align=center><%=rs.getString(7)%></td>
				<td align=center><%=rs.getFloat(5)%></td>
				</tr>

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