<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <div class="ft_wrap">
            <div class="ft_logo"><img src="img/CJ_logo.png" alt=""></div>
            <div class="mid_box">
                <nav class="fnb">
                    <a href="member01.html" class="dpc"> 개인정보 처리 방침</a>
                    <a href="member02.html" class="dpc"> 이용약관</a>
                    <a href="member03.html" class="dpc"> 공지사항</a>
                    <a href="member04.html" class="dpc"> 온라인제보</a>
                    <a href="member05.html" class="dpc"> 고객센터</a>
                </nav>
                <p class="addr">
                    CJ 그룹 | 대표이사 | 정호영 사업자등록번호:120-81-55297<br>
                    서울시 영등포구 여의대로 128 LG 트윈타워 |admin@wedisplay.solutions<br>
                    통신판매업신고번호: 제2022-서울영등포-1247호<br>
                    당 사는 통신판매중개자이며, 통신 판매의 당사자가 아닙니다. 상품 및 거래에 관한 의무와 책임은 판매자에게 있습니다.  
                </p>
                <p class="copyright">씨제이㈜. All Rights Reserved.</p>
            </div>
            <div class="sel_box">
                <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
                    <option value="">패밀리 사이트</option>
                    <option value="https://www.cjenm.com/ko/">Cj ENM 엔터테인먼트</option>
                    <option value="https://www.oliveyoung.co.kr">>CJ올리브영</option>
                    <option value="https://www.cj.co.kr/kr/index">CJ제일제당</option>
                    <option value="https://www.cjfoodville.co.kr/main.asp">CJ푸드빌</option>
                    <option value="http://www.cjfreshway.com/index.jsp">CJ 제일제당</option>
                    <option value="https://www.cj.co.kr/kr/index">CJ프레시웨이</option>
                    <option value="http://www.cj.co.kr/kr/about/business/bio">CJ제일제당 BIO사업부문</option>
                    <option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
                    <option value="https://www.cjolivenetworks.co.kr/">CJ올리브네트웍스</option>

                </select>
            </div>
            <script>
            function sel_link(sel){
                location.href = sel.value;
            }
            </script>
        </div>