<?php
date_default_timezone_set("Asia/Taipei");
session_start();


$Login=new DB("resume_login");
$BasicIntro=new DB("resume_basic_intro");
$SelfIntro=new DB("resume_self_intro");
$SelfPic=new DB("resume_image");
$Work=new DB("resume_work_experience");
$Por=new DB("resume_porfolio");
$Sk=new DB("resume_skills");
$Skt=new DB("resume_sk_text");



class DB{

protected $dsn="mysql:host=localhost;charset=utf8;dbname=resume";
protected $pdo="";
protected $table="";

function __construct($table){
    $this->table=$table;
    $this->pdo=new PDO($this->dsn,"root","");
}




function find($arr){
    $sql="select * from $this->table ";
    if(is_array($arr)){
        foreach($arr as $k => $v){
            $tmp[]=sprintf("`%s`='%s'",$k,$v);
        }
        $sql.=" where ".implode(" && ",$tmp);
    }else{
        $sql.=" where `id`='$arr'";
    }
    // echo $sql;
    return $this->pdo->query($sql)->fetch(pdo::FETCH_ASSOC);
}

function del($arr){
    $sql="delete from $this->table ";
    if(is_array($arr)){
        foreach($arr as $k => $v){
            $tmp[]=sprintf("`%s`='%s'",$k,$v);
        }
        $sql.=" where ".implode(" && ",$tmp);
    }else{
        $sql.=" where `id`='$arr'";
    }
    // return:影響的行數
    return $this->pdo->exec($sql);
}

function all(...$arr){
    $sql="select * from $this->table ";
    if(isset($arr[0])){
        if(is_array($arr[0])){
        foreach($arr[0] as $k => $v){
            $tmp[]=sprintf("`%s`='%s'",$k,$v);
        }$sql.=" where ".implode(" && ",$tmp);
        }else{
            $sql.= $arr[0];
        }
    }

    if(isset($arr[1])){
        $sql.=$arr[1];
    }
    // print_r($sql);
    return $this->pdo->query($sql)->fetchAll();
}

function count(...$arr){
    $sql="select count(*) from $this->table";
    // if(!empty($arr[0]) && is_array($arr[0])){
    if(isset($arr[0])){
        if(is_array($arr[0])){
            foreach($arr[0] as $k => $v){
                $tmp[]=sprintf("`%s`='%s'",$k,$v);
            }$sql.=" where ".implode(" && ",$tmp);
        }else{
            $sql.= $arr[0];
        }
    }
    if(isset($arr[1])){
        $sql.=$arr[1];
    }
    // echo $sql;
    return $this->pdo->query($sql)->fetchcolumn();
}

function save($arr){
    if(isset($arr['id'])){
        //update
        foreach($arr as $key => $value){
            $tmp[]=sprintf("`%s`='%s'",$key,$value);
        }

        $sql="update $this->table set ".implode(',',$tmp)." where `id`='{$arr['id']}'";
    }else{
        //insert

        $sql="insert into $this->table (`".implode("`,`",array_keys($arr))."`) values('".implode("','",$arr)."')";
    }
    // echo $sql;
    return $this->pdo->exec($sql);
}


function q($sql){
    // echo $sql;
    return $this->pdo->query($sql)->fetch();
}

function qall($sql){
    // echo $sql;
    return $this->pdo->query($sql)->fetchAll();
}

}

function to($url){
    header("location:".$url);
}


?>