create table MemberA (id varchar2(16) primary key,
pw varchar2(20) not null,
name varchar2(50) not null,
email varchar2(100), 
tel	varchar2(30),
regdate date default sysdate);

create table BoardA (no	number primary key, 
title varchar2(50) not null,
content varchar2(800), 
author varchar2(16),
regdate date default sysdate);

alter table BoardA add CONSTRAINT fk_id FOREIGN key(author) REFERENCES MemberA(id);


create SEQUENCE bseq increment by 1 start with 1;

insert into MEMBERA values ('kdy', '123', '도도', 'dodo@naver.com', '010-4578-9303', sysdate);
insert into MEMBERA values ('joo', '12', '주주', 'jojo@naver.com', '010-1234-1234', sysdate);
insert into MEMBERA values ('jojo', '1234', '�����', 'juju@naver.com', '010-1234-9303', sysdate);
insert into MEMBERA values ('kny', '120', '��Ϳ�', 'kny@naver.com', '010-4571-9303', sysdate);
insert into MEMBERA values ('kws', '122', '��;�', 'kws@naver.com', '010-4578-1234', sysdate);

select * from membera;

commit;

insert into boarda values (bseq.nextval, '테스트 글1', '테스트 글1의 내용입니다.', 'kdy', sysdate);
insert into boarda values (bseq.nextval, '테스트 글2', '테스트 글2의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글3', '테스트 글3의 내용입니다.', 'kny', sysdate);
insert into boarda values (bseq.nextval, '테스트 글4', '테스트 글4의 내용입니다.', '123', sysdate);
insert into boarda values (bseq.nextval, '테스트 글5', '테스트 글5의 내용입니다.', 'knyy', sysdate);

create table BoardA (no	number primary key, 
title varchar2(50) not null,
content varchar2(800), 
author varchar2(16),
resdate date default sysdate);

alter table BoardA add CONSTRAINT fk_id FOREIGN key(author) REFERENCES MemberA(id);

drop sequence bseq;
create SEQUENCE bseq increment by 1 start with 1;