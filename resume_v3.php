<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RESUME</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link href="/your-path-to-fontawesome/css/all.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="resume_v3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
<?php
include_once "base.php";
?>

<div id="loginblock" style="display:none;">
    <a onclick="cl('#loginblock')" style="position:absolute; right:10px; top:5px; cursor:pointer; z-index:9999; color:white;">X</a>

<form>
<div class="login_content">
    <div class="login_bg1"></div>
    <div class="login_bg2"></div>
    <div class="login_bg3"></div>
    <span>Login Form</span>
    <div class="line"></div>
    <input type="text" id="acc" placeholder="Username">
    <input type="password" id="pw" placeholder="Password">
    <div class="login_button d-flex">
        <button type="button" onclick="login()">Login</button>
        <button type="reset">Reset</button>
    </div>
    <div class="res">
    </div>
</div>
</form>

</div>

<div class="banner">
    <div class="topnav d-flex" data-aos="fade-zoom-in" data-aos-duration="300" data-aos-anchor=".intro_text">
        <a href="#intro">
            <span><i class="fa fa-user-circle-o" aria-hidden="true"></i></span>
        </a>       
        <a href="#wk">
            <span><i class="fa fa-file-word-o" aria-hidden="true"></i></span>
        </a> 
        <a href="#skill">
            <span><i class="fa fa-wrench" aria-hidden="true"></i></span>
        </a>
        <a href="#por">
            <span><i class="fa fa-file-code-o" aria-hidden="true"></i></span>
        </a>
        <a href="#email">
            <span><i class="fa fa-link" aria-hidden="true"></i></span>
        </a>
        
    </div>
    <div class="loginnav">
        <a href="javascript:op('#loginblock','#cvr')" id="logint">
            <span><i class="fa fa-sign-in" aria-hidden="true"></i></span>
        </a>
    </div>


    <div class="bigt">
        <h2 id="text" class="container-fluid">Venture outside your comfort zone<br>&nbsp;&nbsp;&nbsp;the rewards are worth it.</h2>
    </div>
    <div class="clouds">
        <img src="image/cloud1.png" style="--a:1;">
        <img src="image/cloud2.png" style="--a:2;">
        <img src="image/cloud3.png" style="--a:3;">
        <img src="image/cloud4.png" style="--a:4;">
        <img src="image/cloud5.png" style="--a:5;">
        <img src="image/cloud1.png" style="--a:10;">
        <img src="image/cloud2.png" style="--a:9;">
        <img src="image/cloud3.png" style="--a:8;">
        <img src="image/cloud4.png" style="--a:7;">
        <img src="image/cloud5.png" style="--a:6;">
    </div>
    <div class="moon"></div>
    <!-- <div class="star">
        <div class="layer"></div>
        <div class="layer"></div>
        <div class="layer"></div>
        <div class="layer"></div>
        <div class="layer"></div>
    </div> -->
</div>

<!-- decBg -->
<div class="decBg Bg1" class="img-fluid" data-aos="fade-in" data-aos-delay="150" data-aos-duration="800">
    <div></div>
    <img src="image/Bg2.png">
</div>
<div class="decBg Bg2" class="img-fluid" data-aos="fade-in" data-aos-delay="150" data-aos-duration="800">
    <div></div>
    <img src="image/Bg3.png">
</div>
<div class="decBg Bg3" class="img-fluid" data-aos="fade-in" data-aos-delay="150" data-aos-duration="800">
    <div></div>
    <img src="image/Bg2.png">
</div>
<div class="decBg Bg4" class="img-fluid" data-aos="fade-in" data-aos-delay="150" data-aos-duration="800">
    <div></div>
    <img src="image/Bg4.png">
</div>






<!-- introduction -->

<div class="for_all_bg">
    <div class="intro_interval"></div>
    <div class="main_block">
    <div class="introduction">
    <p class="intro_title text-left col-12" id="intro" data-aos="fade-right" data-aos-delay="170" data-aos-duration="1000">Introduction...</p>
