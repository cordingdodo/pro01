<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	int cnt =0;
	String sid = (String) request.getParameter("id");
%>
<%@ include file="connectionPool2.conf" %>
	
	<%
	sql = "delete from boarda where no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	cnt = pstmt.executeUpdate();
	%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="header.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <style>
    /* header.css */
    .hd { position:fixed; }
    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
	.frm1 { padding: 24px; width: 960px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:750px; border-collapse:collapse; }
    .tb tr { display:table-row; width: 1000px; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:#333; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:500px; text-align:center; }
	.tb tr th:nth-child(2) { width:1000px; text-align:center; }
	.tb tr th:nth-child(3) { width:100px; text-align:center; }
	.tb tr th:last-child { text-align:center; }
	</style>
	<link rel="stylesheet" href="footer.css">
</head>
  <body>
    <div class="wrap">
      <header class="hd">
        <%@include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="" alt="">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">글 삭제</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">글 삭제</h2>
                				<div class="frm1">
                					<form name="frm" action="boardModifyPro.jsp" method="post" class="frm">
                					<table class="tb">
                						<tbody>
                							<tr>
                								<th>번호</th>
                								<td><input type="hidden" name="no" id="no" value=<%=no %> readonly required></td>
                							</tr>
                							<tr>
                								<th>제목</th>
                								<td><input type="text" name="title" id="title" value="title" class="in_data" required></td>
                							</tr>
                							<tr>
                								<th>내용</th>
                								<td>
                									<textarea cols="100" rows="8" name="content" id="content"><% %></textarea>
                								</td>
                							</tr>
                							<tr>
                								<th>작성자</th>
                								<td><%=sid %>
                								<input type="hidden" id="author" name="author" value=<%=sid %> readonly></input></td>
                							</tr>
                					</tbody>
						</table>
						<div class="btn_group">
							<button type="submit" class="btn_primary">글 삭제하기</button>
							<a href="boardList.jsp" class="btn_primary">게시판 목록</a>
						</div>
					</form>
				</div>
			</div>
        </section>
    </div>
    <%
    if(cnt>0){    
 		response.sendRedirect("boardList.jsp");
	} else {
		 response.sendRedirect("boardDetail2.jsp=?no"+no);
	}
    %>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
    <%@include file="connectionClose2.conf" %>
</div>
</body>
</html>