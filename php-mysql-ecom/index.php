#Home Page#
#
#
<?php include 'config.php'; ?>
<!DOCTYPE html>
<html>
<head>
    <title>Shop</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Product List</h2>

<?php
$result = $conn->query("SELECT * FROM products");
while($row = $result->fetch_assoc()) {
    echo "<p>" . $row['name'] . " - $" . $row['price'] . "</p>";
}
?>

<a href="login.php">Login</a>
</body>
</html>
