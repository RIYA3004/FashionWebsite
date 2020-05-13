<?php 
	$responses['what is your name'] = "My name is Plug & Play.";
	// echo "Hello world";
	$responses['tell me about yourself'] = "I am a chatbot. I'm still learning a lot of things so please forgive me if I can't answer you in some cases.";
	
	$responses["i'm fine"] = "Good. I'm happy about that.";
	$responses["what is plug n play"] = "I m a fashion website to cater all your needs";
	$responses["helpline number?"] = "1234567890 is the helpline number feel free to contact";
	$q = $_GET["q"];
	$response = "";
	if ($q != "") {
		# code...
		$q = strtolower($q);
		foreach ($responses as $r => $value) {
			# code...
			if (strpos($r, $q) !== false) {
				# code...
				$response = $value;
			}
			
		}
	}
	$noresponse = "Sorry I'm still learning. Hence my responses are limited. Ask something else.";
	echo $response === "" ? $noresponse : $response;
?>
