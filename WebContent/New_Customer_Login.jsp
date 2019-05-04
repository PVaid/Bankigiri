
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Arvo"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />


<title>New Customer SignUp</title>

<script type="text/javascript">

	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		// add a zero in front of numbers<10
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
		t = setTimeout('startTime()', 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i;
		}
		return i;
	}
</script>

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

<style>
@import url('https://fonts.googleapis.com/css?family=Nunito+Sans');

.vldform {
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

.vldform a {
	text-decoration: none;
}

.vldform h1 {
	font-size: 40px;
	color: #0A7F99;
	margin: 0px 0px 26px 0px;
}

.vldform__textbox {
	border: 0;
	outline: 0;
	border-bottom: 2px #0A7F99 solid;
	font-size: 18px;
	margin-top: 36px;
	padding-bottom: 9px;
	font-family: "Nunito Sans";
}

.vldform__textbox[type="password"]::after {
	content: " ";
	display: block;
	width: 10px;
	height: 10px;
	background-color: #0A7F99;
}

.vldform__recoverypassword {
	align-self: flex-end;
	margin: 10px 0px;
	font-size: 16px;
	color: #2E67A9;
}

.vldform__button {
	margin-top: 42px;
	height: 50px;
	border: 0;
	color: #fff;
	border-radius: 10px;
	background-image: linear-gradient(#0A7F99, #0A7F99);
	font-size: 22px;
	font-weight: 600;
	font-family: "Nunito Sans";
	cursor: pointer;
}

.vldform__signup {
	align-self: center;
	margin-top: 50px;
	margin-bottom: 0px;
}

.vldform__signup a {
	color: #6538B5;
	font-weight: 600;
	margin-left: 4px;
}

.vldreg {
	display: none;
}

.vldrecpass {
	display: none;
}

@
keyframes a { 0% {
	opacity: 0;
	transform: translateY(-5px)
}

to {
	opacity: 1;
	transform: translateY(5px)
}

}
@media ( max-width : 400px) {
	.vldform {
		width: 350px;
		padding: 20px 40px;
	}
}

@media ( max-width : 360px) {
	.vldform {
		width: 305px;
		padding: 20px 35px;
	}
	.vldform__signup {
		text-align: center;
	}
	.vldform__signup a {
		margin-left: 14px;
	}
}
</style>

<title>BANKIGIRI</title>
</head>

<body onload="startTime()">


	<div id="bg1"></div>
	<div id="bg2"></div>
	<div id="outer">

		<!-- HEADER STARTS -->
		<div id="header">
			<div id="logo">
				<h1>BANKIGIRI - A Connected Banking For All</h1>
			</div>
			<br>
			<marquee>
				<b><i>Bankigiri brings Banking at your Finger Tips by
						serving our customers on 3S policy - Simple, Smart and Secure.
						Join us Today to have better experience of Banking.</i></b>
			</marquee>
			<div id="txt" align="right"></div>
			<div id="nav">
				<ul>
					<li class="first"><a href="Newlogin.jsp">CUSTOMER LOGIN</a></li>
					<li><a href="newBank_login.jsp">BANK LOGIN</a></li>
					<li><a href="newAdmin_login.jsp">ADMIN LOGIN</a></li>
					<li><a href="loanfacilities.html">LOANS</a></li>
					<li><a href="internet banking.html">INTERNET BANKING</a></li>
					<li><a href="newcontact.jsp">CONTACT US</a></li>
				</ul>
				<br class="clear" />
			</div>
		</div>

		<!-- HEADER ENDS -->
		<br></br>

		<center>
			<form class="vldform vldauth" method="post"
				action="customerprocess.jsp" name="f" onSubmit='return call()'>




				<h1>User LogUp</h1>
				<input class="vldform__textbox" type="text" name="id"
					placeholder="customer id" id="cid" required>
				<input class="vldform__textbox" type="password" name="pwd" 
								placeholder="password" required> 
								<input class="vldform__textbox" type="password" name="pwd1" 
								placeholder="confirm password" required> <a
					class="vldform__recoverypassword" href="#"
					onclick="showrecoveryform()">Forgot password?</a> <a
					class="vldform__recoverypassword" href="#"
					onclick="window.location='Newlogin.jsp'">Already have an account?</a> <input
					class="vldform__button" type="submit" value="Sign Up" width="25%">
				<input class="vldform__button" type="button" value="Home"
					onClick="window.location='index.jsp'">
			</form>
			<br></br>
	</div>
	<br class="clear" />
	</div>
	</div>
	<div id="copyright">&copy; Bankigiri. Designed by Pareekshit
		(2015CSA1127).</div>

	</center>
</body>
<script>
	"use strict";
			"object" != typeof window.CP && (window.CP = {}),
			window.CP.PenTimer = {
				programNoLongerBeingMonitored : !1,
				timeOfFirstCallToShouldStopLoop : 0,
				_loopExits : {},
				_loopTimers : {},
				START_MONITORING_AFTER : 2e3,
				STOP_ALL_MONITORING_TIMEOUT : 5e3,
				MAX_TIME_IN_LOOP_WO_EXIT : 2200,
				exitedLoop : function(o) {
					this._loopExits[o] = !0
				},
				shouldStopLoop : function(o) {
					if (this.programKilledSoStopMonitoring)
						return !0;
					if (this.programNoLongerBeingMonitored)
						return !1;
					if (this._loopExits[o])
						return !1;
					var t = this._getTime();
					if (0 === this.timeOfFirstCallToShouldStopLoop)
						return this.timeOfFirstCallToShouldStopLoop = t, !1;
					var i = t - this.timeOfFirstCallToShouldStopLoop;
					if (i < this.START_MONITORING_AFTER)
						return !1;
					if (i > this.STOP_ALL_MONITORING_TIMEOUT)
						return this.programNoLongerBeingMonitored = !0, !1;
					try {
						this._checkOnInfiniteLoop(o, t)
					} catch (e) {
						return this._sendErrorMessageToEditor(),
								this.programKilledSoStopMonitoring = !0, !0
					}
					return !1
				},
				_sendErrorMessageToEditor : function() {
					try {
						if (this._shouldPostMessage()) {
							var o = {
								action : "infinite-loop",
								line : this._findAroundLineNumber()
							};
							parent.postMessage(o, "*")
						} else
							this._throwAnErrorToStopPen()
					} catch (t) {
						this._throwAnErrorToStopPen()
					}
				},
				_shouldPostMessage : function() {
					return document.location.href.match(/boomerang/)
				},
				_throwAnErrorToStopPen : function() {
					throw "We found an infinite loop in your Pen. We've stopped the Pen from running. Please correct it or contact support@codepen.io."
				},
				_findAroundLineNumber : function() {
					var o = new Error, t = 0;
					if (o.stack) {
						var i = o.stack.match(/boomerang\S+:(\d+):\d+/);
						i && (t = i[1])
					}
					return t
				},
				_checkOnInfiniteLoop : function(o, t) {
					if (!this._loopTimers[o])
						return this._loopTimers[o] = t, !1;
					if (t - this._loopTimers[o] > this.MAX_TIME_IN_LOOP_WO_EXIT)
						throw "Infinite Loop found on loop: " + o
				},
				_getTime : function() {
					return +new Date
				}
			},
			window.CP.shouldStopExecution = function(o) {
				var t = window.CP.PenTimer.shouldStopLoop(o);
				return
						!0 === t
								&& console
										.warn("[CodePen]: An infinite loop (or a loop taking too long) was detected, so we stopped its execution. Sorry!"),
						t
			}, window.CP.exitedLoop = function(o) {
				window.CP.PenTimer.exitedLoop(o)
			};
</script>
<script id="rendered-js">
	function showregform() {
		document.title = "Sign up";
		document.querySelector(".vldauth").style.display = "none";
		document.querySelector(".vldreg").style.display = "flex";
	}

	function showauthform() {
		document.title = "Log in";
		document.querySelector(".vldauth").style.display = "flex";
		document.querySelector(".vldreg").style.display = "none";
		document.querySelector(".vldrecpass").style.display = "none";
	}

	function showrecoveryform() {
		document.title = "Password recovery";
		document.querySelector(".vldauth").style.display = "none";
		document.querySelector(".vldrecpass").style.display = "flex";
	}
	//# sourceURL=pen.js
</script>
<script>
	!function() {
		function e(e) {
			t(e), window.PrefixFree && StyleFix.process()
		}
		function t(e) {
			var t = n(), a = document.createElement("style");
			a.type = "text/css", a.className = "cp-pen-styles",
					a.styleSheet ? a.styleSheet.cssText = e : a
							.appendChild(document.createTextNode(e)), c
							.appendChild(a), t && t.parentNode.removeChild(t)
		}
		function n() {
			for (var e = document.getElementsByTagName("style"), t = e.length - 1; t >= 0; t--)
				if ("cp-pen-styles" === e[t].className)
					return e[t];
			return !1
		}
		function a(e) {
			window.addEventListener ? window.addEventListener("message", e, !1)
					: window.attachEvent("onmessage", e)
		}
		function s(e, t) {
			try {
				if (!/codepen/.test(e.origin))
					return null;
				if ("object" != typeof e.data)
					return null;
				if (e.data.action === t)
					return e.data
			} catch (n) {
			}
			return null
		}
		var c = document.head || document.getElementsByTagName("head")[0], r = "ACTION_LIVE_VIEW_RELOAD_CSS";
		a(function(t) {
			var n = s(t, r);
			n && e(n.data.css)
		})
	}();
</script>
</html>