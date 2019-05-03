<HTML>
<HEAD>
<TITLE></TITLE>
</HEAD>
<script>
	function call() {
		if (document.f.id.value == "") {
			alert("Please Enter Customer Id");
			document.f.id.setFocus = true;
			return false;
		}
		if (document.f.pwd.value == "") {
			alert("Please Enter Ur Password");
			return false;
		}
		if (!((document.f.pwd.value) == (document.f.pwd1.value))) {
			alert("enter correct password");
			return false;
		}
	}
	function check() {
		var cid = document.getElementById("cid").value;
		if (cid.length < 3) {
			alert("Id Should be minimum 3 digit");
			document.getElementById("cid").focus();
		}
	}
</script>
<BODY background="backgroun.png">

	<center>
		<BR> <BR> <font size="+2" color="#FF5C0F"><h2>
				Welcome To Simple Secure and Smart Banking Network</b>
			</h2></font> <br>




		<form method=post action="customerprocess.jsp" name="f"
			onSubmit='return call()'>
			<table>
				<tr>
					<img src="nvabanda.jpg" width="510" height="89" />
					<td><h3>
							Customer ID:</b></td>
					<td><input type="text" name="id" onblur="check()" id="cid"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><h3>
							Password:</b></td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td><h3>
							Retype Password:</b></td>
					<td><input type="password" name="pwd1"></td>
				</tr>
				<tr></tr>
				<tr></tr>

			</table>
			<br> <BR> <input type="submit" value="Submit">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset"
				value="Reset">&nbsp;&nbsp;&nbsp;&nbsp; <input type="button"
				name=back value="   Back   "
				onClick="window.location='Newlogin.jsp'">
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
</
form
>
<
br
>
</
center
>
</
BODY
>
</
HTML
>
