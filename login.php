

<?php
session_start();
$emailError="";
$passwordError="";
if(isset($_POST['submit']))
{
    $email = $_POST['email'];
    $password = $_POST['password'];

    $qry = "SELECT * FROM tbluser WHERE email='$email' and password='$password'";

    include 'includes/config.php';
    $result = mysqli_query($con,$qry);

    if(mysqli_num_rows($result)>0)
    {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['fullname'] = $row['Fullname'];
        $_SESSION['email'] = $row['email'];
        echo "<script>alert('Login Successful'); window.location.href='index.php';</script>";
    }
    else
    {
        echo "<script>alert('Invalid Email or Password');</script>";

    }
}/*
<?php
function validateUsername($username) {
    $regex = '/^[a-zA-Z0-9_.-]{3,20}$/'; // Allows letters, numbers, dots, underscores, and hyphens. Minimum length is 3 and maximum length is 20.
    return preg_match($regex, $username);
}

function validatePassword($password) {
    $regex = '/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/'; // Requires at least 8 characters, including at least one letter and one number.
    return preg_match($regex, $password);
}

$username = $_POST['username'];
$password = $_POST['password'];

if (validateUsername($username) && validatePassword($password)) {
    echo "Username and password are valid.";
} else {
    echo "Invalid username or password.";
}
?>*/



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="" method="post" onsubmit="return validateForm()">
            <label for="username">Email</label>
            <input type="text" id="email" name="email" required>
            
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            
            <input type="submit" name="submit" value="Login">
        </form>
    </div>
    
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            
            if (username === "" || password === "") {
                alert("Both username and password are required!");
                return false;
            }
            
            return true;
        }
    </script>
</body>
</html>
