
<!DOCTYPE html>
<html lang="en">

<head>
  
  <title>Old Age Home Management System || Login Page</title>
  <!-- base:css -->
  <link rel="stylesheet" href="../vendors/typicons/typicons.css">
  <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
 
  <link rel="stylesheet" href="../css/vertical-layout-light/style.css">
  <!-- endinject -->
  
</head>
<style>
    button[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
</style>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <!--<h3 style="color:seagreen;">OAHMS</h3>
              <h4>Hello! let's get started</h4>
             <h6 class="font-weight-light">Sign in to continue.</h6>-->
              <form class="pt-3" method="post">
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg border-left-0" id="username" placeholder="Username" name="username" value="<?php if(isset($_COOKIE["user_login"])) { echo $_COOKIE["user_login"]; } ?>">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg border-left-0" id="password" placeholder="Password" name="password" required="true" value="<?php if(isset($_COOKIE["userpassword"])) { echo $_COOKIE["userpassword"]; } ?>">
                </div>
                <div class="mt-3">
                  <button type="submit" class="btn btn-block btn-info btn-lg font-weight-medium auth-form-btn" name="submit">LOGIN</button>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <!-- <input type="checkbox" class="form-check-input" id="remember" name="remember" <?php if(isset($_COOKIE["user_login"])) { ?> checked <?php } ?>>
                      Keep me signed in-->
                    </label>
                  </div>
                  <a href="forgot-password.php" class="auth-link text-black">Forgot password?</a>
                </div>
               <a href="../index.php" class="auth-link text-black">Home Page!!!</a>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
<?php
session_start();
 error_reporting(0);
include("../includes/config.php");
if(isset($_POST['submit']))
{
   
 

   
   if($_SERVER['REQUEST_METHOD']=='POST'){
       
       
       
   
       $name=$_POST['username'];
       $pass=$_POST['password'];
          $sql= "SELECT * FROM tbldoctor WHERE username = '$name' AND password = '$pass' ";
          $result = mysqli_query($con,$sql);
          $check = mysqli_fetch_array($result);
          if(isset($check)){

            $_SESSION['isloggedin'] = "yes";
//             $_SESSION['alogin']=$_POST['username'];
// $_SESSION['did']=$num['ID'];
            header("Location: dadmin/dashboard.php", true, 301);
            exit();
   
          }else{
          echo '<script> alert ("Usename and password is Invalid"); </script> ';
          }
           
        }
       mysqli_close($conn);
       
}   
?>