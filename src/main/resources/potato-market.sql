SHOW TABLES;

/* 유저 테이블 생성 */
CREATE TABLE USER
(
	USER_ID               VARCHAR(100) NOT NULL PRIMARY KEY,
	USER_TEL              VARCHAR(100) NOT NULL,
	USER_ADDRESS          VARCHAR(100) NOT NULL,
	USER_CREATED_AT       DATETIME NOT NULL DEFAULT NOW(),
	USER_IMAGE            VARCHAR(100) NULL,
	USER_TYPE             VARCHAR(100) NOT NULL DEFAULT 'MEMBER',
	USER_PASSWORD         VARCHAR(100) NOT NULL,
	USER_EMAIL            VARCHAR(100) NOT NULL
);


/* 카테고리 테이블*/
CREATE TABLE CATEGORY
(
	CATEGORY_ID           INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CATEGORY_NAME         VARCHAR(100) NOT NULL
)
;

/* AUTH*/
create table AUTHORITIES(
   USERNAME VARCHAR(100) NOT NULL,
   AUTHORITY VARCHAR(100) NOT NULL,
   CONSTRAINT FK_AUTHORITIES foreign key(USERNAME) references USER(USER_ID),
   CONSTRAINT USER_AUTHORITIES primary key(USERNAME,AUTHORITY)
   );


/* 상품 테이블 생성 */
<!-- CREATE TABLE ITEM
(
	ITEM_ID               INTEGER NOT NULL PRIMARY KEY,
	USER_ID               VARCHAR(100) NOT NULL,
	LOCATION_ID           INTEGER NOT NULL,
	CATEGORY_ID           INTEGER NOT NULL,
	ITEM_TITLE            VARCHAR(100) NOT NULL,
	ITEM_PRICE            INTEGER NOT NULL,
	ITEM_HIT              INTEGER NOT NULL,
	ITEM_CONTENT          LONGTEXT NOT NULL,
	ITEM_STATUS           VARCHAR(100) NOT NULL,
	ITEM_CREATED_AT       DATETIME NOT NULL DEFAULT NOW(),
	CONSTRAINT FK_ITEM_1 FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID),
	CONSTRAINT FK_ITEM_2 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
)
; -->

drop table item;
drop table image;


/* 상품 테이블 생성 */
CREATE TABLE ITEM
(
	ITEM_ID               INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	USER_ID               VARCHAR(100) NOT NULL,
	CATEGORY_ID           INTEGER NOT NULL,
	ITEM_TITLE            VARCHAR(100) NOT NULL,
	ITEM_PRICE            INTEGER NOT NULL,
	ITEM_HIT              INTEGER NOT NULL DEFAULT 0 ,
	ITEM_CONTENT          LONGTEXT NOT NULL,
	ITEM_STATUS           VARCHAR(100) NOT NULL DEFAULT 'ON SALE', 
	ITEM_CREATED_AT       DATETIME NOT NULL DEFAULT NOW(),
	CONSTRAINT FK_ITEM_1 FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID),
	CONSTRAINT FK_ITEM_2 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
)
;



INSERT INTO item(ITEM_ID,USER_ID,IMAGE_NAME) VALUES(1,'123.jpg');

/* 아이템 테이블에 좋아요 관련 컬럼들 추가 */
ALTER TABLE ITEM CHANGE COLUMN ITEM_HIT INTEGER NOT NULL DEFAULT '0';
ALTER TABLE potato.ITEM ADD ITEM_LIKE_ID INTEGER NOT NULL;


/* 좋아요 테이블 생성 */
drop TABLE ITEM_LIKE;
CREATE TABLE ITEM_LIKE
(
	LIKE_ID              INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ITEM_ID               INTEGER NOT NULL,
	USER_ID            VARCHAR(100) NOT  NULL,
   CONSTRAINT FK_ITEM_LIKE_1 FOREIGN KEY (ITEM_ID) REFERENCES ITEM(ITEM_ID) ON DELETE CASCADE,
   CONSTRAINT FK_ITEM_LIKE_2 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) ON DELETE CASCADE ON UPDATE CASCADE
)
;

SELECT * FROM potato.ITEM_LIKE ;
DROP TABLE potato.ITEM_LIKE;


/* 이미지 테이블 생성 */
CREATE TABLE IMAGE
(
	IMAGE_ID              INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ITEM_ID               INTEGER NOT NULL,
	IMAGE_NAME            VARCHAR(100)  NULL,
	CONSTRAINT FK_IMAGE_1 FOREIGN KEY (ITEM_ID) REFERENCES ITEM(ITEM_ID)
)
;



SELECT * FROM IMAGE;
DELETE FROM ITEM 
WHERE ITEM_ID=67;

ALTER TABLE IMAGE AUTO_INCREMENT=1;

/* 자주묻는 질문 게시판 테이블 생성*/
CREATE TABLE FAQ
(
	FAQ_ID                INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FAQ_TITLE             VARCHAR(100) NOT NULL,
	FAQ_CONTENT           LONGTEXT NOT NULL,
	USER_ID               VARCHAR(100) NOT NULL,
	CONSTRAINT FK_FAQ_1 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
)
;
DROP TABLE FAQ;

