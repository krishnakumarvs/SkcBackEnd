<?php
header("Access-Control-Allow-Origin: *");
//to list the items as API in json format.
require_once('config.php');  //include the config file.
$con = open_mysql_connection(); //call this function to establish databse connection
$sqlToGetItems = " SELECT name FROM tbl_items WHERE category = 'rice' "; //write your query
$results = mysqli_query($con,$sqlToGetItems); //execute your query and store the resulting object in a variable
$rows = mysqli_fetch_array($results); //fetch the query results into an array
$jsonResults  = json_encode($rows); // convert our array into json.
echo '<pre>';
// echo $jsonResults; 
$newarray =  array(); 
while($singleRow=mysqli_fetch_array($results,MYSQLI_BOTH)){ 
$newarray[]=$singleRow;
}
echo '<pre>';
echo json_encode($newarray); // just print your result in the page so that this will be accessible 
?>