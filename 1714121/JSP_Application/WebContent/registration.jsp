<%@page import="java.sql.*"%>


<%
	String connectionURL = "jdbc:mysql://localhost:3306/shop";	
	Connection con = null; 
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	con = DriverManager.getConnection(connectionURL, "root","");
	
	int product_id = Integer.parseInt(request.getParameter("product_id"));
	String product_name= request.getParameter("product_name");
	int  product_quantity = Integer.parseInt(request.getParameter("product_quantity"));
	String delivery_location= request.getParameter("delivery_location");
	Statement st = con.createStatement();
	//ResultSet rs;
	int i = st
			.executeUpdate("insert into product(product_id,product_name,product_quantity,delivery_location) values ('"
					+ product_id
					+ "','" 
					+ product_name
					+ "','" 
					+ product_quantity
					+ "','" 
					+ delivery_location
					+ "')");
	if (i > 0) {
		response.sendRedirect("welcome.jsp");
	} else {
		response.sendRedirect("index.jsp");
	}
%>