create table faqa (no number primary key, title varchar2(50) not null, 
content varchar2(300) not null, author varchar2(30) not null, 
resdate date default sysdate, 
gubun number not null, --질문(0)과 답변(1)을 구분하기 위한 넘버
parno number not null);  --질문(1)과 답변(1)을 이어주는 넘버

create SEQUENCE fseq;
drop sequence fseq;

drop table faqa;

insert into faqa values(fseq.nextval, '질문1', '내용1', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '질문2', '내용2', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '질문3', '내용3', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '질문4', '내용4', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '질문5', '내용5', 'admin', sysdate, 0, fseq.currval);

insert into faqa values(fseq.nextval, '답변1', '답변1', 'admin', sysdate, 1, 1);
insert into faqa values(fseq.nextval, '답변2', '답변2', 'admin', sysdate, 1, 2);
insert into faqa values(fseq.nextval, '답변3', '답변3', 'admin', sysdate, 1, 3);
insert into faqa values(fseq.nextval, '답변4', '답변4', 'admin', sysdate, 1, 4);
insert into faqa values(fseq.nextval, '답변5', '답변5', 'admin', sysdate, 1, 5);

select * from faqa order by parno asc, gubun asc;
select * from faqa order by parno asc, gubun asc where no=3;
commit;