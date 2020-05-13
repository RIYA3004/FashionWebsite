<?php
echo "Hello World";
$conn = mysqli_connect("127.0.0.1","root","", "rating") or die("Could connect to the server");
$find_data=mysqli_query($conn, "SELECT * FROM RATES");
while($row=mysqli_fetch_assoc($find_data))
{
	$id=$row['id'];
	$nameofproduct=$row['nameofproduct'];
	$product=$row['product'];
	$current_rating=$row['rating'];
	$hits=$row['hits'];
	
	echo "
	<form action 'rate.php' method='POST'>
	$nameofproduct :<select name='rating'>
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	<option>5</option>
	</select>
	<input type='hidden' value='$product' name='product>
	<input type='submit' value='Rate!'> Current Rating: ";echo $current_rating; echo"
	</form>
	
	";
	
}
?>