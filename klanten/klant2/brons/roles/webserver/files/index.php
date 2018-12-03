<html>
<head>
<style>
table, th, td{
border: 1px solid black;
}
</style>
</head>
<body>
<h1>
Hosted On Server :
<?php
echo gethostname();
?>
</h1>
<?php
$servername = "192.168.135.121";
$username = "user";
$password = "password";
$dbname = "testdb";

// creeer connectie
$conn = new mysqli($servername,$username,$password,$dbname);
// check connectie
if ($conn->connect_error) {
die("Connection failed:".$conn->connect_error);
}

$sql = "SELECT id,first_name,last_name FROM authors";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
echo "<table><tr><th>ID</th><th>Naam</th></tr>";

        //data output rows
  while($row = $result->fetch_assoc()) {
   echo "<tr><td>" . $row["id"]. "</td><td>" . $row["first_name"]. "" . $row["last_name"]. "<
/td></tr>";
  }
  echo "</table>";
} else {
echo "0 results";
}
$conn->close();
?>
</body>
</html>
