
<?php

include_once "../base.php";

print_r($_POST);

// 處理顯示及刪除


if(isset($_POST['sh'])){
    for($i=0;$i<count($_POST['id']);$i++){
        $row['id']=$_POST['id'][$i];
        $row['sh']=(isset($_POST['sh']) && in_array($_POST['id'][$i],$_POST['sh']))?1:0;
        $Por->save($row);
    }
}

if(isset($_POST['del'])){
    foreach($_POST['del'] as $p){
        $Por->del($p);
        }
}



//-------------------



$skills=[
    'php','mysql','js','jquery','css','bootstrap','ps','ai'
];

// 修改作品集
if(isset($_POST['re_name'])){
    $row['name']=$_POST['re_name'];
    $row['href']=$_POST['re_href'];
    $row['id']=$_POST['re_id'];

    if(isset($_POST['re_skills'])){
    foreach($skills as $s){
        $row[$s]=(in_array($s,$_POST['re_skills']))?'1':'0';
    }}
    // print_r($row);
    $Por->save($row);
};
echo '<hr>';
// print_r($_FILES['re_porbg']);
echo '<br><hr><br>';

// 先找到por的name 對應selfpic的porName
$reviseId=$Por->find($_POST['re_id']);
// print_r($reviseId['name']);
$revisePorbg=$SelfPic->q("SELECT * FROM `image` WHERE `porName`='{$reviseId['name']}'");
echo '<hr>';
// print_r($revisePorbg);
echo '<hr>';

if(!empty($_FILES['re_porbg']['tmp_name'])){
    $re_porbgrow=[];
    $pictype=array_pop(explode('.',$_FILES['re_porbg']['name']));
    $picname='por'.date("Ymd").date("his").'.'.$pictype;
    // echo $picname;
    move_uploaded_file($_FILES['re_porbg']['tmp_name'],'../self_pic/'.$picname);
    $re_porbgrow['img']=$picname;
    $re_porbgrow['porName']=$_POST['re_name'];
    $re_porbgrow['sh']='1';
    $re_porbgrow['por']='1';
    print_r($re_porbgrow);
    $SelfPic->save($re_porbgrow);
}


to("../admin.php?do=porfolio");
