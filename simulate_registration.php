<?php
// Database credentials
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "student_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Sample data
$first_name = "John";
$last_name = "Doe";
$email = "john.doe@example.com";
$phone_number = "1234567890";
$dob = "2000-01-01";
$gender = "Male";
$address = "123 Main St";
$course = "Computer Science";

// Insert data into the database
$stmt = $conn->prepare("INSERT INTO student_registration (first_name, last_name, email, phone_number, dob, gender, address, course) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssssss", $first_name, $last_name, $email, $phone_number, $dob, $gender, $address, $course);

if ($stmt->execute()) {
    header("Location: index.php");
    exit();
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
