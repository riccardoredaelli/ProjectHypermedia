<?php
//connection to db
$mysqli = new mysqli("localhost", "root", "", "data_tim");

if (mysqli_connect_errno()) { //verify connection
    echo "Error to connect to DBMS: ".mysqli_connect_error(); //notify error
    exit(); //do nothing else 
}
else {
    # extract results mysqli_result::fetch_array
    $query = "SELECT *
                FROM dispositivo,dispositivo_smartlifeservice,smartlifeservice
                WHERE dispositivo.id=dispositivo_smartlifeservice.id_dispositivo_dss AND smartlifeservice.idsmartlifeservices=dispositivo_smartlifeservice.id_smartlifeservice_dss
                ORDER BY dispositivo.id";
    //query execution
    $result = $mysqli->query($query);
    //if there are data available
    if($result->num_rows >0)
    {
        $myArray = array();//create an array
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);
        }
        echo json_encode($myArray);
    }
    //free result
    $result->close();
    //close connection
    $mysqli->close();
}