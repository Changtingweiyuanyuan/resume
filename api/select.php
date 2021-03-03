<?php
include_once "../base.php";

switch($_POST['selecttype']){
        case "all":
            $_SESSION['select']="select * from `resume_porfolio` where `sh`='1'";
        break;
        case "frontend":
            $_SESSION['select']="select * from `resume_porfolio` where `sh`='1' AND `js`='1' OR `jquery`='1' OR `css`='1' OR `bootstrap`='1'";
        break;
        case "backend":
            $_SESSION['select']="select * from `resume_porfolio` where `sh`='1' AND `php`='1' OR `mysql`='1'";

        break;
}
$_SESSION['rungoto']=true;
echo $_POST['selecttype'];
