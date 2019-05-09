<%@page import="java.sql.*"%>
<%@ page import="p1.*"%>
<html>
<head>
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
<script>
	function call() {
		document.forms[0].action = "listacc.jsp";
		document.forms[0].submit();
	}
</script>
<BODY background="backgroun.png">
	<BR>
	<BR>
	<BR>
	<CENTER>
		<form>
			<h2>
				<U>List of Accounts</u>
			</H2>
			<BR>
			<BR>
			<BR>
			<BR>
			<table align=center cellpadding=0 width="50%">
				<colgroup span=2 align=left>
				<tr>
					<td align=center><b>SELECT ACCOUNTS : </td>
					<td><SELECT NAME="la" onChange="call()">
							<option>Select a type</option>
							<option>Savings Account</option>
							<option>Current Account</option>
					</SELECT></td>
				</tr>

			</table>
			<br>
		</form>
		<BR>
		<BR>
		<center>
			<input type="button" value="     BACK    "
				onClick="window.location='Bank_Main_page.jsp'">