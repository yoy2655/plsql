create table board(
num number(5) primary key,
pass varchar2(30),
name varchar2(30),
email varchar2(30),
title varchar2(50),
content varchar2(1000),
readcount number(4) default 0,
writedate DATE default sysdate);

drop table board;
commit;

drop sequence bo_seq;
create sequence bo_seq start with 1 increment by 1;

insert into board(num, name, email, pass, title, content) values
(bo_seq.nextval, '홍길동', 'aa@naver.com', '1234', '첫방문', '안녕');

select * from board;
