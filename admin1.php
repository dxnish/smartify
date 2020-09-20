<?php
include_once 'dbConnection.php';
$ref      = @$_GET['q'];
$username = $_POST['uname'];
$password = $_POST['password'];

$username = stripslashes($username);
$username = addslashes($username);
$password = stripslashes($password);
$password = addslashes($password);
$result = mysqli_query($con, "SELECT username FROM admin WHERE username = '$username' and password = '$password'") or die('Error');
$count = mysqli_num_rows($result);
if ($count == 1) {
    session_start();
    if (isset($_SESSION['username'])) {
        session_unset();
    }
    $_SESSION["name"]     = 'Admin';
    $_SESSION["key"]      = 'mainsess';
    $_SESSION["username"] = $username;
    header("location:admin.php?q=0");
} else
    header("location:$ref?w=Warning : Access denied");
?>