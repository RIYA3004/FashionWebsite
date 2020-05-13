<?php
$to="riya.suri@somaiya.edu"
$subject ="Response from website";
$message="Glad you took time to contact with us.Stay in touch to get details of more offers";
$headers="From: plugnplay@gmail.com";
if(mail($to,$subject,$message,$headers))
{
	echo "Mail sent successfully";
}
else{
	echo "Cannot send mail";
}
?>
