<?php 
class Contact{
    private $host="localhost";
    private $user="root";
    private $pass="";
    private $db="contact";
    public $mysqli;
    
    public function __construct() {
        return $this->mysqli=new mysqli($this->host, $this->user, $this->pass, $this->db);
    }
    
    public function contact_us($data){
        $fname=$data['name'];
        $lname=$data['surname'];
        $email=$data['email'];
        $phone=$data['phone'];
        $message=$data['message'];
        $q="insert into contact_us set name='$fname', surname='$lname', email='$email', phone='$phone', message='$message'";
       $data= $this->mysqli->query($q);
       if($data==true){
           $body="One message received from hubbunch contact us. details are below..<br> name='$fname', surname='$lname', email='$email', phone='$phone', message='$message'";
           return $this->sent_mail("info@hubbunch.com", "Message received from Hubbunch", $body);
       }
    }
    
    public function sent_mail($to,$subject,$body){
return true;
    }
}


?>