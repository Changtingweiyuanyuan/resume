<!-- 技能的顯示及刪除 -->
<?php

include_once "../base.php";

print_r($_POST);

if(isset($_POST['sh'])){
for($i=0;$i<count($_POST['id']);$i++){
    $row['id']=$_POST['id'][$i];
    $row['sh']=(isset($_POST['sh']) && in_array($_POST['id'][$i],$_POST['sh']))?1:0;
    print_r($row['sh']);
    $Sk->save($row);
}
}
if(isset($_POST['del'])){
    foreach($_POST['del'] as $p){
        $Sk->del($p);
        }
}


// 新增技能(ct/name/sh/del)




if(isset($_POST['text'])){
    for($i=0;$i<count($_POST['id']);$i++){
        $row['text']=$_POST['text'][$i];
        $row['id']=$_POST['id'][$i];
        $Skt->save($row);
    }
}

if(isset($_POST['addskillct']) && isset($_POST['addskillname'])){
    $row['ct']=$_POST['addskillct'];
    $row['name']=$_POST['addskillname'];
    $Sk->save($row);
}



to("../admin.php?do=skills");