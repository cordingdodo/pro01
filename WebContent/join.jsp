<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="header.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="header.css">
    
    <style>
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:200px; height: 48px;  }
    .frm_tb td { width:500px; height: 48px; }
    .frm_tb label:before { content:"*"; }

    .agree_fr { width: 900px; white-space:pre-wrap; margin: 10px auto;
    padding: 30px; border: 2px solid rgb(181, 181, 181); height: 600px; overflow-y: auto;} 
    .btn_fr {width: 900px; margin: 30px center; padding: 30px; margin-right: 20px;}
    .in_btn {display: block; background-color: #333; min-width: 120px; height: 32px;
    line-height: 32px; border-radius: 20px; margin-left: 400px; margin-right: 20px; 
    cursor: pointer; }
    .in_btn:hover {background-color: darkkhaki;}
    
    /* ul > li 를 테이블 처럼 출력 */
    .frm_tb { display:table; }
    .frm_tb li { display:table-row; }
    .frm_tb .td, .frm_tb .th, .frm_tb .td2 { display:table-cell; }
    .frm_tb .th { width:200px; }
    .frm_tb .td { width:200px; }
    .frm_tb .td2 { width:400px; }
    </style>
    <link rel="stylesheet" href="footer.css">
</head>
<body>
<div class="wrap">
    <%@include file="nav.jsp" %>
    <div class="content">
        <figure class="vs">
            <img src="." alt="">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.html" class="home">HOME</a> &gt;
                <span class="sel">회원가입</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">회원가입</h2>
                <div class="form_fr">
                    <form name="frm1" action="joinPro.jsp" method="post" id="joinForm" class="frm" onsubmit="return joinAlert(this)">
                        <table class="frm_tb">
                            <tbody>
                                <tr>
                                    <th><label for="id">아이디</label></th>
                                    <td>
                                        <input type="text" id="id" name="id" class="in_dt" required autofocus>
                                         <button type="button" class="in_btn" onclick="idCheck()">중복 확인</button>
                                         <input type="hidden" name="idck" value="no"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="id">비밀번호</label></th>
                                    <td>
                                        <input type="password" id="pw" name="pw" class="in_dt" required>
                                    </td>
                                </tr>
                                  <tr>
                                    <th><label for="id">비밀번호 확인</label></th>
                                    <td>
                                        <input type="password" id="pw2" name="pw2" class="in_dt" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="name">이  름</label></th>
                                    <td>
                                        <input type="text" id="name" name="name" class="in_dt" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="email">이메일</label></th>
                                    <td>
                                        <input type="email" id="email" name="email" class="in_dt" pattern=".+@naver\.com" placeholder="네이버 이메일 주소 입력" required>ㄴ
                                    </td>
                                </tr>
                                  <tr>
                                    <th><label for="tel">번호</label></th>
                                    <td>
                                        <input type="tel" id="tel" name="tel" class="in_dt" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <button type="submit" class="in_btn">회원가입</button>
                                        <button type="reset" class="in_btn">취소</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </section>
     </div>
    </div>
        <script>
            function joinAlert(f){
            	if(f.pw.value!=f.pw2.value){
            		alert("비밀번호와 비밀번호 확인 값이 서로 다릅니다.")
            		return false;
           		}
            
            	if(f.idck!=yes){
            		aldert("아이디 중복 체크를 하지 않으셨습니다.");
            		return false;
            	}   
			}
			function idCheck() {
				var win = window.open("idCheck.jsp", "idCheckWin", "width=600, height=400");
			}

            </script>
    <footer class="ft">
     	<%@ include file="footer.jsp" %>
    </footer>
</body>
</html>