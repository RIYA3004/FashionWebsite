<%@page import="java.sql.*"%>



<%
	String connectionURL = "jdbc:mysql://localhost:3306/shop";	
	Connection con = null; 
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	con = DriverManager.getConnection(connectionURL, "root","");
	
	ResultSet resultSet=null;
	Statement st = con.createStatement(); %>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
</head>
<body>

<h1>Here is your Order</h1>
<table border="1" class="table">
<tr class="success">
<td>id</td>
<td>name</td>
<td>quantity</td>
<td>location</td>

</tr>
	<% resultSet = st.executeQuery("select * from product");
	while(resultSet.next()){
		%>
		<tr>
		<td><%=Integer.toString(resultSet.getInt("product_id")) %></td>
		<td><%=resultSet.getString("product_name") %></td>
		<td><%=Integer.toString(resultSet.getInt("product_quantity")) %></td>
		<td><%=resultSet.getString("delivery_location") %></td>
		</tr>
		<%
		}
	
%>
</table>
</body>
</html>