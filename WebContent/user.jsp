<%@ page import ="java.sql.*" %>
<%@ page import="p1.*" %>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{

}
</script>
<BODY background="backgroun.png" >

<center>
<BR><BR>
 
 <font size="+2" color="#0000ff"><h1><b>WELCOME TO SIMPLE, SMART AND SECURE BANKING</b></h1></font>
<br>
 

<form class="design" method=post action="usercheck.jsp" name="f" onSubmit='return call()'>
 <table>
 

<tr>
<SELECT class="select_design" NAME="bname" > 
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
  </SELECT></tr>
</table>
<br> <BR>
 <input type="submit" value="Submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Sign Out " onClick="window.location='Newlogin.jsp'">


<!-- STYLING OF BUTTONS -->

<style> 
input[type=button], input[type=submit], input[type=reset] {

height: 50px;

background: lightblue;

color: black;

border: 5px solid #eee;

border-radius: 80px;

box-shadow: 5px 5px 5px #eee;

text-shadow:none;

font-weight:bold;
 font-size: 22px;
    font-weight: 600;
    font-family: "Nunito Sans";
    cursor: pointer;


}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover {

height: 50px;

background: #016ABC;

color: black;

border: 5px solid #eee;

border-radius: 20px;

box-shadow: 5px 5px 5px #eee;

text-shadow:none;

font-weight:bold;

 font-size: 22px;
    font-weight: 600;
    font-family: "Nunito Sans";
    cursor: pointer;


}

.design {
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

.select_design {
	text-align:center;
    border: 0;
    outline: 0;
    border-bottom: 2px #0A7F99 solid;
    font-size: 18px;
    margin-top: 36px;
    padding-bottom: 9px;
    font-family: "Nunito Sans";
}


</style>

<!-- END STYLING OF BUTTONS -->

 </form>
<center><a href="otherbanknewac.jsp"style="text-decoration : none"><font color="BLACK"><h1><b>Click to Enter new Bank Details</b></h1> </a>

<br><center><BR><BR>

</center>

</BODY>
</HTML>
