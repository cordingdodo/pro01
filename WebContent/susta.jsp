<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <%@include file="header.jsp" %>
    <style>
      /* header.css */
      .hd {
        position: fixed;
      }

      /* content */
      .vs {
        clear: both;
        width: 100%;
        height: 300px;
        overflow: hidden;
      }

      .vs img {
        display: block;
        width: 100%;
        height: auto;
      }

      .bread {
        clear: both;
        width: 100%;
        line-height: 60px;
        border-bottom: 3px solid #eee;
      }

      .bread_fr {
        width: 1200px;
        margin: 0 auto;
      }

      .page {
        clear: both;
        width: 100%;
        min-height: 100vh;
      }

      .page:after {
        content: "";
        display: block;
        clear: both;
      }

      .page_wrap {
        width: 1200px;
        margin: 0 auto;
      }

      .content {
        display: none;
      }

      .content:target {
        display: block;
      }

      .page_title {
        padding-top: 1em;
        font-size: 30px;
      }

      .home {
        color: #333;
      }

      .to_top {
        position: fixed;
        bottom: 80px;
        right: 80px;
        z-index: 999;
        background-color: rgba(11, 11, 11, 0.75);
        color: #fff;
        display: block;
        width: 60px;
        height: 60px;
        line-height: 60px;
        text-align: center;
        font-size: 20px;
        border-radius: 32px;
        visibility: hidden;
        transition-duration: 0.8s;
      }

      .to_top:hover {
        background-color: deepskyblue;
      }

      .to_top.on {
        visibility: visible;
      }
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
      $(document).ready(function() {
        $(".to_top").attr("href", location.href);
        $(window).scroll(function() {
          var ht = $(window).height();
          var tp = $(this).scrollTop();
          if (tp >= 300) {
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
            <a href="index.jsp" class="home">HOME</a> &gt; <select name="sel1" id="sel1" class="sel">
              <option>Sustainability</option>
              <option value="cjnow.jsp#page1">Cj now</option>
              <option value="brand.jsp#page1">Brand</option>
              <option value="company.jsp#page1">CJ 소개</option>
              <option value="job.jsp1#page1">인재 채용</option>
            </select> &gt; <select name="sel2" id="sel2" class="sel">
              <option selected>지향점</option>
              <option value="susta.jsp#page2">윤리경영</option>
              <option value="susta.jsp#page3">나눔재단</option>
            </select>
          </div>
        </div>
        <section class="page">
          <div class="page_wrap">
            <h2 class="page_title">지향점</h2>
          </div>
        </section>
      </div>
    </div>
    <div class="content" id="page2">
      <figure class="vs">
        <img src="" alt="">
      </figure>
      <div class="bread">
        <div class="bread_fr">
          <a href="index.jsp" class="home">HOME</a> &gt; <select name="sel3" id="sel3" class="sel">
            <option>Sustainability</option>
            <option value="cjnow.jsp#page1">Cj now</option>
            <option value="brand.jsp#page1">Brand</option>
            <option value="company.jsp#page1">CJ 소개</option>
            <option value="job.jsp1#page1">인재 채용</option>
          </select> &gt; <select name="sel4" id="sel4" class="sel">
            <option selected>윤리경영</option>
            <option value="susta.jsp#page1">지향점</option>
            <option value="susta.jsp#page3">나눔재단</option>
          </select>
        </div>
      </div>
      <section class="page">
        <div class="page_wrap">
          <h2 class="page_title">윤리경영</h2>
        </div>
      </section>
    </div>
    <div class="content" id="page3">
      <figure class="vs">
        <img src="./img/vs1.jpg" alt="">
      </figure>
      <div class="bread">
        <div class="bread_fr">
          <a href="index.jsp" class="home">HOME</a> &gt; <select name="sel4" id="sel4" class="sel">
            <option>Sustainability</option>
            <option value="cjnow.jsp#page1">Cj now</option>
            <option value="brand.jsp#page1">Brand</option>
            <option value="company.jsp#page1">CJ 소개</option>
            <option value="job.jsp1#page1">인재 채용</option>
          </select> &gt; <select name="sel4" id="sel4" class="sel">
            <option selected>나눔재단</option>
            <option value="susta.jsp#page1">지향점</option>
            <option value="brand.jsp#page2">윤리경영</option>
          </select>
        </div>
      </div>
      <section class="page">
        <div class="page_wrap">
          <h2 class="page_title">나눔재단</h2>
        </div>
      </section>
    </div>
    <script>
      var sel = document.getElementsByClassName("sel");
      for (var i = 0; i < sel.length; i++) {
        sel[i].addEventListener("change", function() {
          location.href = this.value;
        });
      }
    </script>
    <footer class="ft">
      <%@include file="footer.jsp" %>
    </footer>
    <a href="#" class="to_top">↑</a>
    <!--#만 넣으면 뿅하고올라감-->
    <!--to.top_on 제이쿼리로 온클래스추가-->
  </body>
</html>