<!-- 選取格子換色 -->
<style>
.selfIntro{
    width:100%;
    display:flex;
    justify-content: space-evenly;
}

.textC,.textE{
    border:1px #db0000 solid;
    border-radius: 3px;
    /* padding:2%; */
}
.show,.del,.selfPic.basicContent{
    display:flex;
    flex-wrap:wrap;
    justify-content: center;
    align-items: center;
}


.show,.del{
    display:flex;
    justify-content: space-evenly;
}

.line{
    background-color: #db0000;
    width:100%;
    height:1px;
    margin-top:5vh;
    margin-bottom:5vh;
}

form input[type=text]{
    width:80%;
}

.introInsert:focus,.introInsert{
    caret-color:#db0000;
    border:1px #db0000 dashed;
    outline:none;
    border-radius: 10px;
    vertical-align: top;
    padding:2px;
    width: 300px;
    margin-bottom:5vh;
}

.insertTitle *{
    font-size:1.2em;
}

.introInsertblock{
    display:none;
}

textarea{
    min-height:15vh;
}

</style>


<h3>修改基本資料</h3><br>
<br>
<pre>
個人基本資料可做修改
</pre>
<hr><br>
    <div class="basicContent mb-2">
<?php
$basic=$BasicIntro->all();
foreach($basic as $b){
?>
<form action="api/changeBasicintro.php" method="post">
<div class="basic">姓名:: <input type="text" name="name" class="textC mb-3" placeholder="<?=$b['name'];?>"></div>
<div class="basic">地址:: <input type="text" name="addr" class="textC mb-3" placeholder="<?=$b['addr'];?>"></div>
<div class="basic">信箱:: <input type="text" name="email" class="textC mb-3" placeholder="<?=$b['email'];?>"></div>
<div class="basic">畢業:: <input type="text" name="graduate" class="textC mb-3" placeholder="<?=$b['graduate'];?>"></div>
<div class="basic">求職:: <input type="text" name="position" class="textC mb-3" placeholder="<?=$b['position'];?>"></div>

<button type="submit" class="btn btn-danger">確認修改</button>
<button type="reset" class="btn btn-danger">重置</button>

</form>
<?php
}
?>
</div>

<div class="line"></div>

<form action="api/uploadImgintro.php" method="post" enctype="multipart/form-data">
    <h3>新增照片</h3>
    <br>
    <pre>
新增個人照片(前台僅限顯示一張)
下方可以勾選顯示照片及做刪除動作
    </pre>
<hr><br>
    <table style="margin:auto">
        <tr>
            <td>動畫圖片：</td>
            <td><input type="file" name="pic"></td>
        </tr>
    </table>
    <div>
        <input type="hidden" name="table" value="intro">
        <input type="submit" value="新增" class="btn btn-danger">
        <input type="reset" value="重置" class="btn btn-danger">
    </div>
</form>

<div class="line"></div>

<div class="d-flex">
    <h4 class="col-10 text-center">個人照片</h4>
    <div class="show col-2">
    <span>show</span> | 
    <span>del</span>
    </div>
</div>
<?php
$pics=$SelfPic->all(['intro'=>'1']);
foreach($pics as $pic){
    // print_r($pic);
?>
<br>
<form action="api/editImgintro.php" method="post">
<div class="selfPic_content d-flex">

    <div class="selfPic col-10 text-center">
        <img src="self_pic/<?=$pic['img'];?>" style="width:100px;height:120px;">
    </div>

    <div class="show col-1">
        <input type="radio" name="sh[]" value="<?=$pic['id'];?>" <?=($pic['sh']==1)?'checked':'';?>>
    </div>
    
    <div class="del col-1">
    <input type="checkbox" name="del[]" value="<?=$pic['id'];?>">
    </div>
</div>
<br>
<input type="hidden" name="id[]" value="<?=$pic['id'];?>">

<?php
}
?>

<button type="submit" class="btn btn-danger">確認修改</button>
<button type="reset" class="btn btn-danger">重置</button>
</form>

<div class="line"></div>



<h3>新增及修改自傳</h3>
<br>
<pre>
自傳需於前台顯示中英兩種版本
可做單筆修改及刪除動作
下方也再新增自傳
</pre>
<hr><br>
<?php
$selfIntro=$SelfIntro->all();
// $basicIntro=$BasicIntro->all();
// print_r($selfIntro);
foreach($selfIntro as $self){
?>
<br>
<div class="d-flex mb-2">
    <div class="col-5">中文自傳</div>
    <div class="col-5">英文自傳</div>
    <div class="show col-2">
        <span>show</span> | 
        <span>del</span>
    </div>
</div>

<form action="api/changeSelfintro.php" method="post">
<div class="selfIntro">

    <textarea name="textC[]" row="5" class="textC col-5 mr-3"><?=$self['textC'];?></textarea>

    <textarea name="textE[]" row="5" class="textE col-5"><?=$self['textE'];?></textarea>

    <div class="show col-1">
        <input type="radio" name="sh[]" value="<?=$self['id'];?>" <?=($self['sh']==1)?'checked':'';?>>
    </div>
    
    <div class="del col-1">
    <input type="checkbox" name="del[]" value="<?=$self['id'];?>">
    </div>
</div>
<br>
<input type="hidden" name="id[]" value="<?=$self['id'];?>">

<?php
}
?>

<button type="submit" class="btn btn-danger">確認修改</button>
<button type="reset" class="btn btn-danger">重置</button>
</form>
<br><hr><br>
<form action="api/changeSelfintro.php" method="post">
<div id="insertBtn">
<button type="button" class="introInsert" onclick="op('.introInsertblock')">新增自傳</button>
<button type="submit" class="introInsert" style="display:none">點擊做新增</button>
</div>
<br>

<div class="introInsertblock">
    <div class="insertTitle d-flex">
        <div class="col-5">中文自傳</div>
        <div class="col-5">英文自傳</div>
    </div>
    <hr>
    <div>
    <textarea name="textC_insert" row="5" class="textC col-5 mr-3"></textarea>
    <textarea name="textE_insert" row="5" class="textC col-5 mr-3"></textarea>
    </div>
</div>
</form>
<div class="line"></div>
<br>

<script>
    function op(x){
        $(x).fadeIn();
        console.log($('#insertBtn button[type=button]'));
        $('#insertBtn button[type=button]').css('display','none');
        $('#insertBtn button[type=submit]').css('display','block');
    }
</script>