<?php
$bis=$BasicIntro->all();
// print_r($bis);
?>
    <div class="intro_line col-3"></div>
    <div class="intro_contents row">
        <div class="intro_pic col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
            <?php
            $pic=$SelfPic->find(['intro'=>'1','sh'=>'1']);
            ?>
            <img src="self_pic/<?=$pic['img'];?>" data-aos="zoom-in" data-aos-delay="200" data-aos-duration="1000">
        </div>
        <div class="intro_text col-12 col-sm-12 col-md-12 col-lg-7 col-xl-7 p-4">
            <div class="intro_h3">About me
                <img src="image/self_pic.png" class="self_pic">
            </div><br>
            我是
            <span id="intro_name">
                <?=$bis[0]['name']?>
            </span>, 
            擅於與人溝通協調並喜歡團隊工作
            <br>
            畢業於
            <span id="intro_graduation">
                <?=$bis[0]['graduate']?>
            </span><br>
            現居地
            <span id="intro_addr">
                <?=$bis[0]['addr']?>
            </span><br>
            目前期望職位
            <span id="intro_position">
                <?=$bis[0]['position']?>
            </span><br>
            <span id="intro_email">
                <?=$bis[0]['email']?>
            </span>

            <hr>
<?php
$sis=$SelfIntro->find(['sh'=>'1']);
// print_r($sis);
?>
<div id="self_intro_c">
<?= nl2br($sis['textC']);?>
</div>
            <br>
            <br>
<div id="self_intro_e">
<?= nl2br($sis['textE']);?>
</div>
        </div>
    </div>
    </div>



<!-- work experience -->

    <!-- <img src="image/r3bg1.png" class="img-fluid work_bgpic1"> -->
    <!-- <img src="image/r3bg2.png" class="img-fluid work_bgpic2"> -->
<div class="work_experience">
<?php
$wks=$Work->all();
// print_r($wks);

$wkpic=$SelfPic->all(['wk'=>'1','sh'=>'1']);
// print_r($wkpic);

?>
    <p class="work_title col-12 text-right" id="wk" data-aos="fade-left" data-aos-delay="170" data-aos-duration="1000">Work Experience.</p>
    <div class="work_line offset-9 col-3"></div>
    <div class="work_content">
        <div class="work-items wi1">
<span><?= nl2br($wks[0]['text']);?></span>
            <img src="self_pic/<?=$wkpic[0]['img'];?>" class="work-img1 img-fluid">
        </div>
        <div class="work-items wi2">
<span><?= nl2br($wks[1]['text']);?></span>
        </div>
        <div class="work-items wi3">
<span><?= nl2br($wks[2]['text']);?></span>
            <img src="self_pic/<?=$wkpic[1]['img'];?>" class="work-img3 img-fluid">
        </div>
    </div>
</div>

<!-- skills -->

<div class="skills">
    <p class="skill_title text-left col-12" id="skill" data-aos="fade-right" data-aos-delay="170" data-aos-duration="1000">Skills...</p>
    <div class="skill_line col-3"></div>


<?php
$skts=$Skt->all();
// print_r($skts);
?>
    <div class="skill_content">
        <!-- 技能文字介紹 -->
        <div class="skill_front col-sm-12 col-md-12 col-lg-6 col-xl-6" data-aos="fade-right" data-aos-delay="200" data-aos-duration="800">
            <div class="skill_symtitle">
            <i class="fa fa-heart-o" aria-hidden="true"></i>
            <span><?=$skts[0]['title']?></span>
            </div>
            <div class="skill_front_text">
<?= nl2br($skts[0]['text']);?>
            </div>
            <div class="skills_op">
                <!-- 輸入具備技能 -->
                <?php
                $sks=$Sk->all(['ct'=>'frontend','sh'=>'1']);
                foreach($sks as $sk){
                    // print_r($sk);
                ?>
                <span class="skill_option">
                    <?=$sk['name'];?>
                </span>
                <?php
                }?>
            </div>
        </div>

        <div class="skill_backend col-sm-12 col-md-12 col-lg-6 col-xl-6" data-aos="fade-left" data-aos-delay="200" data-aos-duration="800">
            <div class="skill_symtitle">
            <i class="fa fa-heart-o" aria-hidden="true"></i>
            <span><?=$skts[1]['title']?></span>
            </div>
            <div class="skill_backend_text">
