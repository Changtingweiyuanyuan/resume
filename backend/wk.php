<style>
    @import url('https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap');
    .line{
    background-color: #db0000;
    width:100%;
    height:1px;
    margin-top:5vh;
    margin-bottom:5vh;
}
body{
    overflow-x:hidden;
}
.wk_content{
    flex-direction:column;
    flex-wrap:wrap !important;
    width:100%;
    width:100vw;
}
.wk{
    border-bottom:#db000050 1px solid;
    padding-bottom:5vh;
    margin-bottom:5vh;
    flex-wrap:wrap;
    flex-direction: column;
    width:100vw;
    overflow:hidden;
}


.wk_text{
height:25vh;
display:flex;
align-items: center;
border-bottom:1px dashed #000; 
margin-bottom:5vh;
}
.wkButton{
    width:100%;
    text-align:right;
}
textarea:focus,select:focus,textarea,select{
    caret-color:#db0000;
    border:1px #db0000 dashed;
    outline:none;
    border-radius: 10px;
    vertical-align: top;
    word-break:break-all
}

.wk_e{
    display:flex;
    flex-direction: column;
}
.wk_c{
    flex-direction: column;
}

.wk_title{
    font-size: 4em;
    font-family: 'Fredericka the Great';
}

.uploadButton{
    align-items: center;
    margin:10%;
    margin-top:5%;
    margin-bottom:0;
}

#fileButton{
    opacity: 0;
    cursor: pointer;
}

label span{
    position: absolute;
    cursor: pointer;
}

label{
    width:80px;
    height:80px;
    border-radius: 50%;
    border:1px #db0000 dashed;
    display: flex;
    justify-content: center;
    align-items: center;
    /* font-size:2em; */
    font-size:.5em;
    cursor: pointer;
    color:#db0000;
    font-weight: bold;
    position:relative;
}


form div input{
    margin:3%;
} 


.fa-paint-brush{
    font-size:1.6em;
}

</style>
<h3>目前工作經歷修改</h3>

<br>
<pre>
可做工作經歷的文字修改
</pre>
<hr><br>



<div class="wk_content d-flex">
<form action="api/edit_wk.php" method="post">
<?php
$wks=$Work->all();
foreach($wks as $wk){
?>


<div class="wk_title col-12"><?=$wk['id'];?>.</div>
<div class="wk d-flex col-12">
    <div class="mb-3"><b>原先內容</b></div>
    <div class="wk_text col-8">
        <pre>
<?=$wk['text'];?>
        </pre>
    </div>
    <div class="mb-3"><b>預修改內容</b>&nbsp;<i class="fa fa-paint-brush" aria-hidden="true"></i>....</div>
    <div class="col-8 d-flex" style="width:100%;overflow:hidden;">
        <textarea type="text" name="wk_revise[]" style="min-height:120px;width:100%;word-break:break-all">
<?=$wk['text'];?>
        </textarea>
    </div>

        <input type="hidden" name="id[]" value="<?=$wk['id'];?>">
</div>


<?php
}
?>
</div>
<br><br>



<div class="wkButton">
    <button type="submit" class="btn btn-danger">確定修改</button>
    <button type="reset" class="btn btn-danger">重置</button>
</div>


</form>








<br>
<div class="line"></div>
<br>
<h3>工作經歷照片新增</h3>
<br>
<pre>
可上傳多張工作經歷照片
前台顯示<u>兩張為限</u>
</pre>
<hr><br>

<form action="api/uploadImgwk.php" method="post" enctype="multipart/form-data">
<div class="col-12 d-flex uploadButton">
    <label>
    <span><img src="image/img++.png" style="width:200px;height:200px;"></span>
    <input type="file" name="pic" id="fileButton">
    </label>
    <div id="filepath" style="font-size:1.4em;margin-left:5em;"></div>   
</div>

<input type="hidden" name="table" value="intro">
<div class="wkButton">
    <button type="submit" class="btn btn-danger">新增</button>
</div>

</form>

<br>
<div class="line"></div>
<br>














<div class="wk_e">
    <div class="d-flex w-100 mb-3 ">
        <h4 class="col-10 text-center">以往工作相關照片</h4>
        <div class="col-2 d-flex justify-content-between">
        <span>show</span> | 
        <span>del</span>
        </div>
    </div>

<br>


<form action="api/editImgwk.php" method="post" class="d-flex flex-column">
<?php
$pics=$SelfPic->all(['wk'=>'1']);
foreach($pics as $pic){
?>
<div class="d-flex w-100 mb-3 align-items-center">
        <div class="col-10 text-center">
            <img src="self_pic/<?=$pic['img'];?>" style="width:100px;height:120px;">
        </div>
        <div class="col-1">
            <input onchange="shbox()" class="shbox" type="checkbox" name="sh[]" value="<?=$pic['id'];?>" <?=($pic['sh']==1)?'checked':'';?>>
        </div>
        <div class="col-1">
            <input type="checkbox" name="del[]" value="<?=$pic['id'];?>">
        </div>
        <input type="hidden" name="id[]" value="<?=$pic['id'];?>">
</div>
<?php
}
?>
<br>
<div class="wkButton">
    <button type="submit" class="btn btn-danger">確認修改</button>
    <button type="reset" class="btn btn-danger">重置</button>
</div>
</form>

</div>


<div class="line"></div>

</pre>


<script>
function shbox() {
    console.log($(".shbox:checked").length);
    if($(".shbox:checked").length>2){
        // $(".shbox:checked").attr('checked',false);
        $(this).attr('disabled',true);
    }else{
        
    }
};



$(document).ready(function() {
        $('.js-example-basic-multiple').select2();
        // 把載入的圖片路徑show出來
        $("label input[type=file]").on('change',function filepath(){
            console.log(124);
            $("#filepath").text($("#fileButton").val());
        })

    });

</script>