select * from FAQ;

/*채팅방 테이블 생성*/
CREATE TABLE CHATROOM
(
	CHATROOM_ID           INTEGER NOT NULL PRIMARY KEY,
	CHATROOM_SENDER_ID    VARCHAR(100) NOT NULL,
	CHATROOM_RECIVER_ID   VARCHAR(100) NOT NULL,
	CHATROOM_UPDATE_AT    DATETIME NOT NULL,
	ITEM_ID               INTEGER NOT NULL
)
;


/* 채팅 테이블 생성*/
CREATE TABLE CHATCONENT
(
	CHATCONTENT_ID        VARCHAR(100) NOT NULL PRIMARY KEY,
	CHATCONTENT_CONTENT   LONGBLOB NOT NULL,
	CHATROOM_ID           INTEGER NOT NULL
)
;



/*FOREIGN KEY 생성*/ 
ALTER TABLE CHATCONENT
	ADD FOREIGN KEY R_12 (CHATROOM_ID) REFERENCES CHATROOM(CHATROOM_ID)
;


ALTER TABLE CHATROOM
	ADD FOREIGN KEY R_18 (ITEM_ID) REFERENCES ITEM(ITEM_ID)
;

DROP TABLE USER;  
DROP TABLE CATEGORY;  
DROP TABLE ITEM;  
DROP TABLE IMAGE;

use potato
select * from potato.ITEM;

DROP TABLE COMMUNITY

CREATE TABLE COMMUNITY
(
	COMMUNITY_ID               INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	USER_ID               VARCHAR(100) NOT NULL,
	COMMUNITY_CONTENT LONGTEXT NOT NULL,
	CONSTRAINT FK_COMMUNITY_1 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
)
;

SELECT C.COMMUNITY_ID, U.USER_ID, U.USER_ADDRESS, C.COMMUNITY_CONTENT 
FROM COMMUNITY C, USER U
WHERE C.USER_ID=U.USER_ID

CREATE TABLE COMMENT
(
	COMMENT_ID               INTEGER NOT NULL PRIMARY KEY,
	COMMUNITY_ID               INTEGER NOT NULL,
	REPLY_ID 							INTEGER,
	COMMENT_CONTENT 		LONGTEXT NOT NULL,
	CONSTRAINT FK_COMMENT_1 FOREIGN KEY (COMMUNITY_ID) REFERENCES COMMUNITY(COMMUNITY_ID)
)
;
SELECT * FROM COMMENT;
DROP TABLE COMMENT;

SELECT * FROM COMMUNITY;
INSERT INTO  COMMUNITY  (USER_ID, COMMUNITY_CONTENT) VALUES ("1234","안녕");

use potato;

SELECT * FROM ITEM;


select * from USER;

select * from IMAGE;

drop table IMAGE;

insert into

//대댓글이 없는 코멘트 테이블
CREATE TABLE COMMENT(
	COMMENT_ID               INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	COMMUNITY_ID               INTEGER NOT NULL,
	COMMENT_CONTENT 		LONGTEXT NOT NULL,
	USER_ID 			 VARCHAR(100) NOT NULL,
	COMMENT_CREATED_AT				DATETIME NOT NULL,
	CONSTRAINT FK_COMMENT_1 FOREIGN KEY (COMMUNITY_ID) REFERENCES COMMUNITY(COMMUNITY_ID) ON DELETE CASCADE,
	CONSTRAINT FK_COMMENT_2 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) ON DELETE CASCADE
)

INSERT INTO COMMENT (COMMUNITY_ID, COMMENT_CONTENT, USER_ID, COMMENT_CREATED_AT)
	VALUES (9, '댓글이다', '1234', now())

SELECT * FROM COMMENT WHERE COMMENT_ID=1;
SELECT * FROM COMMENT
DELETE FROM COMMENT WHERE COMMENT_ID=10;
UPDATE COMMENT SET COMMENT_ID='안녕' WHERE COMMENT_ID=513

 
COMMENT_GROUP : 부모 댓글번호
COMMENT_ORDER : 같은 부모 댓글중 순서
COMMENT_DEPT : 댓글의 깊이 댓글이면0, 대댓글이면 1
ON DELETE CASCADE 부모 테이블 삭제시 같이 삭제 
ON UPDATE CASCADE 수정시 같이 변경

DROP TABLE COMMENT;

//대댓글 코멘트 테이블
CREATE TABLE COMMENT(
	COMMENT_ID              			INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	COMMUNITY_ID              		INTEGER NOT NULL,
	COMMENT_CONTENT 			LONGTEXT NOT NULL,
	USER_ID 			 					VARCHAR(100) NOT NULL,
	COMMENT_CREATED_AT		DATETIME NOT NULL,
	COMMENT_GROUP 					INTEGER NOT NULL,
	COMMENT_ORDER  				INTEGER NOT NULL,
	COMMENT_DEPTH 					INTEGER NOT NULL,
	CONSTRAINT FK_COMMENT_1 FOREIGN KEY (COMMUNITY_ID) REFERENCES COMMUNITY(COMMUNITY_ID) ON DELETE CASCADE,
	CONSTRAINT FK_COMMENT_2 FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) ON DELETE CASCADE
)

