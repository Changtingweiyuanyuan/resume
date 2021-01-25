<!-- 修改自傳 -->
<?php
include_once "../base.php";

print_r($_POST);

// print_r($_POST['sh']);

echo '<br><hr>';
if(isset($_POST['textC'])){

$row=[];
for($i=0;$i<count($_POST['textC']);$i++){
    $row['textC']=$_POST['textC'][$i];
    $row['textE']=$_POST['textE'][$i];
    $row['id']=$_POST['id'][$i];
    $row['sh']=(isset($_POST['sh']) && in_array($_POST['id'][$i],$_POST['sh']))?1:0;
    $SelfIntro->save($row);
}

}

if(isset($_POST['textC'])){
foreach($_POST['id'] as  $k => $id){
    if(isset($_POST['del']) && in_array($id,$_POST['del'])){
        $SelfIntro->del($id);
    }
}
}


if(isset($_POST['textC_insert']) && isset($_POST['textE_insert'])){
    $row['textC']=$_POST['textC_insert'];
    $row['textE']=$_POST['textE_insert'];
    $row['sh']='0';
    $SelfIntro->save($row);
}


to("../admin.php?do=intro");



?>