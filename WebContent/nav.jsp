<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = (String) session.getAttribute("id");
	String pw = (String) session.getAttribute("pw");
	String name = (String) session.getAttribute("name");
%>
<div class="hd_wrap">
	<a href="" class="logo">
		<img src="img/CJ_logo.png" alt="로고">
	</a>
	<nav class="tnb">
    <% 
     	if(id!=null && (id.equals("admin"))){
    %>
		<div>
		<span class="id_print"><%=name %>님</span>
			<a href="memList.jsp">회원 관리</a>
			<a href="boardList.jsp">게시판 관리</a>
			<a href="faqList.jsp">FAQ 게시판 관리</a>
			<a href="logout.jsp">로그아웃</a>
			<a href="sitemap.jsp">사이트맵</a>
		</div>
	<%
     	} else if(id!=null) {
	%>
		<div>
       		<span class="id_print"><%=name %>님</span>
            <a href="logout.jsp">로그아웃</a>
            <a href="memInfo.jsp">회원정보</a>
            <a href="sitemap.jsp">사이트맵</a>
		</div>
	<%
     	} else {
	%>
		<div>
			<a href="login.jsp">로그인</a>
			<a href="join.jsp">회원가입</a>
			<a href="sitemap.jsp">사이트맵</a>
		</div>
    <%
     	}
    %>
            </nav>
          <nav class="gnb">
  				  <ul>
                    <li class="item1">
                        <a href="cjnow.jsp" class="dp1">CJ Now</a>
                    </li>
                    <li class="item2">
                        <a href="" class="dp1">Brand</a>
                        <ul class="sub">
                            <li><a href="brand.jsp#page1">Best brand</a></li>
                            <li><a href="brand.jsp#page2">건강</a></li>
                            <li><a href="brand.jsp#page3">즐거움</a></li>
                        </ul>
                    </li>
                    <li class="item3">
                        <a href="" class="dp1">Sustainability</a>
                        <ul class="sub">
                            <li><a href="susta.jsp#page1">지향점</a></li>
                            <li><a href="susta.jsp#page2">윤리경영</a></li>
                            <li><a href="susta.jsp#page3">나눔재단</a></li>
                        </ul>
                    </li>
                    <li class="item4">
                        <a href="" class="dp1">CJ소개</a>
                        <ul class="sub">
                            <li><a href="company.jsp#page1">회사소개</a></li>
                            <li><a href="company.jsp#page2">회사연혁</a></li>
                            <li><a href="company.jsp#page3">계열사</a></li>
                        </ul>
                    </li>
                    <li class="item5">
                        <a href="" class="dp1">인재 채용</a>
                        <ul class="sub">
                            <li><a href="faqList.jsp">FAQ 게시판</a></li>
                            <li><a href="qnaList.jsp">QNA 게시판</a></li>
                            <li><a href="boardList.jsp">게시판</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
      </div>