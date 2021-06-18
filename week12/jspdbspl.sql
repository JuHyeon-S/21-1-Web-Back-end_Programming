create table student(
	id varchar(20) NOT NULL,
    passwd varchar(20) NOT NULL,
    name varchar(20) NOT NULL,
    year int NULL,
    snum varchar(10) null,
    depart varchar(20) null,
    mobile1 char(3) null,
    mobile2 varchar(10) null,
    address varchar(65) null,
    email varchar(30) null
);

show tables;

insert into student values ('javajsp', 'java8394', '김정수', 2010, '1077818','컴퓨터공학과', '011', '7649-9875', '서울시', 'java2@gmail.com');
insert into student values ('jhk', 'jh1234', '김지현', 2017, '1751018','컴퓨터공학과', '010', '7623-9255', '서울시', 'jihyun@gmail.com');
insert into student values ('ahn12', 'aaa1221', '안애린', 2018, '1852088','전자공학과', '010', '1221-1004', '성남시', 'ahn1221@naver.com');
insert into student values ('park23', 'p000203', '박아연', 2019, '1923102','경영학과', '010', '2291-2594', '남양주시', 'park0203@naver.com');
insert into student values ('seo82', 'jh12345', '서주현', 2018, '1851035','컴퓨터공학과', '010', '5316-7980', '구리시', 'seo99832@daum.net');