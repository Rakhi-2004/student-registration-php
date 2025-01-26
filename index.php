<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Educational Website</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        header {
            background: #35424a;
            color: #ffffff;
            padding: 10px 0;
            text-align: center;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #dddddd;
            text-align: left;
        }
        th {
            background-color: #35424a;
            color: white;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            color: #777;
        }
    </style>
</head>
<body>
    <header>
        <h1>Educational Website</h1>
        
    </header>

    <div class="container">
        <h2>Welcome to the Educational Website</h2>
        <p>Click the button below to register as a student.</p>
        <a href="form.html" class="button">Register Now</a>

        <h2>Registered Students</h2>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Connect to the database
                $conn = new mysqli('localhost', 'root', '', 'student_db');

                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                $sql = "SELECT first_name, last_name, gender, email FROM student_registration";
                $result = $conn->query($sql);

                if ($result === FALSE) {
                    echo "<tr><td colspan='3'>Error: " . $conn->error . "</td></tr>";
                } elseif ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>
                                <td>" . htmlspecialchars($row['first_name']) . " " . htmlspecialchars($row['last_name']) . "</td>
                                <td>" . htmlspecialchars($row['gender']) . "</td>
                                <td>" . htmlspecialchars($row['email']) . "</td>
                              </tr>";
                    }
                } else {
                    echo "<tr><td colspan='3'>No students registered yet.</td></tr>";
                }

                $conn->close();
                ?>
            </tbody>
        </table>
    </div>

    <footer>
        <p>&copy; 2025 Educational Website. All Rights Reserved.</p>
    </footer>
</body>
</html>
