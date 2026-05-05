#Login PHP
#
#
<?php include 'config.php'; ?>
<form method="POST">
    <input type="text" name="username" placeholder="Username"><br>
    <input type="password" name="password" placeholder="Password"><br>
    <button name="login">Login</button>
</form>

<?php
if(isset($_POST['login'])){
    $u = $_POST['username'];
    $p = $_POST['password'];

    $res = $conn->query("SELECT * FROM users WHERE username='$u' AND password='$p'");
    
    if($res->num_rows > 0){
        header("Location: dashboard.php");
    } else {
        echo "Login Failed";
    }
}
?>
