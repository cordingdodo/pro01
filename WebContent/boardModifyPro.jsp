<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.text.*" %>
<%
 	int cnt = 0;
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
%>	
<%@include file="connectionPool2.conf"%>
<%
	sql="update boarda set title=?, content=? where no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setInt(3, no);
	cnt = pstmt.executeUpdate();


	if(cnt>=1){
		response.sendRedirect("boardList.jsp");
	} else {
		response.sendRedirect("boardDetail2.jsp?no="+no);
	}
	
%>

	
<%@include file="connectionClose2.conf" %>
