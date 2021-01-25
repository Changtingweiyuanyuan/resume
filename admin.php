<?php
include_once "base.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link href="/your-path-to-fontawesome/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="admin.css">
    <title>管理頁面</title>
</head>
<body>
<div class="nav">
    <a href="admin.php">admin</a>
    <a href="?do=intro">INTRO</a>
    <a href="?do=wk">WORK</a>
    <a href="?do=skills">SKILLS</a>
    <a href="?do=porfolio">PORTFOLIO</a>
    <a href="?do=contact">CONTACT</a>
    <a href="?do=album">ALBUM</a>
</div>
<div class="admin_content">
    
<?php
    $do=(isset($_GET['do']))?$_GET['do']:"main";
    $file="backend/".$do.".php";
    if(file_exists($file)){
        include_once $file;
    }else{
        include_once "backend/main.php";
    }

?>
</div>
</body>
</html>