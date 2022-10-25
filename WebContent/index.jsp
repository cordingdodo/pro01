<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="header.jsp" %>
 	<style>
    .page {clear:both; width: 100%; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    #page1 { background-color:#daf8e8; }
    #page2 { background-color: #edf9f7;}
    #page3 { background-color:#faf2fe; }
    .page_tit {text-align: center; font-size: 32; padding-top: 100px; padding-bottom: 80px;}
    .lst { clear:both; width: 1200px; }
    .lst::after {content:""; display: block; clear: both;} 
    .lst li {margin-bottom: 40px;}
    .lst li.left { float:left; width: 816px;height: 459px;}
    .lst li.right { float:right; width: 350px; height: 459px; }
    .ico_lst {clear: both; width: 100%; overflow: hidden;}
    .ico_lst li a { background-repeat: no-repeat; background-position:0 center; 
        display: block; background-size: auto 80%; padding-left: 100px;} /*dispaly:block 하면 아이콘 나옴*/
    .ico_lst li a.icon1 {background-image: url("./icon/icon1.png"); }
    .ico_lst li a.icon2 {background-image: url("./icon/icon2.png");}
    .ico_lst li a.icon3 {background-image: url("./icon/icon3.png"); }
    .cate_tit { color: #222; padding-bottom: 0.5em; font-size: 20px;}
    .cate_com { color: #222; font-size: 14px; white-space:nowrap; text-overflow: ellipsis; overflow: hidden;}
    /* overflow: hidden글 ...으로 */
    
    .pic_lst {clear: both; width: 100%; padding-bottom: 50px;} /*밑에 공백*/
    .pic_lst:after { content: ""; display: block; clear: both;}
    .pic_lst li {float: left; position: relative; margin-bottom: 40px;}
    .pic_lst li a {display: block; width: 360px; margin-right: 40px; overflow: hidden; height: 300px;} 
    /*오버플로우히든 오버범위 짜름*/
    /* .pic_lst li:nth-child(2) a {height: 360px;} */
    .pic_lst li a img { display: block;  width: 600px; margin-left: -120px; transition-duration: 0.8s;} /*마진레프트 -넣으면 반대로*/
    .pic_lst li a:hover img { margin-left: 0;} /*마우스 커서 올리면 이미지 나옴*/
    .pic_lst li a .hv_box { width: 360px;height: 300px; color: #fff; opacity: 0;  position:absolute;
        top:0; left: 0px; z-index: 10; transition-duration: 0.8s; background-color: transparent;}
    .pic_lst li a:hover .hv_box {opacity: 1;} /*사진 안에 글자 보임*/
    .pic_tit {top:30px; left: 30px; position:absolute;}
    .pic_com {position:absolute; right: 30px; bottom: 30px; text-shadow:0px 0px 3px #333;}


    #page3 {background-repeat: no-repeat;background-size: cover; background-position: center center; 
        height: 100vh; overflow: hidden; } /*오버플로우 히든 여기까지만  */ 
    #page3 .page_wrap {width: 100%;}
    .circle_lst {clear: both; width: 5200px; margin-top: 80px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; 
        background-color: #fff;     float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst.lst2 li {float:right; }
    .circle_lst li a {display: block; width: 100%; height: 100%;}
    .circle_lst li a img {display: block; width: 160px; height: auto; position: absolute; 
        top: 50%; z-index:11; margin-top: -100; left: 20px;}  /*마진탑으로 사진 위치 조절*/

    /* footer.css*/
	</style>
    <link rel="stylesheet" href="footer.css">
    <script>
        $(document).ready(function(){
            $(window).scroll(function(){
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if(tp>=600){
                    $(".hd").css("position","fixed");
                } else {
                    $(".hd").css("position","absolute");
                }
            });
            $
            $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
            $lst1_obj = $(".circle_lst li").clone();
            $(".circle_lst.lst2").append($lst1_obj);
        });    
        </script>
</head>
<body>
<div class="wrap">
	<%@ include file="nav.jsp" %>
        </div>
    <div class="content">
        <figure class="vs">
            <video src="img/cj video.mp4" autoplay muted class="vdo"></video>
        </figure>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">#LIVE NEW CJ<br>당신의 평범한 일상을 새롭게</h2>
                <ul class="lst">
                    <li class="left">
                        <iframe width="820" height="460" src="https://www.youtube.com/embed/eC4JkFPnWXk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>                    <li class="right">
                        <ul class="ico_lst">
                            <li>
                                <a href="https://www.youtube.com/embed/gUQEWY4M8v0" target="vdo2" class="icon1">
                                    <h3 class="cate_tit">프로젝트 명확행<br>식물리에의 정원</h3>
                                     <p class="cate_com">여러분 오늘 하루는 좀 쉬셨나요😌?
                                        <br/>우리는 가끔씩 꿈꾸곤 합니다.💚
                                        <br/></p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/KlBHzz7Z-PM" target="vdo2" class="icon2">
                                    <h3 class="cate_tit">잠시 쉬어가는 순간<br>요리는 마음의 집중!</h3>
                                    <p class="cate_com">	식물과 요리의 공통점은🤔?
                                        <br/>왠지 모르게 빠져들게 만든다는 점💘!</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/4myyopQVJQ8" target="vdo2" class="icon3">
                                    <h3 class="cate_tit">여기가 식멍 미슐랭🌱😉
                                        <br/>식집사의 플랜테리어</h3>
                                    <p class="cate_com">싱그러움 음미하게 만드는 새로운 식멍…?
                                        <br/>식꾸로 시작했다🍃 보면 볼수록 빠져든다?!</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page2">
            <div class="page_wrap">
                <h2 class="page_tit">CJ Now</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="img/1.jfif" alt="CJ올리브네트웍스" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">CJ올리브네트웍스, 비마이프렌즈와 크리에이터 이코노미 생태계 확장에 나선다</h3>
                                <p class="pic_com">#창작자 #비마이프렌즈 #비스테이지</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/1.jpeg"  alt="CJ프레시웨이" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">CJ프레시웨이, '브랜드 솔루션' 사업 본격 추진.. 고객사 외식 브랜드 론칭 돕는다</h3>
                                <p class="pic_com">#브랜드론칭 #두가지컴퍼니 #밥앤동</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/3.jpg" alt="KCON" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">KCON, 중동 사우디아라비아 간다! CJ ENM, 
                                    ‘KCON 2022 SAUDI ARABIA’ 9월 3</h3>
                                <p class="pic_com">#케이콘 #중동 #사우디아라비아</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/4.png"  alt="상디공" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">[상.디.공] 벌써 종방이라니요?😥ㅣ9월 <br>화제의 영상 모아보기👀 최다 조회수 TOP5!!</h3>
                                <p class="pic_com">#상디공 #상암동디지털공작소 #CJENM</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/5.jpg"  alt="CJ대한통운" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">CJ대한통운 l 물류의 혁신을 이끄는 CJ대한<br>통운 요즘 물류📦❗[먹물분사형 바코드]
                                </h3>
                                <p class="pic_com">#먹물분사형바코드 #스마트풀필먼트</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="img/6.PNG"  alt="햇반" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">[햇반] 밥상 위 주역 배출의 명문, 쌀창고등학교 교가 공개
                                </h3>
                                <p class="pic_com">#알면알수록마음이놓이는쌀창고 #쌀창고등학교</p>
                            </div>
                        </a>
                    </li>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page3">
            <div class="page_wrap">
                <h2 class="page_tit">믿고 맡길 수 있는<br>CJ 그룹<br>전문 계열사</h2>
                <ul class="circle_lst">
                    <li><a href=""><img src="icon/logo4.jfif" alt="CJ제일제당"></a></li>
                    <li><a href=""><img src="icon/logo12.PNG" alt="CJ푸드빌"></a></li>
                    <li><a href=""><img src="icon/logo3.PNG" alt="CJ프레시웨이"></a></li>
                    <li><a href=""><img src="icon/logo5.jpg" alt="CJ FEED&CARE"></a></li>
                    <li><a href=""><img src="icon/logo6.jpg"  alt="CJ대한통운"></a></li>
                    <li><a href=""><img src="icon/logo7.jpg"  alt="CJ대한통운 건설부문"></a></li>
                    <li><a href=""><img src="icon/logo8.PNG"  alt="CJ올리브영"></a></li>
                    <li><a href=""><img src="icon/logo10.PNG"  alt="CJ올리브네트웍스
                        "></a></li>
                    <li><a href=""><img src="icon/logo9.PNG"   alt="CJ ENM 커머스부문
                        "></a></li>
                    <li><a href=""><img src="icon/logo14.PNG" alt="CJ ENM 엔터테인먼트부문"></a></li>
                    <li><a href=""><img src="icon/logo16.PNG" alt="CJ CGV"></a></li>
                    <li><a href=""><img src="icon/logo17.png" alt="CJ 4DPLEX"></a></li>
                    <li><a href=""><img src="icon/logo1.png" alt="제일제당"></a></li>
                    <li><a href=""><img src="icon/logo2.jpg" alt="푸드빌"></a></li>
                    <li><a href=""><img src="icon/logo11.PNG" alt="로직스"></a></li>
                    <li><a href=""><img src="icon/logo12.PNG" alt="푸드빌"></a></li>
                    <li><a href=""><img src="icon/logo13.PNG" alt="cj investment"></a></li>
                    <li><a href=""><img src="icon/logo14.PNG" alt="cj이엔엠"></a></li>
                    <li><a href=""><img src="icon/logo15.PNG" alt="olivenetworks"></a></li>
                </ul>
            </div>
        </section>
    <footer class="ft">
		<%@include file="footer.jsp" %>
    </footer>
</body>
</html>