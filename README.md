# Student Registration System

This repository contains a complete Student Registration System. Follow the instructions below to successfully download, set up, and run the project on your local system.

---

## Prerequisites

1. **Download XAMPP**:
   - [XAMPP Official Website](https://www.apachefriends.org/index.html)
   - Install and set it up on your machine to host the project locally.

2. **Basic Knowledge**:
   - Basic understanding of how to work with a local server and databases.

---

## Installation Guide

### 1. Download the Project

1. Go to the GitHub repository page.
2. Click the green **Code** button and select **Download ZIP**.
3. Extract the ZIP file to a folder on your local system.

---

### 2. Set Up the Local Server

#### Install a Local Server Environment

1. Download and install XAMPP from the official website.
2. Ensure Apache and MySQL are included in the installation.

#### Move the Project to the Server Folder

1. Copy the project folder (e.g., `student_registration`) to the server's directory:
   - **XAMPP**: Place the folder in `C:\xampp\htdocs\`.

---

### 3. Import the Database

#### Start the Local Server

1. Open the **XAMPP Control Panel**.
2. Start both **Apache** and **MySQL**.

#### Access phpMyAdmin

1. Open your browser and visit: [http://localhost/phpmyadmin](http://localhost/phpmyadmin).

#### Create a Database

1. Click on the **Databases** tab.
2. Create a new database named `student_db`.

#### Import the Database File

1. Select the newly created `student_db` database.
2. Click on the **Import** tab.
3. Click **Choose File** and select the `student_db.sql` file located in the project folder.
4. Click **Go** to import the database structure and data.

---

### 4. Run the Project

1. Open your browser.
2. Visit the following URL: [http://localhost/student_registration/index.php](http://localhost/student_registration/index.php).
3. The homepage of your Student Registration System should now appear.

---

### 5. Test the Functionality

#### Register a Student

1. Click on the **Register Now** button.
2. Fill out the registration form.
3. Submit the form to add a new student.

#### View Registered Students

1. Check the table displaying all registered students on the homepage.

---

## Troubleshooting

- **Database Connection Error**:
  - Ensure MySQL is running in the XAMPP Control Panel.
  - Check the `config.php` file for correct database credentials.

- **Page Not Found**:
  - Verify the project folder is placed correctly in `C:\xampp\htdocs\`.
  - Ensure the URL in the browser is correct.

- **Import Errors in phpMyAdmin**:
  - Make sure the `student_db.sql` file is not corrupted or incomplete.
  - Ensure the selected database matches the name `student_db`.