<?= nl2br($skts[1]['text']);?>
            </div>
            <div class="skills_op">
                <!-- 輸入具備技能 -->
                <?php
                $sks=$Sk->all(['ct'=>'backend','sh'=>'1']);
                foreach($sks as $sk){
                    // print_r($sk);
                ?>
                <span class="skill_option">
                    <?=$sk['name'];?>
                </span>
                <?php
                }?>
            </div>
        </div>

        <div class="skill_content_line col-12"></div>

        <div class="skill_graphic col-sm-12 col-md-12 col-lg-6 col-xl-6" data-aos="fade-right" data-aos-delay="200" data-aos-duration="800">
            <div class="skill_symtitle">
            <i class="fa fa-heart-o" aria-hidden="true"></i>
            <span><?=$skts[2]['title']?></span>
            </div>
            <div class="skill_graphic_text">
<?= nl2br($skts[2]['text']);?>
            </div>
            <div class="skills_op">
                <!-- 輸入具備技能 -->
                <?php
                $sks=$Sk->all(['ct'=>'graphic_design','sh'=>'1']);
                foreach($sks as $sk){
                    // print_r($sk);
                ?>
                <span class="skill_option">
                    <?=$sk['name'];?>
                </span>
                <?php
                }?>
            </div>
        </div>

        <div class="skill_others col-sm-12 col-md-12 col-lg-6 col-xl-6" data-aos="fade-left" data-aos-delay="200" data-aos-duration="800">
            <div class="skill_symtitle">
            <i class="fa fa-heart-o" aria-hidden="true"></i>
            <span><?=$skts[3]['title']?></span>
            </div>
            <div class="skill_others_text">
<?= nl2br($skts[3]['text']);?>
            </div>
            <div class="skills_op">
                <!-- 輸入具備技能 -->
                <?php
                $sks=$Sk->all(['ct'=>'others','sh'=>'1']);
                foreach($sks as $sk){
                    // print_r($sk);
                ?>
                <span class="skill_option">
                    <?=$sk['name'];?>
                </span>
                <?php
                }?>
            </div>
        </div>
        
    </div>
</div>


<!-- 作品 -->
<div class="portfolio">
    <p class="por_title col-12 text-right" data-text="Contact Me." id="por" data-aos="fade-left" data-aos-delay="170" data-aos-duration="1000">Portfolio.</p>
    <div class="work_line offset-9 col-3"></div>
    <div class="por_text">
        這是我在泰山職訓半年累積的作品<br>作品左上角有運用到的技巧

    </div>
    <div class="por_content">
    
    <?php
    $pors=$Por->all(['sh'=>'1']);
    // print_r($pors);
    foreach($pors as $por){
    // print_r($por);
    $porbgs=$SelfPic->find(['porName'=>$por['name']]);

    echo '<div class="por_card card"><span></span><span></span><span></span><span></span><div class="card_content"><h2>';
    echo ($por['php'])?'php<br>':'';
    echo ($por['mysql'])?'mySQL<br>':'';
    echo ($por['js'])?'javaScript<br>':'';
    echo ($por['jquery'])?'jQuery<br>':'';
    echo ($por['css'])?'css<br>':'';
    echo ($por['bootstrap'])?'bootstrap<br>':'';
    echo ($por['ps'])?'photoshop<br>':'';
    echo ($por['ai'])?'illustrator<br>':'';
    echo'</h2><h3>'.$por['name'].'</h3>';
    echo (!empty($por['href']))?'<a href="'.$por['href'].'" target="_blank">':'';
    echo '<div class="porimg"><img class="porimgg" src="';
    echo 'self_pic/'.($porbgs['img']);
    echo '"><div class="porimgg wave1"></div><div class="porimgg wave2"></div><div class="porimgg wave3"></div><div class="porimgg wave4"></div><div class="porimgg wave5"></div></div>';
    echo (!empty($por['href']))?"</a>":'';
    echo '</div></div>'
    ?>
<!--
兩個版本=>網址!=NULL
        <div class="por_card card">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <div class="card_content">
                <h2>
                    技能+<BR>
                </h2>
                <h3>作品名稱</h3>
                <div class="porimg">
                    <img class="porimgg" src="圖片">
                    <div class="porimgg wave1"></div>
                    <div class="porimgg wave2"></div>
                    <div class="porimgg wave3"></div>
                    <div class="porimgg wave4"></div>
                    <div class="porimgg wave5"></div>
                </div>
            </div>
        </div>
-->

<!--
    =>NULL
        <div class="por_card card">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <div class="card_content">
                <h2>
                    技能+<BR>
                </h2>
                <h3>作品名稱</h3>
                <a href="網址" target="_blank">   ＊
                <div class="porimg">
                    <img class="porimgg" src="圖片">
                    <div class="porimgg wave1"></div>
                    <div class="porimgg wave2"></div>
                    <div class="porimgg wave3"></div>
                    <div class="porimgg wave4"></div>
                    <div class="porimgg wave5"></div>
                </div>
                </a>   ＊
            </div>
        </div>
-->
<?php
}?>

    </div>

