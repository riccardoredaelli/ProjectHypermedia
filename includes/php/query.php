<?php
header("Access-Control-Allow-Origin: *");
/*define('MYSQL_BOTH',MYSQLI_BOTH);
define('MYSQL_NUM',MYSQLI_NUM);
define('MYSQL_ASSOC',MYSQLI_ASSOC);*/

/*$server = "localhost";
$username = "hyp2016@localhost";
$password = "";
$database = "my_hyp2016";

$con = mysql_connect($server, $username, $password) or die ("Could not connect: " . mysql_error());
mysql_select_db($database, $con);*/

$mysqli = new mysqli("localhost", "root", "", "my_hyp2016");

$query=$_POST["query"];

if (mysqli_connect_errno()) {
    echo "Error to connect to DBMS: ".mysqli_connect_error();
    exit();
}
else {
    $result = $mysqli->query($query);
    if($result->num_rows >0)
    {
        $myArray = array();
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);
        }
        echo json_encode($myArray);
    }
    $result->close();
    $mysqli->close();
}
?>