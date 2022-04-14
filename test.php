<?php include_once "connection.php"?>
<?php
    if($con){
        echo "Connection Successful";
    }else{
        echo "Connection Failed";
        die;
    }
    //select category
    $sql = "SELECT * FROM category";
    $result = mysqli_query($con, $sql);
    $categories = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo $categories[0]['title'];



?>