</div>




<!-- contact me -->

    <div class="contact_me d-flex">
    <div class="title_email col-12 text-center" data-text="Contact Me." id="email" data-aos="fade-down" data-aos-delay="170" data-aos-duration="1000">Contact Me.
        <div class="email_line line_left col-2"></div>
        <div class="email_line line_right col-2"></div>
    </div>
    <div class="contact_content col-12 d-flex">
        <div class="contact_block col-4 email">
            <a href="mailto:yuan097@kimo.com">
                <i class="fa fa-envelope" aria-hidden="true"></i>
            </a>
        </div>
        <div class="contact_block col-4 github">
            <a href="https://github.com/Changtingweiyuanyuan" target="_blank">
                <i class="fa fa-github" aria-hidden="true"></i>
            </a>
        </div>
        <div class="contact_block col-4 tel">
            <a href="tel:+30931022">
                <i class="fa fa-phone-square" aria-hidden="true"></i>
            </a>
        </div>
            
    </div>

    <div class="email_copyright col-12">
        Copyright©2021 Chang Ting-Wei
    </div>
    <div class="email_interval"></div>
    
</div>
</body>
</html>


<script>
// 使用aos.js
AOS.init();

// login
function op(x,y){
    console.log('click');
        $(x).fadeIn()
}
function cl(x)
{
    $(x).fadeOut();
}

function login(){
    let acc=$("#acc").val();
    let pw=$("#pw").val();
    // console.log(acc,pw);
    $.post("api/chk_login.php",{acc,pw},function(res){
        if(res=='登入成功'){
            location.href="admin.php";
        }else{
        $(".res").html(res);
        }
    })
}




// work experience block
$(".wi1").mouseover(function(){
    $(this).css({'background-color':'#e1e1e180','z-index':'5'});
    $(".work-img1").css('z-index','6');
    $(this).mouseout(function(){
        $(this).css({'background-color':'#e1e1e150','z-index':''});
        $(".work-img1").css('z-index','');
    })

$(".wi2").mouseover(function(){
    $(this).css({'background-color':'#e1e1e180','z-index':'5'});
    $(this).mouseout(function(){
        $(this).css({'background-color':'#e1e1e150','z-index':''});
    })
})
$(".wi3").mouseover(function(){
    $(this).css({'background-color':'#1e1e1e80','z-index':'5'});
    $(".work-img3").css('z-index','6');
    $(this).mouseout(function(){
        $(this).css({'background-color':'#1e1e1e50','z-index':''});
        $(".work-img3").css('z-index','');
    })
})

})



</script>