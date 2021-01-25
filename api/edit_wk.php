<?php
include_once "../base.php";

print_r($_POST);


    for($i=0;$i<count($_POST['id']);$i++){
        $row['text']=$_POST['wk_revise'][$i];
        $row['id']=$_POST['id'][$i];
        $Work->save($row);
    }

    to("../admin.php?do=wk");
