<?php

include_once "../base.php";
print_r($_FILES);
echo '<br><hr><br>';
print_r($_POST);


if(!empty($_FILES['porbg']['tmp_name'])){
    $porbgrow=[];
    $pictype=array_pop(explode('.',$_FILES['porbg']['name']));
    $picname='por'.date("Ymd").date("his").'.'.$pictype;
    echo $picname;
    move_uploaded_file($_FILES['porbg']['tmp_name'],'../self_pic/'.$picname);
    $porbgrow['img']=$picname;
    $porbgrow['sh']='1';
    $porbgrow['por']='1';
    $porbgrow['porName']=$_POST['name'];
    $SelfPic->save($porbgrow);
}

$row['sh']='1';
$row['del']='0';
$row['name']=$_POST['name'];
$row['href']=$_POST['href'];

foreach($_POST['skills'] as $skill){
    if(in_array($skill,$_POST['skills'])){
        $row[$skill]='1';
    }
}

$Por->save($row);


to("../admin.php?do=porfolio");