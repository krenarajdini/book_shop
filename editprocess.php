<?php
if(!isset($_SESSION)) { 
    session_start(); 
}
include_once("connection.php");
$email = $_SESSION['email'];
$errors = array();
if(isset($_POST['edit-user'])){	
    
    $current_password = mysqli_real_escape_string($con, $_POST['current_password']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
    $phone_number  = mysqli_real_escape_string($con, $_POST['phone_number']);
    $shipment_address = mysqli_real_escape_string($con, $_POST['shipment_address']);

    //Validation
    if(empty($current_password)){
        array_push($errors, "Current password is required");
    }
    if(empty($password)){
        array_push($errors, "Password is required");
    }
    if(empty($cpassword)){
        array_push($errors, "Confirm password is required");
    }


    if($password !== $cpassword){
        $errors['password-error-message'] = "Confirm password not matched!";
    }

    //check if current password matches with the password in database
    $sql = "SELECT * FROM user WHERE email = '$email'";
    $result = mysqli_query($con, $sql);
    $user = mysqli_fetch_assoc($result);
    $fetch_pass = $user['password'];
    $salt = $user['salt'];
    $encpass = hash('sha256', $salt .  $current_password);

    if(strcmp($fetch_pass, $encpass) != 0){
        array_push($errors, "Current password is incorrect!") ;
    }

    //DB insertion
    if(count($errors) < 1){
        echo "success";
		function createSalt(){
   			$string = md5(uniqid(rand(), true));
    		return substr($string, 0, 3);
		}
		$salt = createSalt();
		$encpass = hash('sha256', $salt . $password);

        
        $insert_data = "UPDATE user SET password = '$encpass', salt = '$salt', phone_number = '$phone_number', shipment_address = '$shipment_address'
                 WHERE email = '$email'";
        $update_user_result = mysqli_query($con, $insert_data);

    
        $update_account = "UPDATE account SET hash_password = '$encpass' WHERE u_id = '$u_id'";
        $update_account_result = mysqli_query($con, $insert_data);
        
    }

}
?>