<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		int no = Integer.parseInt(request.getParameter("no"));
		String title = "";
		String content = "";
		String uname = "";
		String resdate = "";
		String author = "";
%>
<%@ include file="connectionPool.conf" %>
<%
		
		sql = "select a.no no, a.title title, a.content content, ";
		sql = sql + "b.name name, a.resdate resdate, a.author author";
		sql = sql + "from boarda a inner join membera b ";
		sql = sql + "on a.author=b.id where a.no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		
%>  

<%@ include file="connectionClose.conf" %>

	<table>
		<tbody>
		<tr>
			<td>번호</td>
			<td><%=rs.getInt("no") %></td>
			<td>제목</td>
			<td><%=rs.getString("tit") %></td>
			<td>작성자</td>
			<td><%=rs.getString("nm") %></td>
			<td>작성일</td>
			<td><%=rs.getString("res") %></td>
		</tr>
		</tbody>
		

	</table>
<div class="btn_group">
	<a href="boardList.jsp" class="btn primary">게시판 목록</a>
	<%
		if(sid.equals("admin") || sid.equals(author)){
	%>
	<a href='boardModify.jsp?no=<%=no %>' class=btn_primary">글 수정</a>
	<a href='boardDel.jsp?no=<%=no %>' class="btn_primary">글 삭제</a>
		<% } %>
</div>
</body>
</html>