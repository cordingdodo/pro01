<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<% 
	int cnt = 0;
	int no = Integer.parseInt(request.getParameter("no"));
	String sid = (String) session.getAttribute("id");
%>
<%@ include file="connectionPool.conf"%>
<% 
	sql = "select * from faqa where id=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	rs = pstmt.executeQuery();
%>
<html>
<body>
<div class=hd>
</div>

<div class=content>
<div class=frm>
	<form class=frm1 action="faqModifyPro.jsp" method="post" class=frm>
		<table class=tb>
			<tbody>
			<tr>
				<th>번호</th>
				<td><input type="hidden" name="no" id="no" value=<%=no %> readonly></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="title" value='<%=rs.getString("title") %>' class="in_data"></td>
			</tr>	
			<tr>
				<th>내용</th>
				<td>
				<textarea name="content" id="content" value=<%=rs.getString("content") %> class="in_data"></textarea>
				</td>
			</tr>	
			<tr>
				<th>작성자</th>
				<td>관리자</td>
			</tr>
			</tbody>
		</table>
		<div class="btn_group">
			<%
			if(sid=="admin"){
			%>
				<button type="submit" class="btn primary">글 수정</button>
			<%
			}
			%>
			<a href="faqList.jsp">글 목록</a>
		</div>
	</form>
</div>
</div>
<%@ include file="connectionClose.conf"%>
<div class=ft>
</div>


</body>
</html>