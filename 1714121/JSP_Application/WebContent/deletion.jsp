<%@page import="java.sql.*"%>


<%
	String connectionURL = "jdbc:mysql://localhost:3306/shop";	
	Connection con = null; 
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	con = DriverManager.getConnection(connectionURL, "root","");
	
	String product_id = request.getParameter("product_id");
	Statement st = con.createStatement();
	//ResultSet rs;
	int i = st.executeUpdate("DELETE FROM product WHERE product_id= " + product_id +";");
	if (i > 0) {
		response.sendRedirect("welcome.jsp");
	} else {
		response.sendRedirect("error.jsp");
	}
%>