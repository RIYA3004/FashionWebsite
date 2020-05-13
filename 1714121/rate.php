<?php
$conn = mysqli_connect("127.0.0.1","root","", "rating") or die("Could connect to the server");
$product= $_POST['product'];
$post_rating= $_POST['rating'];
//gets the value from the db that was put in index,phph
$find_current_rating = mysqli_query("SELECT * FROM rates WHERE product='$product'");
while($row= mysqli_fetch_assoc($find_data))
{
	$id = $row['id'];
	$current_rating=$row['rating'];
	$current_hits=$row['hits'];
	//retrieves the data
	
}
$new_hits= $current_hits+1;
$updated_hit=mysqli_query("UPDATE rates SET hits = '$new_hits' WHERE id='$id'" );
$pre_rating = $current_rating+$post_rating;
$new_rating = $pre_rating/$new_hits;
$updated_rating =mysqli("UPDATE rates SET rating= '$new_rating' WHERE id='$id' ");

header("location: index.php");
?>