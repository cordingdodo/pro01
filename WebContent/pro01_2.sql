--게시판 글 추가
insert into boarda values (bseq.nextval, '테스트 글1', '테스트 글1의 내용입니다.', 'kdy', sysdate);
insert into boarda values (bseq.nextval, '테스트 글2', '테스트 글2의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글3', '테스트 글3의 내용입니다.', 'kny', sysdate);
insert into boarda values (bseq.nextval, '테스트 글4', '테스트 글4의 내용입니다.', '123', sysdate);
insert into boarda values (bseq.nextval, '테스트 글5', '테스트 글5의 내용입니다.', 'knyy', sysdate);
insert into boarda values (bseq.nextval, '테스트 글6', '테스트 글6의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글7', '테스트 글7의 내용입니다.', 'kny', sysdate);
insert into boarda values (bseq.nextval, '테스트 글8', '테스트 글8의 내용입니다.', '123', sysdate);
insert into boarda values (bseq.nextval, '테스트 글9', '테스트 글9의 내용입니다.', 'kdy', sysdate);
insert into boarda values (bseq.nextval, '테스트 글10', '테스트 글10의 내용입니다.', 'knyy', sysdate);

--글 목록 보기
select * from boarda;
select * count (*) as cnt from boarda;
select * from boarda where rownum between 1 and 10 order by no desc;
--select * from boarda where rownum between ? and ? order by no desc;
--pstmt.setInt(1, startNum);
--pstmt.setInt(2, endNum);

select no, title, content, author, resdate from 

--글 상세보기
select a.no no, a.title tit, a.content con, b.name nm, to_char(a.resdate, 'yyyy-mm-dd') 
res from boarda a inner join memberb b on a.author=b.id where a.no=1;

select a.no no, a.title tit, a.content con, b.name nm, a.resdate res from boarda a inner join b membera on a.author=b.id where a.no=1;

drop table boarda cascade constraint;

--글 수정하기
update boarda set title=?, content=? where no=?

--글 등록하기
insert boarda into valuse (no, title, content, author, resdate);
insert boarda into values (bseq.nextval, ?, ?, ?, sysdate);

