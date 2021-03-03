<?php

$username = $_POST['username'];
$password = $_POST['password'];

$servername = "localhost";
$username = "root";
$password = "root";
$db = "beautyboosters_booking";

// create database connection
$conn = new mysqli($servername, $username, $password, $db);

// if connection fails kill connection
if ($conn -> connect_error) {
    die("Connection failed: ". $conn->connect_error);
}

// sql query
$sql = "INSERT INTO ea_user_settings SET username = $username, password = $password";

// if data is inserted
if ($conn -> query($sql) === true) {
    echo "Added: ".$username. ", ".$password;
}

$conn->close(); // close connection