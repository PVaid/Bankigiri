<%@ page import="java.sql.*"%>
<%@ page import="p1.*"%>
<HTML>
<HEAD>
<TITLE>new bank account</TITLE>

<style>
.design {
	align: center;
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

input[type=text], select, [type=password] {
	width: 100%;
	padding: 5px 8px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=button], input[type=submit], input[type=reset] {
	height: 50px;
	background: #80aaff;
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
	background: #80aaff;
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
</HEAD>
<script>
	function check() {

		if (document.f1.accno.value.length < 10) {
			alert("Minimum 10 Digit allowed");
			document.getElementById("acno").value = "";
			document.getElementById("acno").focus();
			return false;
		}

		if (!((document.f1.password.value) == (document.f1.password1.value))) {
			alert("enter correct password");
			return false;
		}

		if (!((document.f1.tpassword.value) == (document.f1tpassword1.value))) {
			alert("enter correct transaction password");
			return false;
		}

	}
	function checkno() {
		var acno = document.getElementById("acno").value;
		if (isNaN(acno)) {
			alert("Please give valid Account no");
			document.getElementById("acno").value = "";
			document.getElementById("acno").focus();
		}

	}
</script>

<BODY background="header-background.png">
	<BR> <form action="insotheraccount.jsp" name="f1" method=get align="center"
	onsubmit='return check()'>
	<h2>
		<b>Enter Account Details</font>
	</h2>
	<B></B>
	</b>
	<table align="center">
		<tr>
			<td><h3>Select Bank</td>
			<td><SELECT NAME="bname" onChange="setURL()">
					<%
						Connection con = DB.getCon();

						PreparedStatement st = con.prepareStatement("select * from bank ");

						ResultSet rs = st.executeQuery();
						while (rs.next()) {
					%>


					<option><%=rs.getString(2)%></option>

					<%
						}
					%>
			</SELECT></td>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td><h3>Enter Account Holder Name</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr></tr>
		<tr>
			<td>
				<h3>Customer ID
			</td>
			<td><input type="text" name="cid"></td>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td>

				<h3>Password
			</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td><h3>Confirm Password</td>
			<td><input type="password" name="password1"></td>
		</tr>
		<br>
		<tr></tr>
		<tr></tr>
		<tr>
			<td><h3>Account Type</td>
			<td><SELECT NAME="atype">
					<option>Current Account</option>
					<option>Savings Account</option>
					<option>Others</option>

			</SELECT></td>
		</tr>
		<tr>
			<td>
				<h3>Enter Transaction Password
			</td>
			<td><input type="password" name="tpassword"></td>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td><h3>Confirm Password</td>
			<td><input type="password" name="tpassword1"></td>
		</tr>
		<br>
		<tr></tr>
		<tr></tr>

	</table>
	<BR>
	<BR>
	<input type=submit value=Submit>&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" name=back value="   Back   "
		onClick="window.location='user.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" value="   Reset   ">

	</font>
	</b>
	</form>
</body>
</center>
</html>

