
<%@ page import="java.sql.*"%>
<%@ page import="p1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

		<title>BANKIGIRI</title>
		<link href="col_font.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
<!--
.style1 {
	color: #990000;
	font-weight: bold;
	font-size: 24px;
}

.style2 {
	color: #990000
}

.style4 {
	color: #990000;
	font-size: 16px;
	font-weight: bold;
}

.style8 {
	font-size: 12px
}

.style9 {
	font-weight: bold
}
-->
</style>
		<link href="img.css" rel="stylesheet" type="text/css" />
</head>

<body bgcolor="#007289">
	<table width="84%" height="696" border="0" align="center"
		cellpadding="0" cellspacing="0" bordercolor="#E4DEDA">
		<tr>
			<td width="11%" height="100" bgcolor="white">&nbsp;&nbsp;<img
				src="hawaii_national_bank_website_3.jpg" alt="img_3" width="36"
				height="51" hspace="30" vspace="30" /></td>

			<td width="50%" bordercolor="#D6D3CE" bgcolor="white"><p>
					<span class="style1">BANKIGIRI<br /> </br> Simple<br /> Smart<br />
						Secure
					</span><strong> <br /> &nbsp;
					</strong><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b></b></span>
				</p></td>
			<td width="39%" height="100">

				<table width="100%" height="150px" border="0" cellpadding="0"
					cellspacing="0" bordercolor="#CCCCCC" bgcolor="yellow">

					<td width="39%" height="100"><image src="whitebank.jpg"
							width="100%" height="150px" /></td>
					<tr>

					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="50" colspan="3"><table width="100%" height="50"
					border="0" cellpadding="0" cellspacing="0">
					<tr bgcolor="#262626">
						<td height="51" class="col_font"><strong></strong></td>

						<td class="col_font"><strong><a href="login.jsp"
								style="text-decoration: none"><input type="button"
									value="CUSTOMER LOGIN" /></a></strong></td>
						<td class="col_font"><strong><a href="admin.jsp"
								style="text-decoration: none"><input type="button"
									value="ADMIN LOGIN" /></a></strong></td>
						<td class="col_font"><strong><a href="blogin.jsp"
								style="text-decoration: none"><input type="button"
									value="BANK LOGIN" /></a></strong></td>
						<td class="col_font"><strong><a
								href="loanfacilities.html" style="text-decoration: none"><input
									type="button" value="LOAN" /></a></strong></td>
						<td class="col_font"><strong><a
								href="internet banking.html" style="text-decoration: none"><input
									type="button" value="NET BANKING" /></a></strong></td>
						<td class="col_font"><strong><a href="aboutus.html"
								style="text-decoration: none"><input type="button"
									value="ABOUT US" /></a></strong></td>
					</tr>
				</table>
				<center>
					<BR> <br> <br>




								<form method=post action="bloginch.jsp" name="f"
									onSubmit='return call()'>
									<table width="40%" cellpadding="5" cellspacing="5">
										<colgroup span=2>
											<tr>



												<td></td>
												<td><input type="text" name="bid" placeholder="UserId"
													required></td>
											</tr>

											<tr>
												<td></td>
												<td><input type="password" name="pwd"
													placeholder="Password" required></td>
											</tr>
											<tr>


												<td><b> Select Bank:</b></td>
												<td><SELECT NAME="bl">
														<%
															try {
																//Class.forName("oracle.jdbc.driver.OracleDriver");
																//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bank","bank");
																Connection con = DB.getCon();

																Statement st = con.createStatement();
																ResultSet rs = st.executeQuery("select * from  bank");
																while (rs.next()) {
														%>
														<option><%=rs.getString(2)%></option>
														<%
															}
														%>
												</SELECT></td>
												<%
													} catch (Exception e) {
														System.out.println(e);
													}
												%>
											</tr>
									</table>
									<br> <BR> <input type="submit" value="   Login   ">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
												type="reset" value="   Reset   ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="button" name=back value="Home"
													onClick="window.location='index.jsp'"><BR>
															<center>
																<h2>
																	<b><a href="newbankuser.jsp"
																		style="text-decoration: none"><font size="5" font
																			color="#262626"><BR>New EMPLOYEE..?<image
																						src="signup.gif" /image></font> <!-- STYLING OF BUTTONS -->

																			<style>
input[type=button], input[type=submit], input[type=reset] {
	background: sky-blue;
	color: black;
	border: 1px solid #eee;
	border-radius: 20px;
	box-shadow: 5px 5px 5px #eee;
	text-shadow: none;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover
	{
	background: #016ABC;
	color: #fff;
	border: 1px solid #eee;
	border-radius: 20px;
	box-shadow: 5px 5px 5px #eee;
	text-shadow: none;
}
</style> <!-- END STYLING OF BUTTONS --> </a></b>
																</h2>
															</center>
								</form>
				</center>

				<tr>

				</tr>
	</table>

	<map name="Map" id="Map">
		<area shape="poly" coords="26,32" href="#" />
		<area shape="poly" coords="48,69" href="#" />
	</map>
</body>
</html>
