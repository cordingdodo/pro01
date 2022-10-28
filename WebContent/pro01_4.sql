--질문 및 답변 테이블 생성
create table qnaa (
    no number primary key,
    title varchar2(100) not null,
    content varchar2(100) not null,
    author varchar2(20) not null,
    resdate date default sysdate not null,
    lev number not null, --질문(0)인지 답변(1)인지 구분
    parno number not null, --부모글 번호
    sec char(1) --비밀글(y or n) 유무
);

create SEQUENCE qesq;

drop table qnaa;
drop SEQUENCE qesq;

select * from qnaa;

insert into qnaa values(qesq.nextval, '질문1', '내용1', 'kny', sysdate, 0, qesq.currval, 'y'); --1
insert into qnaa values(qesq.nextval, '질문2', '내용2', 'knyy', sysdate, 0, qesq.currval, 'y');  --2
insert into qnaa values(qesq.nextval, '질문3', '내용3', '123', sysdate, 0, qesq.currval, 'y');  --3
insert into qnaa values(qesq.nextval, '질문4', '내용4', 'knyy', sysdate, 0, qesq.currval, 'y');  --4
insert into qnaa values(qesq.nextval, '질문이지만 공개글입니다', '내용5', '123', sysdate, 0, qesq.currval, 'n');  --5


--답변 데이터 입력 (필수사항, quesq.nextval, 제목 '답변' 통일, 글쓴이 admin 통일, 1번 설정, 비밀글 통일
insert into qnaa values(qesq.nextval, '답변', '답변 내용1', 'admin', sysdate, 1, 1, 'y'); --1
insert into qnaa values(qesq.nextval, '답변', '답변 내용2', 'admin', sysdate, 1, 2, 'y'); --2
insert into qnaa values(qesq.nextval, '답변', '답변 내용3', 'admin', sysdate, 1, 3, 'y'); --3
insert into qnaa values(qesq.nextval, '답변', '답변 내용4', 'admin', sysdate, 1, 4, 'y'); --4
insert into qnaa values(qesq.nextval, '답변', '답변 내용5', 'admin', sysdate, 1, 5, 'y'); --5

select * from qnaa order by parno asc;
select * from faqa;

delete from qnaa where no=?;