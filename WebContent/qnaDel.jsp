<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.text.*" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	int cnt = 0;

%>	

<%@include file="connectionPool2.conf"%>

<%
	sql="delete from qnaa where no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	cnt = pstmt.executeUpdate();


	if(cnt>0){
		response.sendRedirect("qnaList.jsp");
	} else {
		response.sendRedirect("qnaDetail.jsp?no="+no);
	}
	
%>

	
<%@include file="connectionClose2.conf" %>
