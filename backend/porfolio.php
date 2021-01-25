<style>
.line{
    background-color: #db0000;
    width:100%;
    height:1px;
    margin-top:5vh;
    margin-bottom:5vh;
}

input:focus,select:focus,input,select{
    caret-color:#db0000;
    border:1px #db0000 dashed;
    outline:none;
    border-radius: 10px;
    vertical-align: top;
    padding:2px;
    width: 100%;
}

label{
    width:80px;
    height:80px;
    border-radius: 50%;
    border:1px #db0000 dashed;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size:2em;
    cursor: pointer;
    color:#db0000;
    font-weight: bold;
    position:relative;
}

#fileButton{
    opacity: 0;
    cursor: pointer;
}

label span{
    position: absolute;
    cursor: pointer !important;
}

.por_insert{
    display:flex;
    align-items: flex-start;
}

.por_content{
    align-items: center;
}

.por_select{
    width:100%;
    background-color: none;
}

.select2-container--default .select2-selection--multiple .select2-selection__choice{
    background-color: var(--main-background_white) !important;
}
span{
    background-color: #EEECE8 !important;
}

.uploadButton{
    align-items: center;
    flex-direction: column;
}

.porSkillInsert{
    cursor:pointer;
}

.fa-pencil{
    font-size: 1.5em;
}

</style>
<h3>作品集隱藏及顯示</h3>
<br>
<pre>
此區域可修改隱藏及顯示作品
點擊鉛筆圖樣 可修改單筆作品資料
</pre>
<hr><br>

<div class="por_title d-flex">
    <div class="col-1">編輯</div>
    <div class="col-3">作品名稱</div>
    <div class="col-3">連結</div>
    <div class="col-3">使用技能</div>
    <div class="col-2 d-flex flex-nowrap justify-content-around">
        <div>show</div>|
        <div>del</div>
    </div>
</div>


<form action="api/editPor.php" method="post" enctype="multipart/form-data">
<?php
$pors=$Por->all();
// print_r($pors);
echo '<hr>';

