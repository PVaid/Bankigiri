<%@ page import="java.sql.*"%>
<%@ page import="p1.*"%>
<%
	
	try {
		int ii = 0;
		Connection con = DB.getCon();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");

		PreparedStatement ps1 = con.prepareStatement("select MAX(id) from contact");
		ResultSet rs2 = ps1.executeQuery();
		
		if (rs2.next()) {
			String s = rs2.getString(1);
			if (s == null) {
				ii = 1;
			} else {
				ii = Integer.parseInt(s) + 1;
			}
		}

		int ind = 0;
		PreparedStatement st = con.prepareStatement("insert into contact values(?,?,?,?,?)");
		st.setString(1, name);
		st.setString(2, email);
		st.setString(3, subject);
		st.setString(4, message);
		st.setInt(5, ii);

		st.executeUpdate();
		response.sendRedirect("newcontact.jsp");
		con.close();

	} catch (Exception e) {
		System.out.println(e);
	}
%>