SELECT * FROM ITEM;

SELECT I.ITEM_TITLE , U.USER_ADDRESS
FROM ITEM I, USER U
WHERE I.USER_ID=U.USER_ID

서울시 강남구 개포동
의자

      
SELECT I.ITEM_ID, I.ITEM_TITLE, I.ITEM_PRICE, I.ITEM_CONTENT, I.ITEM_CREATED_AT, U.USER_ADDRESS, I.CATEGORY_ID,
I.ITEM_HIT, I.ITEM_STATUS, I.USER_ID , U.USER_TEL, C.CATEGORY_NAME
FROM
ITEM I, USER U,  CATEGORY C
WHERE
I.USER_ID = U.USER_ID 
AND
I.CATEGORY_ID = C.CATEGORY_ID
AND
I.ITEM_TITLE LIKE '%과%'
AND
I.CATEGORY_ID =1
AND
U.USER_ADDRESS = '경기도 여주시 흥천면'
ORDER BY I.ITEM_CREATED_AT DESC
      
SELECT I.ITEM_ID, I.ITEM_TITLE, I.ITEM_PRICE, I.ITEM_CONTENT, I.ITEM_CREATED_AT, U.USER_ADDRESS, I.CATEGORY_ID,
I.ITEM_HIT, I.ITEM_STATUS, I.USER_ID , U.USER_TEL, C.CATEGORY_NAME
FROM
ITEM I, USER U,  CATEGORY C
WHERE
I.USER_ID = U.USER_ID 
AND	
I.CATEGORY_ID = C.CATEGORY_ID
AND
I.ITEM_TITLE LIKE '%과%'
OR
I.CATEGORY_ID =1
AND
U.USER_ADDRESS = '경기도 여주시 흥천면'
ORDER BY I.ITEM_CREATED_AT DESC

SELECT I.ITEM_TITLE, U.USER_ADDRESS, C.CATEGORY_ID
FROM ITEM I, USER U, CATEGORY C
WHERE I.USER_ID = U.USER_ID
AND C.CATEGORY_ID=I.CATEGORY_ID


SELECT I.ITEM_TITLE , I.USER_ID, U.USER_ADDRESS, C.CATEGORY_ID,C.CATEGORY_NAME
FROM ITEM I JOIN USER U
ON I.USER_ID=U.USER_ID
JOIN CATEGORY C
ON I.CATEGORY_ID=C.CATEGORY_ID
WHERE (I.ITEM_TITLE LIKE '%억%'
AND U.USER_ADDRESS = '경기도 여주시 흥천면')
OR  (I.ITEM_TITLE LIKE '%억%'
AND U.USER_ADDRESS = '경기도 여주시 흥천면'AND C.CATEGORY_ID =4)

SELECT * FROM AUTHORITIES;

SELECT U.USER_ID, A.AUTHORITY
FROM USER U, AUTHORITIES A
WHERE U.USER_ID=A.USERNAME
AND AUTHORITY='ROLE_ADMIN'

SELECT U.USER_ID, A.AUTHORITY
FROM USER U, AUTHORITIES A
WHERE U.USER_ID=A.USERNAME	
AND USER_ID='admin'

SELECT *
FROM USER U, AUTHORITIES A
WHERE U.USER_ID=A.USERNAME	
AND U.USER_ID='1234'
GROUP BY U.USER_ID
HAVING COUNT(*)=1

SELECT * FROM AUTHORITIES

INSERT INTO AUTHORITIES(USERNAME, AUTHORITY) VALUES('1234','ROLE_ADMIN');
DELETE FROM AUTHORITIES WHERE USERNAME='java' AND AUTHORITY='ROLE_ADMIN';


		SELECT I.ITEM_ID, I.ITEM_TITLE, I.ITEM_PRICE, I.ITEM_CONTENT, I.ITEM_CREATED_AT, U.USER_ADDRESS, I.CATEGORY_ID,
		I.ITEM_HIT, I.ITEM_STATUS, I.USER_ID , U.USER_TEL, C.CATEGORY_NAME
		FROM
		potato.ITEM I, potato.USER U, potato.CATEGORY C
		WHERE
		U.USER_ID = I.USER_ID
		AND
		I.CATEGORY_ID = C.CATEGORY_ID
		AND 
		I.USER_ID= '1234'
		AND
		NOT I.ITEM_ID IN('82')	
		ORDER BY I.ITEM_CREATED_AT DESC LIMIT 3
		
		select * from CATEGORY;
		
		INSERT INTO CATEGORY VALUES(18, '테스트')
		
		
		select * from USER;
		
		UPDATE USER SET USER_ADDRESS='서울시 강남구 개포동' WHERE USER_ADDRESS='경기도 수원시 영통구 광교1동'

		show tables;
		
		select * from user;
		
		
		insert into user (USER_ID,USER_PASSWORD,USER_TEL,USER_ADDRESS,USER_EMAIl)
VALUES ('1234','1234','01051606514','korea','a@naver.com');
	 