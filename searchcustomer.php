<?php
$q=$_GET['searchstring'];
if($q!=NULL) {
$connection = mysqli_connect('localhost', 'root', '', 'db_plants');
$sql="SELECT * FROM herbal_plants WHERE name LIKE '".$q."%'";
$result = mysqli_query($connection, $sql);
$num = mysqli_num_rows($result);
if($num > 0) {
while($row = mysqli_fetch_array($result)) {
 echo "<a href=\"#\" onclick=\"displayInfo(".$row['id'].")\"><h2>".$row['name'].'</h2><br><img src="'.$row['thumbnail'].'"/>'."</a>";
 }

}else{
echo "<h3>No results found</h3>";
}
}
?>