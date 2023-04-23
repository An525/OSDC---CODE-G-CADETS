<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Signup</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
</head>
<body>
<header>
<main>
<div class="content-wrapper" >
<a href="index.php" style='text-decoration:none;'><h1>AyurvedaGeeks</h1></a>
</header>
<main>
<div class="product content-wrapper" style="padding-top:100px;">
<img src="./imgs/iconimg.jpg" width="500" height="500" alt="logo">
<div style="padding-left:100px;">
<h1 class="name" style="padding-top:0px;">SIGNUP</h1>

<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
    <h2>WELCOME</h2><br>
    <label for="username">USERNAME : </label>
    <input type="text" name="username" id="username"><br>
    <label for="password">PASSWORD : </label>
    <input type="password" name="password" id="password"><br><br>
    <input type="submit" name=submit value="SIGNUP">
</form>
<!--adding link to recipes for this ingredient-->
<form>
<a href="index.php?page=login" class="product" style="text-decoration:none">
    <div style="background: grey; text-align:center;border: 0;width: 400px;padding: 12px 0;text-transform: uppercase;font-size: 14px;
font-weight: bold;border-radius: 5px;cursor: pointer;">
<h3 style="color: #FFFFFF;">LOGIN</h3>
</div>
</a>
<p id="msg" style="text-align:center;font-size:larger"></p>
</form>
</div>
</div>

<?=template_footer()?>


<?php

if($_SERVER["REQUEST_METHOD"]=="POST")
{
    $username=$_POST['username'];
    $password=$_POST['password'];
    if(empty($username))
    {
        echo "<script>
            document.getElementById('msg').innerHTML = '<br> Please enter a username <br>';
            </script>";
    }
    else if(empty($password))
    {
        echo "<script>
            document.getElementById('msg').innerHTML = '<br> Please enter a password <br>';
            </script>";
    }
    else
    {
        try
        {
            $DATABASE_HOST = 'localhost';
            $DATABASE_USER = 'root';
            $DATABASE_PASS = '';
            $DATABASE_NAME = 'shoppingcart';
            $con=mysqli_connect($DATABASE_HOST,$DATABASE_USER,$DATABASE_PASS,$DATABASE_NAME);
            $sql="insert into log(username,password) values ('$username','$password')";
            $stmt=mysqli_query($con,$sql);
            mysqli_commit($con);
            mysqli_close($con);
            echo "<script>
            document.getElementById('msg').innerHTML = '<br>Successful Signup<br>';
            </script>";
        }
        catch(mysqli_sql_exception)
        {
            echo "<script>
            document.getElementById('msg').innerHTML = '<br>This username already exists<br>';
            </script>";
        
        }
        
    }
}
?>
