<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.* , java.text.*" %>

<%
//캐릭터 셋 설정
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

//데이터 받아오기
	String sid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParameter("author");

//db 연결하기
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int cnt=0;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "123";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		pstmt = con.prepareStatement(sql);
		sql = "update boarda set title=?, content=? where no=?";
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setInt(3, no);
		pstmt.executeUpdate();
		
		
		
		
	} catch(Exception e){
		e.printStackTrace();
	} finally { 
		rs.close();
		pstmt.close();
		con.close();
	}
%>
<%
//반환된 결과에 따라 분기
	if(cnt>=1){}
%>
	<div class name="frm1">
		<form name="fr1" class= action="boardModifyPro.jsp">
		<table class= name="tb">
		</table>
		</form>
	</div>
	}
%>


<header class="hd">
</header>
<div class="content">
</div>
<footer class="footer">
</footer>
