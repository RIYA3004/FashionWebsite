<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Page</title>
<style>
body{
background:url("C:/Desktop/backk.jpg");
}
</style>
</head>

<body>

        <form method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" height="20%" cellpadding="5" class="table">
                <thead>
                    <tr>
                        <th colspan="2">Order Product</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr class="success">
                        <td> Product_id</td>
                        <td><input type="text" name="product_id" value=""  /></td>
                    </tr>
                    <tr class="info">
                        <td>Product_name</td>
                        <td><input type="text" name="product_name" value="" /></td>
                    </tr>
                     <tr class="warning">
                        <td>Product_quantity</td>
                        <td><input type="text" name="product_quantity" value="" />
                        </td>
                    </tr>
                     <tr class="active">
                        <td>Delivery_location</td>
                        <td> <select name="delivery_location"><option value="Mumbai">Mumbai</option>
  <option value="Thane">Thane</option>
  <option value="Kalyan">Kalyan</option>
  <option value="Dombivali">Dombivali</option>
                        
                        </select></td>
                    </tr>
                    <tr>
                        <td><center><input type="submit" value="Submit" class="btn btn-success" class="form-control" /></center></td>
                        <td><center><input type="reset" value="Reset" class="btn btn-info" class="form-control" /></center></td>
   
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        <table class="table" width="30%" cellpadding="5">
        <tr class="table">
        <td>
       <form action="delete.jsp" method="post">
       <center><input type="submit" value="Delete" class="btn btn-danger"></center>
       
       </form>
       </td>
       <td>
        <form action="selection.jsp" method="post">
       <center><input type="submit" value="See Order" class="btn btn-warning"></center>
       </form>
       </td>
       </tr>
       </table>
    </body>
</html>