// 抓出不等於NULL的值 可以顯示在前台
foreach($pors as $k => $por){
    // print_r($por);
?>


<div class="por_content d-flex">
    <div class="col-1">
    <i class="fa fa-pencil" aria-hidden="true" onclick="op('#porReviseBlock<?=$por['id'];?>','#cvr','backend/porReviseBlock.php')"></i>
    </div>



    <div class="col-3">
        <div class="mb-3"><?=$por['name'];?></div>


        <img src="
        <?php
        $imgs=$SelfPic->q("select * from `image` where `img` LIKE 'por%' && `porName`='".$por['name']."'");
        echo 'self_pic/'.$imgs['img'];
        ?>
        " style="width:100px;height:100px;">
        
        </div>
    <div class="col-3" >
        <u><?=$por['href'];?></u>
    </div>
    <div class="col-3" id="sk">
        <?=($por['php'])?'<div>php</div>':'';?>
        <?=($por['mysql'])?'<div>mySQL</div>':'';?>
        <?=($por['js'])?'<div>javaScript</div>':'';?>
        <?=($por['jquery'])?'<div>jQuery</div>':'';?>
        <?=($por['css'])?'<div>css</div>':'';?>
        <?=($por['bootstrap'])?'<div>bootstrap</div>':'';?>
        <?=($por['ps'])?'<div>photoshop</div>':'';?>
        <?=($por['ai'])?'<div>illustrator</div>':'';?>
    </div>

    <div class="showdel col-2 d-flex flex-nowrap justify-content-around">
        <input type="checkbox" name="sh[]" value="<?=$por['id'];?>" <?=($por['sh']=='1')?'checked':'';?>>
        <input type="checkbox" name="del[]" value="<?=$por['id'];?>">
        <input type="hidden" name="id[]" value="<?=$por['id'];?>">
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








<?php
$pors=$Por->all();
foreach($pors as $k => $por){
    ?>
    <form action="api/editPor.php" method="post" enctype="multipart/form-data">
<!-- 修改原本作品集block -->
<div style="display:none;" id="porReviseBlock<?=$por['id'];?>">
    <a onclick="cl('#porReviseBlock<?=$por['id'];?>')" style="position:absolute; right:10px; top:5px; cursor:pointer; z-index:9999;">X</a>
    
    <div>修改的作品ID為<?=$por['id'];?></div>
    <input type="hidden" name="re_id" value="<?=$por['id'];?>">
    <br>

    <div class="por_title d-flex">
        <div class="col-3">作品名稱</div>
        <div class="col-3">圖片</div>
        <div class="col-3">連結</div>
        <div class="col-3">使用技能</div>
    </div>



    <div class="por_content d-flex">
        <div class="col-3">
            <input type="text" value="<?=$por['name'];?>" name="re_name" id="re_name">
        </div>
        <div class="col-3">
            <img src="
            <?php
            $imgs=$SelfPic->q("select * from `image` where `img` LIKE 'por%' && `porName`='".$por['name']."'");
            ?>
            " style="width:50px;height:70px;">
        </div>
        <div class="col-3">
            <input type="text" value="<?=$por['href'];?>" name="re_href" id="re_href">
            
        </div>
        
        <div class="col-3">
        <?=($por['php'])?'<div>php</div>':'';?>
        <?=($por['mysql'])?'<div>mySQL</div>':'';?>
        <?=($por['js'])?'<div>javaScript</div>':'';?>
        <?=($por['jquery'])?'<div>jQuery</div>':'';?>
        <?=($por['css'])?'<div>css</div>':'';?>
        <?=($por['bootstrap'])?'<div>bootstrap</div>':'';?>
        <?=($por['ps'])?'<div>photoshop</div>':'';?>
        <?=($por['ai'])?'<div>illustrator</div>':'';?>
        </div>

    </div>

    重新上傳作品圖片:
    <div class="col-12 d-flex uploadButton">
    <label for="">
    <span><img src="image/img++.png" style="width:80px;height:80px;"></span>
    <input type="file" name="re_porbg" id="fileButton">
    </label>
    <div id="filepath"></div>   
    </div>

    <div class="col-12">
    <div>重新選擇運用技能:</div>
    <select class="js-example-basic-multiple por_select" name="re_skills[]" multiple="multiple" style="width:100%">
        <option value="php">PHP</option>
        <option value="mysql">mySQL</option>
        <option value="js">JavaScript</option>
        <option value="jquery">jQuery</option>
        <option value="css">CSS</option>
        <option value="bootstrap">bootstrap</option>
        <option value="ps">PS</option>
        <option value="ai">AI</option>
    </select>
    </div>
    <br>
    <hr><br>

    

    <button type="submit" class="btn btn-danger">
        編輯完成
    </button>


    </div>
    
</form>
<!-- 修改原本作品集block -->
<?php
}?>





<div class="line"></div>

<form action="api/uploadImgPor.php" method="post" id="porInset_form" onsubmit="return submitForm()" enctype="multipart/form-data">
<h3>新增作品集</h3>

<br>
<pre>
可新增單筆作品
若作品為圖片 <u>連結可不輸入</u>
</pre>
<hr><br>

<div class="por_insert d-flex">
    <div class="col-4">
        <div>作品名稱:</div>
        <input type="text" name="name">
        
    </div>
    <div class="col-6" width="100%">
        <div>作品連結:</div>
        <input type="text" name="href">
    </div>
</div>
<br><br>

<div class="col-12">
    <div>作品運用技能:</div>
    <select class="js-example-basic-multiple por_select" name="skills[]" multiple="multiple">
        <option value="php">PHP</option>
        <option value="mysql">mySQL</option>
        <option value="js">JavaScript</option>
        <option value="jquery">jQuery</option>
        <option value="css">CSS</option>
        <option value="bootstrap">bootstrap</option>
        <option value="ps">PS</option>
        <option value="ai">AI</option>
    </select>
</div>
<br>

<div class="col-12 d-flex uploadButton">
<label for="">
    <span>+</span>
    <input type="file" name="porbg" id="fileButton">
</label>
<div id="filepath"></div>
</div>

<br><br>
<button type="submit" class="btn btn-danger">確定新增</button>
<button type="reset" class="btn btn-danger">重置</button>
</form>





<div class="line"></div>

<br><br>
<br><br>


<script>
    $(document).ready(function() {
        $('.js-example-basic-multiple').select2();
        // 把載入的圖片路徑show出來
        $("label input[type=file]").on('change',function filepath(){
            console.log(124);
            $("#filepath").text($("#fileButton").val());
        })

    });

    function submitForm(){
        $('#porInset_form').ajaxSubmit(function(m){
            console.log(m);
        })
        return false;
    }


        // function reset(){
        //     console.log('1243253');
        //     $("#filepath").val('');
        // }

    function op(x,y,url)
    {
        $(x).fadeIn()
        $(x).css({'width':'80%','height':'70%','position':'fixed','z-index':'5','background':'#EEECD8','border':'3px solid #222','top':'50%','left':'50%','transform':'translate(-50%,-50%)','overflow':'hidden','border-radius':'5px','padding':'20px'})
        $(x+' *').css('background','#EEECD8');
        $(x+' #sk>div').css('background','#EEECD8');
    }

    function edit_por(x){
        // console.log(x);
        console.log($("#re_name").val());
        let re_name=$("#re_name").val();
        let re_href=$("#re_href").val();
        let
    }


    function cl(x)
{
    $(x).fadeOut();
}
        
</script>