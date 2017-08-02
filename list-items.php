<?php
//to list the items in a list
require_once('config.php');  //include the config file.
$con = open_mysql_connection(); //call this function to establish databse connection

echo $sqlToGetItems = " SELECT * FROM tbl_items WHERE category = 'rice' "; //write your query
$results = mysqli_query($con,$sqlToGetItems); //execute your query and store the resulting object in a variable
//$rows = mysqli_fetch_array($results); //fetch the query results into an array
?>
<ul class="item-lists" >
<?php
while($singleRow=mysqli_fetch_array($results,MYSQLI_BOTH)){ //loop the array of items. foreach is a loop in php and its function is to loop the array.
	//print_r($singleRow);
	?>
    <li><?php echo  $singleRow['name'] ?></li>
    <?php
}
mysqli_close($con);
?>
</ul>