<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@include file = "header.jsp" %>
	<style>
    /*content*/
    .vs {clear: both; width: 100%; height: 300px; overflow: hidden;}
    .vs img{display: block; width: 100%; height: auto;}
    .bread { clear: both; width: 100%; height: auto; line-height: 60px; border-bottom: 3px solid #eee;}
    .bread_fr {width: 1200px; margin: 0 auto;}
    .page {clear: both; width: 100%; min-height: 100vh;}
    .page::after {content: ""; display: block; clear: both;}
    .page_wrap {width: 1200px; margin: 0 auto;}
    /* .content {display: none;} */
    .content:target { display: block;}

    .page_title { padding-top: 1em; font-size: 30px; }
    .home { color: #333;}
    .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
    background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
    height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
    .to_top:hover {background-color: pink;}
    .to_top.on {visibility: visible;}      

    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
    $(document).ready(function(){
        $(".to_top").attr("href", location.href);
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=300){
                $(".to_top").addClass("on");
                $(".to_top").attr("href", location.href);
            } else {
                $(".to_top").removeClass("on");
                $(".to_top").attr("href", location.href); 
            }
        });
    });    
        </script>
</head>
<body>
<div class="wrap">
      <header class="hd">
        <%@include file="nav.jsp" %>
    </header>
    <div class="content" id="page1">
        <figure class="vs">
            <img src="" alt="">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <select name="sel1" id="sel1" class="sel">
                <option>CJ Now</option>
                <option value="brand.jsp#page1">Brand</option>
                <option value="susta.jsp#page1">Sustainability</option>
                <option value="company.jsp#page1">CJ ??????</option>
                <option value="job.jsp1#page1">?????? ??????</option>
             </select> 
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">Cj now</h2>
            </div>
            </section>
            </div>
            </div>
    <script>
   var sel = document.getElementsByClassName("sel");
    for(var i=0;i<sel.length;i++){
        sel[i].addEventListener("change", function(){
            location.href = this.value;
        });
    }
    </script>
    <footer class="ft">
 	<%@ include file="footer.jsp" %>
    </footer>
<a href="#" class="to_top">???</a> <!--#??? ????????? ??????????????????--> <!--to.top_on ??????????????? ??????????????????-->
</body>
</html>