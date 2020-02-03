<?php

/*
Name:           Fatima Velic
Course:         CS412 Web application development
Assignment:     Little Library Management System
Due date:       January 10th, 2020 - final version
last modified:  January 7th, 2020
Purpuse:        Script runs when administrator requests to logout from the system. 
*/

session_start(); 
$_SESSION = array();
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 60*60,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}
unset($_SESSION['login']);
session_destroy(); // destroy session
header("location:../adminlogin.php"); 
?>

