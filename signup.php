<?php 
if(isset($_POST['submit']))
{
	$username = $_POST['fullname'];
	$mobilenumber = $_POST['mobilenumber'];
	$email = $_POST['email'];
	$password = $_POST['password'];

	$qry = "INSERT INTO tbluser (Fullname, mobilenumber, email, password) VALUES ('$username','$mobilenumber','$email','$password')";
	include 'includes/config.php';

	mysqli_query($con,$qry);
    
    
   header("location:login.php");
	echo "<script>alert('Signup successful');</script>";

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
    <div class="container">
        <h1>Sign Up</h1>
        <form action="" method="post" onsubmit="return validateForm()">
            <label for="username">Fullname</label>
            <input type="text" id="username" name="fullname" required>

			<label for="mobilenumber">mobile number</label>
            <input type="text" id="mobilenumber" name="mobilenumber" required>
            
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            
            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>
            
            <input type="submit" name="submit" value="Sign Up">
        </form>
    </div>
    
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var mobilenumber = document.getElementById("mobilenumber").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            
            //const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
           // return regex.test(email);
      
            
            if (username === "" || mobilenumber ==="" ||email === "" || password === "" || confirmPassword === "") {
                alert("All fields are required!");
                return false;
            }
            
            if (password !== confirmPassword) {
                alert("Passwords do not match!");
                return false;
            }  }
            
            return true;
        
    </script>
</body>
</html>
