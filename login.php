<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Tantri Resto</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600;700&display=swap');
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Nunito Sans', sans-serif;
            background-image: url('https://images.unsplash.com/photo-1504674900247-0877df9cc836?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDEyfHxmb29kfGVufDB8fHx8MTYwNDg0OTMwOQ&ixlib=rb-1.2.1&q=80&w=1080');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card-login {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 30px 25px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }
        .card-login h2 {
            color: #f9bdc0;
            font-size: 28px;
            margin-bottom: 15px;
            font-weight: 700;
        }
        .input-control {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 5px;
            border: none;
            font-size: 16px;
            background-color: #eee;
            color: #333;
        }
        .btn {
            width: 100%;
            padding: 12px;
            background-color: #f9bdc0;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            color: #333;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }
        .btn:hover {
            background-color: #e89a9e;
        }
        .icon {
            font-size: 60px;
            color: #f9bdc0;
            margin-bottom: 20px;
        }
        a {
            color: #f9bdc0;
            text-decoration: none;
            font-size: 14px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="card-login">
            <i class="fas fa-utensils icon"></i>
            <h2>Login - Tantri Resto</h2>
            <form action="" method="post">
                <input type="text" name="user" placeholder="Username" class="input-control">
                <input type="password" name="pass" placeholder="Password" class="input-control">
                <button type="submit" name="login" class="btn">Login</button> 
            </form>
            <?php  
                // cek jika tombol login di tekan
                if(isset($_POST['login'])){
                    include 'database.php';
                    // cek data login
                    $query_select = 'select * from users where username = "'.$_POST['user'].'" and password = "'.md5($_POST['pass']).'" ';
                    $run_query_select = mysqli_query($conn, $query_select);
                    $d = mysqli_fetch_object($run_query_select);

                    if ($d) {
                        //buat session
                        $_SESSION['uid']    = $d->iduser;
                        $_SESSION['uname']  = $d->namalengkap;
                        header('location:admin/index.php');
                    } else {
                        echo '<p style="color: #f9bdc0;">Username atau password salah</p>';
                    }
                }
            ?>
        </div>
    </div>

</body>
</html>
