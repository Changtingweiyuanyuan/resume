<?php

include_once "../base.php";

$initialB=$BasicIntro->all();
print_r($initialB[0]);
echo '<br><br><hr>';
$_POST['id']='1';
$_POST['name']=($_POST['name']==NULL)?$initialB[0]['name']:$_POST['name'];
$_POST['addr']=($_POST['addr']==NULL)?$initialB[0]['addr']:$_POST['addr'];
$_POST['email']=($_POST['email']==NULL)?$initialB[0]['email']:$_POST['email'];
$_POST['graduate']=($_POST['graduate']==NULL)?$initialB[0]['graduate']:$_POST['graduate'];
$_POST['position']=($_POST['position']==NULL)?$initialB[0]['position']:$_POST['position'];
print_r($_POST);
var_dump($_POST['email']);

$BasicIntro->save($_POST);
to("../admin.php?do=intro");