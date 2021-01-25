<style>
    #album {
        margin-top:3vh;
        border: 1px solid #db0000;
        /* border-radius: 8px; */
        /* height: 90vh; */
        width: 100%;
    }
    .nav-pills .nav-link.active, .nav-pills .show>.nav-link{
        background-color: #db0000;
    }
    img{
        padding:15px;
    }
</style>

<h3>顯示後台可更換圖片</h3>
<br>
<pre>
單純顯示圖片
如果要更換或刪除 請到各分類進行動作
</pre>
<hr><br>

<div id="album">

    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="allBtn" data-toggle="pill" href="#allBlock" role="tab" aria-controls="allBlock" aria-selected="true">all</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="introBtn" data-toggle="pill" href="#introBlock" role="tab" aria-controls="introBlock" aria-selected="false">個人大頭照</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="wkBtn" data-toggle="pill" href="#wkBlock" role="tab" aria-controls="wkBlock" aria-selected="false">工作經歷照片</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="porBtn" data-toggle="pill" href="#porBlock" role="tab" aria-controls="porBlock" aria-selected="false">作品集照片</a>
        </li>

    </ul>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active p-5" id="allBlock" role="tabpanel" aria-labelledby="allBtn">

            <div class="d-flex flex-wrap justify-content-around">
                <?php
                    $alls=$SelfPic->all();
                    foreach($alls as $all){
                        echo '<img src="self_pic/'.$all['img'].'" style="width:180px;height:200px;">';
                    }
                ?>
            </div>

        </div>
        <div class="tab-pane fade p-5" id="introBlock" role="tabpanel" aria-labelledby="introBtn">
            
        <div class="d-flex flex-wrap justify-content-around">
            <?php
                $alls=$SelfPic->all("WHERE `img` LIKE 'intro%'");
                // print_r($alls);
                foreach($alls as $all){
                    echo '<img src="self_pic/'.$all['img'].'" style="width:180px;height:200px;">';
                }
            ?>
        </div>
                    
        </div>
        <div class="tab-pane fade p-5" id="wkBlock" role="tabpanel" aria-labelledby="wkBtn">
            
        <div class="d-flex flex-wrap justify-content-around">
            <?php
                $alls=$SelfPic->all("WHERE `img` LIKE 'work%'");
                // print_r($alls);
                foreach($alls as $all){
                    echo '<img src="self_pic/'.$all['img'].'" style="width:180px;height:200px;">';
                }
            ?>
        </div>

        </div>
        <div class="tab-pane fade p-5" id="porBlock" role="tabpanel" aria-labelledby="porBtn">
            
        <div class="d-flex flex-wrap justify-content-around">
            <?php
                $alls=$SelfPic->all("WHERE `img` LIKE 'por%'");
                // print_r($alls);
                foreach($alls as $all){
                    echo '<img src="self_pic/'.$all['img'].'" style="width:180px;height:200px;">';
                }
            ?>
        </div>

        </div>
    </div>

</div>