<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/login.css">
	<link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
	<script src="./js/login.js"></script>
	<script src="./js/bootstrap.min.js"></script>
    <title>Đăng nhập</title>
</head>
<body>
    <div id="wrapper">
        <form action="log.php" method="post" id="form-login">
            <h1 class="form-heading">Đăng nhập</h1>
			<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>
            <div class="form-group">
                <i class="bi bi-person-plus"></i>
                <input type="text" name="username" required class="form-input" placeholder="Tên đăng nhập">
            </div>
            <div class="form-group">
                <i class="bi bi-key"></i>
                <input type="password" name="password" class="password" required class="form-input" placeholder="Mật khẩu">

            </div>
            <button type="submit" class="form-submit">Login</button>
        </form>
    </div>
</body>
</html>