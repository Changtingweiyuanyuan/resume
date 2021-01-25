<?php
include_once "../base.php";


$login=$Login->find(['id'=>'1']);
// print_r($login);
$acc=$login['acc'];
$pw=$login['pw'];

if(empty($_POST['acc']) || empty($_POST['pw'])){
    echo '帳號或密碼不得為空';
}elseif(isset($_POST['acc']) && isset($_POST['pw'])){
    if($_POST['acc']==$acc && $_POST['pw']==$pw){
        echo '登入成功';
    }elseif($_POST['acc']!=$acc && $_POST['pw']==$pw){
        echo '帳號輸入錯誤';
    }elseif($_POST['acc']==$acc && $_POST['pw']!=$pw){
        echo '密碼輸入錯誤';
    }else{echo '你真的本人？帳號跟密碼都錯ㄟ。。。';}
}


?>