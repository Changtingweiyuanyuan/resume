<style>
    .sk_cttext{
        border:1px #db0000 dashed;
    }
    #frontendblock{
        border-right:1px dashed #db0000;
        border-bottom:1px dashed #db0000;
    }
    #backendblock{
        border-bottom:1px dashed #db0000;
    }
    #graphic_designblock{
        border-right:1px dashed #db0000;
    }
    textarea{
        border:1px #db0000 solid;
        border-radius: 3px; 
        box-sizing:border-box;
        width:100%;
        min-height:120px;
        line-height: 20px;
        margin-left: auto;
        margin-right: auto;
        padding: 3px;
        word-wrap: break-word;
        overflow-x: hidden;
        overflow-y: auto;
        cursor:pointer;
    }
    .cttitle{
        margin:10px;
        font-size:1.8em;
    }
    .line{
    background-color: #db0000;
    width:100%;
    height:1px;
    margin-top:5vh;
    margin-bottom:5vh;
    }

    .skilladd{
        font-size:2em;
    }
    input:focus,select:focus,input,select{
    caret-color:#db0000;
    border:1px #db0000 dashed;
    outline:none;
    border-radius: 10px;
    vertical-align: top;
    padding:2px;
    width: 70%;
    }
    .ar>*{
        margin:8px;
    }
    .addskill_content{
        justify-content:center;
        align-items: center;
    }
    .fa-bolt{
        font-size: 1.4em;
        padding-right:5px;
    }
</style>


<h3>技能顯示及刪除</h3>
<br>
<pre>
此區域可修改隱藏及顯示技能
下方新增技能時
選取技能所屬類別 以及輸入技能名稱
</pre>
<hr><br>

<div class="por_title d-flex">
    <div class="col-4">類別</div>
    <div class="col-5">技能名稱</div>
    <div class="col-3 d-flex flex-nowrap justify-content-around">
        <div>show</div>|
        <div>del</div>
    </div>
</div>


<form action="api/editSk.php" method="post">
<?php
$sks=$Sk->all();
// print_r($pors);
echo '<hr>';

// 抓出不等於NULL的值 可以顯示在前台
foreach($sks as $k => $sk){
    // print_r($por);
?>

<div class="skill_content d-flex">

    <div class="col-4">
        <div><i class="fa fa-bolt" aria-hidden="true"></i> <?=$sk['ct'];?></div>

        </div>
    <div class="col-5" >
        <?=$sk['name'];?>
    </div>

    <div class="showdel col-3 d-flex flex-nowrap justify-content-around">
        <input type="checkbox" name="sh[]" value="<?=$sk['id'];?>" <?=($sk['sh']=='1')?'checked':'';?>>
        <input type="checkbox" name="del[]" value="<?=$sk['id'];?>">
        <input type="hidden" name="id[]" value="<?=$sk['id'];?>">
    </div>
</div>

<hr>
<?php
}
?>
<br>
<button type="submit" class="btn btn-danger">確認修改</button>
<button type="reset" class="btn btn-danger" onclick="reset()">重置</button>
</form>
<hr>





<form action="api/editSk.php" method="post">
<br>
<div class="addskill_content d-flex">
    <div class="al col-5 text-center">
        <div class="skilladd">新增技能</div>
        <img src="image/img++.png" style="width:150px;height:150px;">
    </div>
    <div class="ar col-7 ">
        <div>選擇分類</div>
        <select name="addskillct" >
            <option value="frontend">frontend</option>
            <option value="backend">backend</option>
            <option value="graphic_design">graphic_design</option>
            <option value="others">others</option>
        </select>
        <div>輸入名稱</div>
        <input type="text" name="addskillname">
    </div>

</div>
<br>
<br>
<button type="submit" class="btn btn-danger">確認修改</button>
<button type="reset" class="btn btn-danger" onclick="reset()">重置</button>
</form>



<br>
<div class="line"></div>
<br>
<h3>文字區修改</h3>
<br>
<pre>
技能敘述文字區域之修改
</pre>
<hr><br>

<form action="api/editSk.php" method="post">
<div class="sk_cttext d-flex flex-wrap">
<?php
$skts=$Skt->all();
foreach($skts as $skt){
?>
    <div class="col-6" id="<?=$skt['title'];?>block">
        <div class="cttitle"><?=$skt['title'];?></div>
        <textarea name="text[]" row="5">
        <?php
        echo str_replace(' ','',$skt['text']);
        ?>
        </textarea>
        <input type="hidden" name="id[]" value="<?=$skt['id'];?>">
    </div>
<?php
}?>
</div>

<br>
<button type="submit" class="btn btn-danger">確認修改</button>
<button type="reset" class="btn btn-danger" onclick="reset()">重置</button>
</form>