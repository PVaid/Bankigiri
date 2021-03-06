<!-- USER.JSP 
A new user after customer login entering bank details or login for new bank-->



<%@ page import ="java.sql.*" %>
<%@ page import="p1.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<title>User Bank Details</title>

<style>
      body {
  font-family: 'Hammersmith One', sans-serif;
  margin: 0;
  padding: 0;
  background: #2292A4;
}
.container {
  position: absolute;
  margin: auto;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  height: 410px; width: 350px;
  background: #FFF;
  border-radius: 10px;
  box-shadow: 0 15px 30px 0 rgba(0,0,0,0.11),
              0 5px 15px 0 rgba(0,0,0,0.08);
  text-align: center;
  padding: 15px 0;
}

.container span {
  display: inline-block;
  padding: 10px 0;
  font-size: 25px;
}
.container form {
  padding: 0 35px;
}
.container input[type="text"],
.container input[type="password"] {
  font-family: 'Hammersmith One', sans-serif;
  width: 100%;
  padding: 10px 0;
  margin-bottom: 20px;
  border: none;
  font-size: 14px;
  border-bottom: 2px solid #9FB1BC;
}
.container input[type="text"]:focus,
.container input[type="password"]:focus {
  outline: none;
  border-color: #3D348B;
}
.container form label {
  display: block;
  text-align: left;
  text-transform: uppercase;
  font-size: 9px;
  letter-spacing: 2px;
  color: #9FB1BC;
}

.container input[type="button"] {
  width: 100%;
  font-family: 'Hammersmith One', sans-serif;
  text-transform: uppercase;
  margin-top: 10px;
  padding: 10px;
  border: 2px solid #3D348B;
  border-radius: 5px;
  background: #3D348B;
  color: #FFF;
  cursor: pointer;
  transition: opacity .5s;
}
.container input[type="button"]:hover {
  opacity: .8;
}
.container form a {
  display: block;
  margin-top: 10px;
  text-align: right;
  color: #9FB1BC;
  font-size: 12px;
}
.container form a:hover {
  color: #000;
}




/* EXTRA */
#link {
  position: absolute;
  right: 0; left: 0;
  bottom: 10px;
  display: block;
  font-family: 'Concert One', sans-serif;
  text-align: center;
  color: #000;
  opacity: 0.3;
}
#link:hover {
  opacity: 1; 
  text-decoration: none;
}
    </style>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body translate="no">
<div class="container">
<span>Welcome</span>
<br></br>
<br></br>

<form  method=post action="usercheck.jsp" name="f" onSubmit='return call()'>


<div class= "list">
<tr><td><h3>SELECT BANK</td><td><SELECT NAME="bname" > 
<% 
try
{
Connection con = DB.getCon();
	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><%=rs.getString(2)%></option>
	
<%	}}
	catch(Exception e)
	{
	   System.out.println(e);
	   
	 }  			 
				  
%>
  </SELECT></td></tr>
  
  </div>
  
</table>

<br></br>
<br></br>
<br></br>

<input type="button" value="Submit">
<a href="#">I already have an account</a>
</form>
</div>


<script> !function()
{
	function e(e){t(e),window.PrefixFree&&StyleFix.process()}function t(e){var t=n(),a=document.createElement("style");a.type="text/css",a.className="cp-pen-styles",a.styleSheet?a.styleSheet.cssText=e:a.appendChild(document.createTextNode(e)),c.appendChild(a),t&&t.parentNode.removeChild(t)}function n(){for(var e=document.getElementsByTagName("style"),t=e.length-1;t>=0;t--)if("cp-pen-styles"===e[t].className)return e[t];return!1}function a(e){window.addEventListener?window.addEventListener("message",e,!1):window.attachEvent("onmessage",e)}function s(e,t){try{if(!/codepen/.test(e.origin))return null;if("object"!=typeof e.data)return null;if(e.data.action===t)return e.data}catch(n){}return null}var c=document.head||document.getElementsByTagName("head")[0],r="ACTION_LIVE_VIEW_RELOAD_CSS";a(function(t){var n=s(t,r);n&&e(n.data.css)})}();
	</script>
</body>
</html>
