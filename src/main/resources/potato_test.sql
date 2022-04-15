DROP Table user;

CREATE TABLE USER
(
   USER_ID               VARCHAR(100) NOT NULL PRIMARY KEY,
   USER_PASSWORD         VARCHAR(100) NOT NULL,
   USER_TEL              VARCHAR(100) NOT NULL,
   USER_ADDRESS          VARCHAR(100) NOT NULL,
   USER_EMAIL            VARCHAR(100) NOT NULL,
   USER_IMAGE            VARCHAR(100) NULL,
   USER_ENABLED          VARCHAR(100) NOT NULL DEFAULT '1',
   USER_CREATED_AT       DATETIME NOT NULL DEFAULT NOW()
);

drop table AUTHORITIES;

create table AUTHORITIES(
   USERNAME VARCHAR(100) NOT NULL,
   AUTHORITY VARCHAR(100) NOT NULL,
   CONSTRAINT FK_AUTHORITIES foreign key(USERNAME) references USER(USER_ID),
   CONSTRAINT USER_AUTHORITIES primary key(USERNAME,AUTHORITY)
   );



/*CREATE TABLE USER
(
	USER_ID               VARCHAR(100) NOT NULL PRIMARY KEY,
	USER_PASSWORD         VARCHAR(100) NOT NULL,
	USER_TEL              VARCHAR(100) NOT NULL,
	USER_ADDRESS          VARCHAR(100)  not NULL,
	USER_EMAIL            VARCHAR(100) NOT NULL,
	USER_IMAGE            VARCHAR(100) NULL,
	USER_TYPE             VARCHAR(100)  not NULL DEFAULT 'MEMBER',
	USER_CREATED_AT       DATETIME NULL DEFAULT NOW()
); */


/*DROP TABLE AUTHORITIES; 
:권한테이블은 현재 감자마켓 사용자가 복수의 권한을 가지지 않고 사용자/ 관리자 / 고스트 이렇게 1개의 역할만을 가지므로 
1정규화가 필요없으므로 테이블을 분리할 필요가 없어서 생성하지 않을 것임


create table AUTHORITIES
(
   AUTHORITIES_USERNAME VARCHAR(100) NOT NULL,
   AUTHORITIY VARCHAR(100) NOT NULL,
   CONSTRAINT FK_AUTHORITIES foreign key(AUTHORITIES_USERNAME) references USER(USER_ID),
   CONSTRAINT USER_AUTHORITIES primary key(AUTHORITIES_USERNAME,AUTHORITIY)

   )*/


-----테스트 위한 임의 유저생성 (id체크)--
insert into user (USER_ID,USER_PASSWORD,USER_TEL,USER_ADDRESS,USER_EMAIl)
VALUES ('1234','1234','01012341234','여주','a@naver.com');

insert into AUTHORITIES(USERNAME,AUTHORITY) values ('spring1','User');

select * from USER;
select* from AUTHORITIES;

select us.USER_ID,us.USER_PASSWORD,us.USER_TEL,us.USER_ADDRESS,us.USER_EMAIL,Au.USERNAME,AUTHORITIY
from AUTHORITIES Au ,user us
where us.USER_ID=au.USERNAME

drop table AUTHORITIES;
select count(*) from user;



--아이디 중복체크
select count(*) from user where user_id='spring';

--회원 정보 수정 (전화번호, 이메일)
update USER
set USER_TEL=#{userTel},USER_EMAIL=#{userEmail} 
WHERE USER_ID=#{userId}

update USER
set USER_IMAGE='60f24f3d-e39e-4aae-93cf-505e48dea535.jpg'
WHERE USER_ID='1234'

select * from USER;
select*from ITEM;
select * from IMAGE;


select * from IMAGE;
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(1,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(8,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(10,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(11,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(12,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(13,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(14,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(22,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(25,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(43,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(44,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(46,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(47,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(48,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(49,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(50,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(51,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(52,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(53,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(64,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(5,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(54,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(54,'123.jpg');
INSERT INTO IMAGE(ITEM_ID,IMAGE_NAME) VALUES(54,'123.jpg');
INSERT INTO USER(USER_IMAGE) VALUES(54,'123.jpg');
UPDATE USER SET USER_IMAGE='루피감자.png'
WHERE USER_ID='1234';

--userTel=#{userTel},userEmail=#{userEmail}
delete from USER
where USER_ID='ADMIN'

select * from ITEM
;

delete from FAQ
where USER_ID='ADMIN'

--insert into AUTHORITIES(USERNAME,AUTHORITY) values ('admin444','ROLE_ADMIN');

delete from ITEM WHERE ITEM_ID=80;

select * from item;

select * from IMAGE WHERE ITEM_ID=99 ORDER BY IMAGE_ID ASC LIMIT 1;

SELECT * FROM ITEM

SELECT * FROM CATEGORY


SELECT * FROM USER;

show TABLES;

SELECT * FROM CATEGORY;

INSERT INTO CATEGORY(CATEGORY_NAME) VALUES ('Electronics');

