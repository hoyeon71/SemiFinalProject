--------------------------------------------------------
--  파일이 생성됨 - 월요일-12월-19-2022   
--------------------------------------------------------
DROP SEQUENCE "CONNECT_DETAIL_SEQ1";
DROP SEQUENCE "JEJU_PLACE_SEQ";
DROP SEQUENCE "LIST_NO_SEQ";
DROP SEQUENCE "MAP_NO_SEQ";
DROP SEQUENCE "MATE_VIEWS_SEQ";
DROP SEQUENCE "NOTICE_BOARD_SEQ";
DROP SEQUENCE "NOTICE_SEQ";
DROP SEQUENCE "SEQ_AUTHDETAIL_CODE";
DROP SEQUENCE "SEQ_AUTH_CODE";
DROP SEQUENCE "USERS_SEQ";
DROP TABLE "AUTHORITY" cascade constraints;
DROP TABLE "AUTHORITY_DETAIL" cascade constraints;
DROP TABLE "CONNECT_DETAIL" cascade constraints;
DROP TABLE "JEJU_PLACE" cascade constraints;
DROP TABLE "MAIN" cascade constraints;
DROP TABLE "MAIN_PRIVACY_FORM" cascade constraints;
DROP TABLE "MAIN_TOS" cascade constraints;
DROP TABLE "MATCHING" cascade constraints;
DROP TABLE "MATCHING_DETAIL" cascade constraints;
DROP TABLE "MATCHING_IMAGE" cascade constraints;
DROP TABLE "MATCHING_MAP" cascade constraints;
DROP TABLE "MATE_LIST" cascade constraints;
DROP TABLE "NOTICE" cascade constraints;
DROP TABLE "NOTICE_BOARD" cascade constraints;
DROP TABLE "NOTICE_LIST" cascade constraints;
DROP TABLE "PLACE_IMAGES" cascade constraints;
DROP TABLE "PLACE_RECOMMAND_DETAIL" cascade constraints;
DROP TABLE "PLACE_REPLY" cascade constraints;
DROP TABLE "REVIEW" cascade constraints;
DROP TABLE "REV_IMAGE" cascade constraints;
DROP TABLE "REV_REPLY" cascade constraints;
DROP TABLE "TAG" cascade constraints;
DROP TABLE "TAG_DETAIL" cascade constraints;
DROP TABLE "USERS" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence CONNECT_DETAIL_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "CONNECT_DETAIL_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JEJU_PLACE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "JEJU_PLACE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 90 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LIST_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LIST_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 56 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MAP_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MAP_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MATE_VIEWS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MATE_VIEWS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_AUTHDETAIL_CODE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_AUTHDETAIL_CODE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_AUTH_CODE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_AUTH_CODE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AUTHORITY
--------------------------------------------------------

  CREATE TABLE "AUTHORITY" 
   (	"AUTHORITY_NO" VARCHAR2(255 BYTE), 
	"AUTHORITY_NAME" VARCHAR2(255 BYTE), 
	"ROLE_LIST" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTHORITY_DETAIL
--------------------------------------------------------

  CREATE TABLE "AUTHORITY_DETAIL" 
   (	"USER_NO" NUMBER(38,0), 
	"AUTHORITY_NO" NUMBER(38,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CONNECT_DETAIL
--------------------------------------------------------

  CREATE TABLE "CONNECT_DETAIL" 
   (	"CON_NO" NUMBER(38,0), 
	"USERS_ID" VARCHAR2(255 BYTE), 
	"CON_DATE" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "CONNECT_DETAIL"."CON_NO" IS '일련번호';
   COMMENT ON COLUMN "CONNECT_DETAIL"."USERS_ID" IS '접속한 유저ID';
   COMMENT ON COLUMN "CONNECT_DETAIL"."CON_DATE" IS '접속시도한 일시';
--------------------------------------------------------
--  DDL for Table JEJU_PLACE
--------------------------------------------------------

  CREATE TABLE "JEJU_PLACE" 
   (	"PLACE_NO" NUMBER(38,0), 
	"PLACE_NAME" VARCHAR2(255 BYTE), 
	"PLACE_ADDRESS" VARCHAR2(255 BYTE), 
	"PLACE_DESC" VARCHAR2(4000 BYTE), 
	"PLACE_DEL_STAT" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "JEJU_PLACE"."PLACE_NO" IS '관광지일련번호';
   COMMENT ON COLUMN "JEJU_PLACE"."PLACE_NAME" IS '관광지명';
   COMMENT ON COLUMN "JEJU_PLACE"."PLACE_ADDRESS" IS '관광지 주소';
   COMMENT ON COLUMN "JEJU_PLACE"."PLACE_DESC" IS '관광지 설명';
   COMMENT ON COLUMN "JEJU_PLACE"."PLACE_DEL_STAT" IS '삭제 여부';
--------------------------------------------------------
--  DDL for Table MAIN
--------------------------------------------------------

  CREATE TABLE "MAIN" 
   (	"MAIN_NO" NUMBER, 
	"MAIN_IMAGE" BLOB
   ) ;
--------------------------------------------------------
--  DDL for Table MAIN_PRIVACY_FORM
--------------------------------------------------------

  CREATE TABLE "MAIN_PRIVACY_FORM" 
   (	"FORM_TITLE" VARCHAR2(225 BYTE), 
	"FORM_COMMENT" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "MAIN_PRIVACY_FORM"."FORM_TITLE" IS '제목';
   COMMENT ON COLUMN "MAIN_PRIVACY_FORM"."FORM_COMMENT" IS '본문';
--------------------------------------------------------
--  DDL for Table MAIN_TOS
--------------------------------------------------------

  CREATE TABLE "MAIN_TOS" 
   (	"TOS_TITLE" VARCHAR2(225 BYTE), 
	"TOS_COMMENT" VARCHAR2(4000 BYTE)
   ) ;

   COMMENT ON COLUMN "MAIN_TOS"."TOS_TITLE" IS '제목';
   COMMENT ON COLUMN "MAIN_TOS"."TOS_COMMENT" IS '본문';
--------------------------------------------------------
--  DDL for Table MATCHING
--------------------------------------------------------

  CREATE TABLE "MATCHING" 
   (	"MAT_NO" NUMBER(38,0), 
	"MAT_TITLE" VARCHAR2(255 BYTE), 
	"MAT_CONTENT" VARCHAR2(255 BYTE), 
	"MAT_CRE_DATE" VARCHAR2(255 BYTE), 
	"MAT_VIEWS" NUMBER(38,0), 
	"MAT_DEL_STAT" VARCHAR2(255 BYTE), 
	"USERS_ID" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "MATCHING"."MAT_NO" IS '모집글 일련번호';
   COMMENT ON COLUMN "MATCHING"."MAT_TITLE" IS '모집글 제목';
   COMMENT ON COLUMN "MATCHING"."MAT_CONTENT" IS '모집글 내용';
   COMMENT ON COLUMN "MATCHING"."MAT_CRE_DATE" IS '모집글 작성일시';
   COMMENT ON COLUMN "MATCHING"."MAT_VIEWS" IS '모집글 조회수';
   COMMENT ON COLUMN "MATCHING"."MAT_DEL_STAT" IS '삭제 여부';
   COMMENT ON COLUMN "MATCHING"."USERS_ID" IS '작성자 ID';
--------------------------------------------------------
--  DDL for Table MATCHING_DETAIL
--------------------------------------------------------

  CREATE TABLE "MATCHING_DETAIL" 
   (	"MAT_NO" NUMBER(38,0), 
	"USERS_ID" VARCHAR2(255 BYTE), 
	"MAT_RESULT" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "MATCHING_DETAIL"."MAT_NO" IS '모집글 일련번호';
   COMMENT ON COLUMN "MATCHING_DETAIL"."USERS_ID" IS '신청자 ID';
   COMMENT ON COLUMN "MATCHING_DETAIL"."MAT_RESULT" IS '수락 여부';
--------------------------------------------------------
--  DDL for Table MATCHING_IMAGE
--------------------------------------------------------

  CREATE TABLE "MATCHING_IMAGE" 
   (	"M_IMAGE_NO" NUMBER(38,0), 
	"M_IMAGE_NAME" VARCHAR2(255 BYTE), 
	"M_IMAGE_URL" VARCHAR2(255 BYTE), 
	"M_IMAGE_STAT" VARCHAR2(255 BYTE), 
	"MAT_NO" NUMBER(38,0)
   ) ;

   COMMENT ON COLUMN "MATCHING_IMAGE"."M_IMAGE_NO" IS '모집글 이미지 일련번호';
   COMMENT ON COLUMN "MATCHING_IMAGE"."M_IMAGE_NAME" IS '모집글 이미지명';
   COMMENT ON COLUMN "MATCHING_IMAGE"."M_IMAGE_URL" IS '모집글 이미지URL';
   COMMENT ON COLUMN "MATCHING_IMAGE"."M_IMAGE_STAT" IS '모집글 이미지 구분';
   COMMENT ON COLUMN "MATCHING_IMAGE"."MAT_NO" IS '모집글 일련번호';
--------------------------------------------------------
--  DDL for Table MATCHING_MAP
--------------------------------------------------------

  CREATE TABLE "MATCHING_MAP" 
   (	"MAP_NO" NUMBER, 
	"MAP_LATITUDE" NUMBER, 
	"MAP_LONGITUDE" NUMBER, 
	"MARKER_NAME" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MATE_LIST
--------------------------------------------------------

  CREATE TABLE "MATE_LIST" 
   (	"LIST_NO" NUMBER, 
	"MATE_PLACE" VARCHAR2(20 BYTE), 
	"MATE_MEMBER" NUMBER, 
	"MATE_TIME" NUMBER, 
	"MATE_DATE" VARCHAR2(20 BYTE), 
	"MATE_CHARGE" NUMBER, 
	"MATE_VIEWS" NUMBER, 
	"MAP_NO" NUMBER, 
	"MATE_CONTENT" VARCHAR2(255 BYTE), 
	"MATE_JOIN" VARCHAR2(2 BYTE) DEFAULT 'Y', 
	"NICK_NAME" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NOTICE_ADMIN" VARCHAR2(4000 BYTE), 
	"NOTICE_TITLE" VARCHAR2(225 BYTE), 
	"NOTICE_INSERT" CLOB, 
	"NOTICE_VIEWS" NUMBER, 
	"NOTICE_DATE" VARCHAR2(20 BYTE), 
	"NOTICE_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "NOTICE"."NOTICE_ADMIN" IS '제목';
   COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS '관리자';
   COMMENT ON COLUMN "NOTICE"."NOTICE_INSERT" IS '글내용';
   COMMENT ON COLUMN "NOTICE"."NOTICE_VIEWS" IS '조회수';
   COMMENT ON COLUMN "NOTICE"."NOTICE_DATE" IS '작성일';
   COMMENT ON COLUMN "NOTICE"."NOTICE_NO" IS '글번호
';
--------------------------------------------------------
--  DDL for Table NOTICE_BOARD
--------------------------------------------------------

  CREATE TABLE "NOTICE_BOARD" 
   (	"NOBOARD_TITLE" VARCHAR2(225 BYTE), 
	"NOBOARD_ADMIN" VARCHAR2(225 BYTE), 
	"NOBOARD_DATE" DATE, 
	"NOBOARD_INSERT" BLOB
   ) ;

   COMMENT ON COLUMN "NOTICE_BOARD"."NOBOARD_TITLE" IS '제목';
   COMMENT ON COLUMN "NOTICE_BOARD"."NOBOARD_ADMIN" IS '작성자';
   COMMENT ON COLUMN "NOTICE_BOARD"."NOBOARD_DATE" IS '작성일';
   COMMENT ON COLUMN "NOTICE_BOARD"."NOBOARD_INSERT" IS '글 내용';
--------------------------------------------------------
--  DDL for Table NOTICE_LIST
--------------------------------------------------------

  CREATE TABLE "NOTICE_LIST" 
   (	"NOTICELIST_TITLE" VARCHAR2(225 BYTE), 
	"NOTICELIST_ADMIN" VARCHAR2(20 BYTE), 
	"NOTICELIST_NO" NUMBER DEFAULT NULL, 
	"NOTICELIST_DATE" DATE, 
	"NOTICELIST_VIEWS" NUMBER
   ) ;

   COMMENT ON COLUMN "NOTICE_LIST"."NOTICELIST_TITLE" IS '제목';
   COMMENT ON COLUMN "NOTICE_LIST"."NOTICELIST_ADMIN" IS '관리자';
   COMMENT ON COLUMN "NOTICE_LIST"."NOTICELIST_NO" IS '글번호';
   COMMENT ON COLUMN "NOTICE_LIST"."NOTICELIST_DATE" IS '작성일';
   COMMENT ON COLUMN "NOTICE_LIST"."NOTICELIST_VIEWS" IS '조회수';
--------------------------------------------------------
--  DDL for Table PLACE_IMAGES
--------------------------------------------------------

  CREATE TABLE "PLACE_IMAGES" 
   (	"P_IMAGE_NO" NUMBER(38,0), 
	"P_IMAGE_URL" VARCHAR2(255 BYTE), 
	"P_IMAGE_STAT" VARCHAR2(255 BYTE), 
	"PLACE_NO" NUMBER(38,0)
   ) ;

   COMMENT ON COLUMN "PLACE_IMAGES"."P_IMAGE_NO" IS '관광지이미지일련번호';
   COMMENT ON COLUMN "PLACE_IMAGES"."P_IMAGE_URL" IS '관광지이미지URL';
   COMMENT ON COLUMN "PLACE_IMAGES"."P_IMAGE_STAT" IS '관광지이미지구분';
   COMMENT ON COLUMN "PLACE_IMAGES"."PLACE_NO" IS '관광지일련번호';
--------------------------------------------------------
--  DDL for Table PLACE_RECOMMAND_DETAIL
--------------------------------------------------------

  CREATE TABLE "PLACE_RECOMMAND_DETAIL" 
   (	"USERS_ID" VARCHAR2(255 BYTE), 
	"PLACE_NO" NUMBER(38,0)
   ) ;

   COMMENT ON COLUMN "PLACE_RECOMMAND_DETAIL"."USERS_ID" IS '추천인 ID';
   COMMENT ON COLUMN "PLACE_RECOMMAND_DETAIL"."PLACE_NO" IS '관광지일련번호';
--------------------------------------------------------
--  DDL for Table PLACE_REPLY
--------------------------------------------------------

  CREATE TABLE "PLACE_REPLY" 
   (	"P_REP_NO" NUMBER(38,0), 
	"P_REP_CONTENT" VARCHAR2(255 BYTE), 
	"P_REP_CRE_DATE" VARCHAR2(255 BYTE), 
	"USERS_ID" VARCHAR2(255 BYTE), 
	"PLACE_NO" NUMBER(38,0)
   ) ;

   COMMENT ON COLUMN "PLACE_REPLY"."P_REP_NO" IS '관광지댓글일련번호';
   COMMENT ON COLUMN "PLACE_REPLY"."P_REP_CONTENT" IS '관광지댓글 본문';
   COMMENT ON COLUMN "PLACE_REPLY"."P_REP_CRE_DATE" IS '관광지댓글 작성일시';
   COMMENT ON COLUMN "PLACE_REPLY"."USERS_ID" IS '관광지댓글 작성자';
   COMMENT ON COLUMN "PLACE_REPLY"."PLACE_NO" IS '관광지일련번호';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"REV_NO" NUMBER(38,0), 
	"REV_TITLE" VARCHAR2(255 BYTE), 
	"REV_CONTENT" VARCHAR2(4000 BYTE), 
	"REV_CRE_DATE" DATE, 
	"PLACE_NO" NUMBER(38,0), 
	"REV_VIEWS" NUMBER(38,0), 
	"REV_DEL_STAT" VARCHAR2(255 BYTE) DEFAULT 'N', 
	"USERS_ID" VARCHAR2(255 BYTE), 
	"USER_NICKNAME" VARCHAR2(255 BYTE), 
	"PLACE_NAME" VARCHAR2(255 BYTE), 
	"P_IMAGE_URL" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "REVIEW"."REV_NO" IS '후기일련번호';
   COMMENT ON COLUMN "REVIEW"."REV_TITLE" IS '후기제목';
   COMMENT ON COLUMN "REVIEW"."REV_CONTENT" IS '후기내용';
   COMMENT ON COLUMN "REVIEW"."REV_CRE_DATE" IS '후기작성일시';
   COMMENT ON COLUMN "REVIEW"."PLACE_NO" IS '관광지일련번호';
   COMMENT ON COLUMN "REVIEW"."REV_VIEWS" IS '후기조회수';
   COMMENT ON COLUMN "REVIEW"."REV_DEL_STAT" IS '삭제여부';
   COMMENT ON COLUMN "REVIEW"."USERS_ID" IS '후기작성자ID';
   COMMENT ON COLUMN "REVIEW"."USER_NICKNAME" IS '닉네임';
   COMMENT ON COLUMN "REVIEW"."PLACE_NAME" IS '여행지명';
   COMMENT ON COLUMN "REVIEW"."P_IMAGE_URL" IS '여행지URL';
--------------------------------------------------------
--  DDL for Table REV_IMAGE
--------------------------------------------------------

  CREATE TABLE "REV_IMAGE" 
   (	"R_IMAGE_NO" NUMBER(38,0), 
	"R_IMAGE_NAME" VARCHAR2(255 BYTE), 
	"R_IMAGE_URL" VARCHAR2(255 BYTE), 
	"R_IMAGE_STAT" VARCHAR2(255 BYTE), 
	"REV_NO" NUMBER(38,0)
   ) ;

   COMMENT ON COLUMN "REV_IMAGE"."R_IMAGE_NO" IS '후기이미지일련번호';
   COMMENT ON COLUMN "REV_IMAGE"."R_IMAGE_NAME" IS '후기이미지명';
   COMMENT ON COLUMN "REV_IMAGE"."R_IMAGE_URL" IS '후기이미지URL';
   COMMENT ON COLUMN "REV_IMAGE"."R_IMAGE_STAT" IS '후기이미지구분';
   COMMENT ON COLUMN "REV_IMAGE"."REV_NO" IS '후기일련번호';
--------------------------------------------------------
--  DDL for Table REV_REPLY
--------------------------------------------------------

  CREATE TABLE "REV_REPLY" 
   (	"R_REP_NO" NUMBER(38,0), 
	"R_REP_CONTENT" VARCHAR2(255 BYTE), 
	"R_REP_CRE_DATE" VARCHAR2(255 BYTE), 
	"USERS_ID" VARCHAR2(255 BYTE), 
	"REV_NO" NUMBER(38,0)
   ) ;

   COMMENT ON COLUMN "REV_REPLY"."R_REP_NO" IS '댓글일련번호';
   COMMENT ON COLUMN "REV_REPLY"."R_REP_CONTENT" IS '댓글내용';
   COMMENT ON COLUMN "REV_REPLY"."R_REP_CRE_DATE" IS '댓글작성일시';
   COMMENT ON COLUMN "REV_REPLY"."USERS_ID" IS '댓글작성자ID';
   COMMENT ON COLUMN "REV_REPLY"."REV_NO" IS '후기일련번호';
--------------------------------------------------------
--  DDL for Table TAG
--------------------------------------------------------

  CREATE TABLE "TAG" 
   (	"TAG_NO" NUMBER(38,0), 
	"TAG_NAME" VARCHAR2(255 BYTE)
   ) ;

   COMMENT ON COLUMN "TAG"."TAG_NO" IS '태그일련번호';
   COMMENT ON COLUMN "TAG"."TAG_NAME" IS '태그명';
--------------------------------------------------------
--  DDL for Table TAG_DETAIL
--------------------------------------------------------

  CREATE TABLE "TAG_DETAIL" 
   (	"PLACE_NO" NUMBER(38,0), 
	"TAG_NO" NUMBER(38,0)
   ) ;

   COMMENT ON COLUMN "TAG_DETAIL"."PLACE_NO" IS '관광지일련번호';
   COMMENT ON COLUMN "TAG_DETAIL"."TAG_NO" IS '태그일련번호';
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"USER_NO" NUMBER(38,0), 
	"USER_ID" VARCHAR2(255 BYTE), 
	"USER_PWD" VARCHAR2(255 BYTE), 
	"USER_NICKNAME" VARCHAR2(255 BYTE), 
	"USER_PHONENUMBER" VARCHAR2(255 BYTE), 
	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"USER_AUTHORITY" VARCHAR2(255 BYTE), 
	"USER_ENT_DATE" DATE, 
	"USER_LATEST_CONNECT_DATE" DATE, 
	"USER_PWD_CHANGE_DATE" DATE, 
	"USER_PWD_UPTO_DATE" DATE, 
	"USER_CON_FAILED_NUM" NUMBER(38,0), 
	"USER_DEL_STAT" VARCHAR2(255 BYTE) DEFAULT 'N', 
	"MATE_JOIN" VARCHAR2(2 BYTE) DEFAULT 'N'
   ) ;

   COMMENT ON COLUMN "USERS"."USER_NO" IS '유저일련번호';
   COMMENT ON COLUMN "USERS"."USER_ID" IS '유저ID';
   COMMENT ON COLUMN "USERS"."USER_PWD" IS '유저 비밀번호';
   COMMENT ON COLUMN "USERS"."USER_NICKNAME" IS '유저 닉네임';
   COMMENT ON COLUMN "USERS"."USER_PHONENUMBER" IS '유저 연락처';
   COMMENT ON COLUMN "USERS"."USER_EMAIL" IS '유저 이메일';
   COMMENT ON COLUMN "USERS"."USER_AUTHORITY" IS '유저 권한등급';
   COMMENT ON COLUMN "USERS"."USER_ENT_DATE" IS '회원가입일';
   COMMENT ON COLUMN "USERS"."USER_LATEST_CONNECT_DATE" IS '최근접속일시';
   COMMENT ON COLUMN "USERS"."USER_PWD_CHANGE_DATE" IS '비밀번호변경일시';
   COMMENT ON COLUMN "USERS"."USER_PWD_UPTO_DATE" IS '비밀번호만료일자';
   COMMENT ON COLUMN "USERS"."USER_CON_FAILED_NUM" IS '로그인연속실패횟수';
   COMMENT ON COLUMN "USERS"."USER_DEL_STAT" IS '계정탈퇴여부';
REM INSERTING into AUTHORITY
SET DEFINE OFF;
Insert into AUTHORITY (AUTHORITY_NO,AUTHORITY_NAME,ROLE_LIST) values ('1','ROLE_관리자',null);
Insert into AUTHORITY (AUTHORITY_NO,AUTHORITY_NAME,ROLE_LIST) values ('2','ROLE_일반유저',null);
REM INSERTING into AUTHORITY_DETAIL
SET DEFINE OFF;
Insert into AUTHORITY_DETAIL (USER_NO,AUTHORITY_NO) values (4,2);
Insert into AUTHORITY_DETAIL (USER_NO,AUTHORITY_NO) values (1,1);
Insert into AUTHORITY_DETAIL (USER_NO,AUTHORITY_NO) values (2,2);
Insert into AUTHORITY_DETAIL (USER_NO,AUTHORITY_NO) values (3,2);
Insert into AUTHORITY_DETAIL (USER_NO,AUTHORITY_NO) values (1,2);
Insert into AUTHORITY_DETAIL (USER_NO,AUTHORITY_NO) values (5,2);
REM INSERTING into CONNECT_DETAIL
SET DEFINE OFF;
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (5,'test1234','22/12/19 17:11:33.928000000');
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (10,'test1234','22/12/19 18:37:03.559000000');
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (11,'admin','22/12/19 18:37:25.239000000');
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (12,'admin','22/12/19 18:40:29.445000000');
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (6,'admin','22/12/19 17:33:14.503000000');
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (7,'test1234','22/12/19 17:48:05.007000000');
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (8,'test1234','22/12/19 17:50:54.568000000');
Insert into CONNECT_DETAIL (CON_NO,USERS_ID,CON_DATE) values (9,'admin','22/12/19 17:56:29.698000000');
REM INSERTING into JEJU_PLACE
SET DEFINE OFF;
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (1,'동북왕','제주특별자치도 제주시 연동 274-23','전통 중국요리를 찾아서, 동북왕','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (2,'qwe','123123','qwe','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (3,'해변의집','제주특별자치도 제주시 도두일동 1725','용두암과 이호해수욕장사이 해안도로변에 위치한 해변의집 펜션은 주변에 제주해수피아가 있으며 유명먹거리식당도 많이 있습니다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (4,'진미네식당','제주특별자치도 제주시 노형동 2612-9','진미네식당은 2014년 호텔신라의 레시피 전수와 리모델링 지원을 통해 재개장한 ‘맛있는 제주만들기’ 6호점 식당이다. 식당의 시그니처 메뉴인 진미정식은 어머니 정성이 들어간 건강식 웰빙 밥상을 컨셉으로, 강된장, 생선구이, 계란말이, 돔베고기 등이 푸짐한 한끼의 식사가 제공된다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (5,'바농','서귀포시 서귀동 528-5','이중섭거리에 위치한 카페, 간세인형만들기 프로그램','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (6,'제로포인트트레일 더블 N 챌린지','제주특별자치도 제주시 건입동 용진교','제로포인트트레일의 오리진 프로그램 ZPT Third step 1day 31km 참가자들의 발걸음에 친환경 활동과 더불어 ''제주의 자연과 사람에 대한 나눔의 정신''을 담아 걷는 트레킹 챌린지','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (7,'바산올레펜션','제주특별자치도 서귀포시 안덕면 창천리 844-15','중문관광단지와 화순해수욕장 중간에 위치한 바산올레펜션입니다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (8,'제주신신휴양펜션','제주특별자치도 서귀포시 안덕면 덕수리 1476','산과 바다가 어우러진 제주도청 관인 9호 신신휴양펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (9,'슬로우카페','제주특별자치도 서귀포시 표선면 토산리 439-7','제주 바다와 함께하는 휴식','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (10,'해안풍경펜션','제주특별자치도 제주시 도두이동 1654-6','공항과 이호테우해변 중간지점에 위치한 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (11,'섬마을청년회관','제주특별자치도 제주시 용담2동 626-8','섬청년들이 운영하는 테이크아웃 음식점','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (12,'금보가든','제주특별자치도 제주시 조천읍 교래리 501','산굼부리에서 차로 1분거리인 한정식집','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (13,'팜스테이블','제주특별자치도 제주시 연동 1311-1','티본스테이크와 파스타 그리고 친환경 야채를 활용한 샐러드가 있는 스테이크하우스.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (14,'갯마을','제주특별자치도 제주시 연동 253-4','한상차림으로 먹을 수 있는 곳','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (15,'조아찌','제주특별자치도 제주시 이호1동 1777','멘트에 따라 커피 가격이 달라지는 재미있는 카페','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (16,'이디살래','제주특별자치도 서귀포시 안덕면 사계리 1007-5','가족과 함께라면, 이디살래','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (17,'제주서울민박','제주특별자치도 서귀포시 남원읍 태흥리 614-3','제주의 아름다운 바다가 있는 서귀포 태흥리에 위치한 독채렌탈하우스입니다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (18,'엠버관광호텔','제주특별자치도 제주시 연동 251-1','제주도심 한가운데에 위치한 "빛나는 보석" Amber Hotel','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (19,'청정고을민박','제주특별자치도 제주시 추자면 대서리 4-29','추자항에서 걸어서 1분거리인 가까운 민박','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (20,'서바당횟집','제주특별자치도 서귀포시 대정읍 가파리 716','마라도 해녀의 집으로 직접 채취한 해산물을 모듬접시로 판매.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (21,'해호텔','제주특별자치도 제주시 용담삼동 1161','공항에서 5분, 제주항에서 10분인 거리에 있으며, 주변관광지인 용담해안도로가 있어 시원한 바다풍경을 보기에 좋은 호텔','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (22,'올레해오름펜션','제주특별자치도 제주시 애월읍 광령리 2812-2','친환경적 목조주택으로 만들어진 휴양형 고급펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (23,'라쁠라주','제주특별자치도 제주시 용담삼동 2289','정통 프랑스 방식으로 만든 수제 디저트와 브런치를 함께 즐길수 있는 카페','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (24,'동일민박','제주특별자치도 제주시 추자면 대서리 4-14','동일민박','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (25,'에이팩토리 커피앤북스','제주시 삼도2동 1192-17','메일 구운 빵, 커피, 책이 있는 원도심 휴식공간','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (26,'이린펜션','제주특별자치도 서귀포시 일주서로43번길 5','제주여행의 편의성과 제주향기를 느끼실 수 있는 휴양펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (27,'힐링캠프펜션','서귀포시 남원읍 위미리 3392-1','모든 객실에서 서귀포 푸른 바다와 한라산이 한 눈에 보이는 곳으로 전 객실에서 지귀도와 섶섬, 문섬이 보이는 최상의 뷰를 자랑한다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (28,'낭만주의','제주특별자치도 제주시 내도동 543','알작지 토스트와 라떼가 맛있는 내도동 알작지 해변 앞 카페 ','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (29,'라 아바나','제주특별자치도 제주시 외도일동 436-12','제주에서 맛보는 쿠바음식','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (30,'블루하우스','서귀포시 서귀동 297-20','홍콩 컨셉 카페에서 홍콩식 밀크티 홀짝','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (31,'달빛바다','제주특별자치도 제주시 용담3동 1210-5','달빛펜션은 제주국제공항에서 5분거리에 위치하였으며 모든 객실에서 바다 조망이 가능하다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (32,'썬베이펜션','제주특별자치도 제주시 삼양일동 1599-23','삼양검은모래 해수욕장 앞에 위치한 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (33,'친구네 분식','제주특별자치도 서귀포시 대정읍 신영로 124-1','현미김밥과 모닥치기, 왕소프트 아이스크림이 유명한 분식집','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (34,'디앤디파트먼트 제주 droom','제주특별자치도 제주시 삼도이동 1261-6','로컬에서 롱 라이프 디자인을 경험하는 기회','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (35,'실크로드펜션','제주특별자치도 제주시 용담삼동 1016','제주시내 용담해안도로에 위치한 바다가 보이는 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (36,'안나네꽃마을','제주특별자치도 제주시 노형동 759-3','제주국제공항과 가까운 곳에 자리 잡고 있어 여행 전후로 많은 사람들이 찾는 꽃집 안나네꽃마을.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (37,'오션패밀리호텔','제주특별자치도 제주시 이호일동 1725','제주공항에 인접한 교통의 요충지에 있는 숙소','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (38,'늘해랑펜션','제주특별자치도 서귀포시 서홍동 2487-13','서귀포월드컵경기장과 가까운 전원주택 느낌의 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (39,'리스투아','제주특별자치도 제주시 이도이동 2003-5','전준호 셰프의 프렌치 다이닝','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (40,'제주신라호텔 히노데','제주특별자치도 서귀포시 색달동 3039-3','팬덤을 둔 제주 스타일 철판 요리','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (41,'동양콘도','제주도 제주시 애월읍 구엄리 609-1','바다와 10m거리에 위치하고 있는 동양콘도리조트입니다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (42,'라자관광호텔','제주특별자치도 제주시 연동 268-10','제주시내 중심가에 위치한 깨끗한 숙소','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (43,'삼보민박','제주특별자치도 제주시 한림읍 월림리 2091','차로 10분 거리에 협재, 금능 해수욕장이 있는 조용한 곳','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (44,'브라운캐빈','제주특별자치도 제주시 애월읍 상가리 54-2','애월의 작은 숲속 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (45,'시땅','제주특별자치도 제주시 애월읍 고내리 503-1','예쁜 정원과 건물이 매력적인 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (46,'1080칼국수','제주특별자치도 제주시 삼도일동 518-9','착한가격업소(농가와 직접거래하여 저렴한 가격에 음식 제공)','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (47,'육갑봉','제주특별자치도 제주시 아라2동 3008-5','가마솥에 우려낸 진한 사골육수가 담긴 갈비탕','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (48,'또올레펜션&게스트하우스','제주특별자치도 제주시 한경면 판포리 2711','맑고 신선한 제주의 공기와 함께, 일상탈출의 여유가 느껴지는 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (49,'월령지헌','제주특별자치도 제주시 한림읍 월령리 421','자연의 질감을 품은 달의 집','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (50,'바람카페','제주특별자치도 제주시 아라1동 371-20','우리나라 최고령 곰솔나무가 있는 제주시 산천단 안에 있는 핸드드립커피 카페','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (51,'한라꽃방','제주특별자치도 서귀포시 서귀동 478-12','과거 이중섭이 머물며 많은 작품을 남겼던 생가. 그 주변으로 조성된 이중섭 문화의 거리. 이곳에는 이중섭 박물관을 비롯해 카페와 소품샵 등 다양한 볼거리가 들어서 있다. 그리고 그 자리에 40년을 머물며 과거와 현재를 아우르는 한라꽃방.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (52,'아트앤제주','제주특별자치도 제주시 노형동 2684','제주 특산물 쇼핑과 공예 체험을 한번에','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (53,'우리동네숯불갈비','제주특별자치도 제주시 추자면 대서리 5-8','추자에서 숯불갈비를 먹을 수 있는 곳','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (54,'해피펜션','제주특별자치도 제주시 외도2동 317-1','해피펜션은 올레길 17코스 해안도로를 따라 위치해있다. ','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (55,'곁겹','제주특별자치도 제주시 한림읍 금능리 2088-29','일상의 곁에서 쌓은 추억의 겹','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (56,'에코하우스민박펜션','제주특별자치도 제주시 추자면 예초리 343','푸른 바다와 추자도에 풍경이 한눈에 보이는 전망 좋은곳에 자리잡고 있는 펜션. 
추석산과 돈대산 입구에 있으며, 올레 코스에 들어가 있어서 추자도 올레길을 걸으실때도 편리한 위치에 있으며
건물도 요즘 감성을 담고 있는 심플 모던한 분위기로 인테리어가 되어 있다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (57,'고산별곡','제주특별자치도 제주시 한경면 고산리 2197-2','살다 보면 한 번쯤, 자발적 유배','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (58,'구름비낭','제주특별자치도 제주시 한경면 판포리 2606-1','제주 전통집의 재해석, 온전히 나만의 휴식공간이 되는 독채 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (59,'메종드판포','제주특별자치도 제주시 한경면 판포리 2606-1','제주 서쪽의 고즈넉한 조용한 판포리 마을의 프라이빗 독채펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (60,'하늘채가든','제주특별자치도 제주시 오등동 621-5','모든 요리에 한약재를 넣어 건강을 챙기는 미식가들이 자주 찾는 곳','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (61,'다미네민박','제주특별자치도 제주시 추자면 대서리 211-3','2층 마당에서 추자항이 훤히 보이는 곳','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (62,'과수원집','제주특별자치도 제주시 건입동 113','다양한 오리와 닭 요리가 있는 백숙 맛집','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (63,'리버풀펜션','제주특별자치도 제주시 도두봉6길 13','도두봉과 인접한 리버풀펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (64,'허브인휴양펜션','제주특별자치도 제주시 한림읍 귀덕리 2731','상쾌한 허브향을 즐길 수 있는 애월해안도로에 근접한 휴양펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (65,'고벤져스(본점)','제주특별자치도 제주시 도남동 52-8','공항부근의 고기집, 고벤져스','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (66,'킨포크','제주특별자치도 제주시 노형동 3803-17','킨포크에서는 천연발효 빵위에 다양한 토핑을 올린 브루스케타와 슈퍼푸드 포함 7곡이 들어간 라이스를 맛볼 수 있다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (67,'이돈갓시청점','제주특별자치도 제주시 이도2동 1186-10','제주시내 일본식 돈까스 집','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (68,'디자인에이비','제주특별자치도 제주시 한경면 판포리 2854-10','제주 콘텐츠 디자인 상품을 개발 및 판매하는 디자인에이비','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (69,'호텔더블유 탑동점','제주특별자치도 제주시 건입동 1388-2','안락하고 편안한 여행이 될 수 있는 HOTEL W','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (70,'파크사이드호텔','제주특별자치도 제주시 연동 270-1','신제주 중심에 위치한 깔끔한 호텔','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (71,'마당돌펜션','제주특별자치도 서귀포시 대정읍 무릉리 3878-8','고산해안도로에 위치, 객실 모두 바다전망인 팬션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (72,'허브올레','제주특별자치도 서귀포시 표선면 성읍리 2669','제주땅에서 직접 키운 허브를 손냄들에게 대접하는 특별한 카페','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (73,'용담생국수','제주특별자치도 제주시 용담이동 359-15','공항과 가까운 용담동에서 만나는 착한 가격의 푸짐한 제주 인심','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (74,'오비두스','제주특별자치도 제주시 애월읍 신엄리 2847-1','애월 해안도로 산책길에서 한적한 산책을 즐길 수 있는 바닷가 앞 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (75,'패밀리아팬션','제주특별자치도 서귀포시 표선면 하천리 1606','유럽풍 복층형 독채 휴양펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (76,'쉴띠펜션&게스트하우스','제주특별자치도 서귀포시 안덕면 상창리 646-2','제주도 방언으로 ''쉬는 곳''을 의미하는 쉴띠','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (77,'세컨드밀','제주특별자치도 제주시 용담1동 2819-18','용담에 위치한  건강한 빵을 먹을 수 있는 유기농 카페','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (78,'돈돼지흑돼지','제주특별자치도 서귀포시 표선면 표선리 840','표선해수욕장 근처에 위치한 흑돼지 전문점','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (79,'영춘식당','제주특별자치도 제주시 도남동 921-50','육개장, 갈비탕 전문점으로 정식과 두루치기를 판매하는 가족경영의 착한가격업소 영춘식당','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (80,'가파도상동펜션','제주특별자치도 서귀포시 대정읍 가파리 209','가파도 선착장 바로 앞에 위치한 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (81,'미앤제주','제주특별자치도 제주시 한림읍 금악리 산 30-12','화산석과 제주의 향을 이용하여 나만의 디자인 아이템을 만들 수 있는 곳','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (82,'착한집','제주특별자치도 제주시 노형동 3601','제주시 오라동에 위치한 한정식전문점인 착한집은 신선한 재료들을 사용하여 만든 다양하고 정갈한 음식들이 준비되어 있다.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (83,'커피파인더','제주특별자치도 제주시 이도이동 1766-7','커피파인더는 제주시청 근처 골목길 안쪽에 숨어 있습니다. 
한 잔의 음료 너머의 것들을 찾아 헤매고 있습니다. 
그 여정에서 무엇을 찾고, 나누고, 발전하고, 행복해하는지 지켜봐주세요.','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (84,'아랑','제주특별자치도 제주시 선덕로 5길 25(연동, 연미주택)','직접 농사지은 배추로 만든 다양한 김치요리 메뉴를 선보이는 곳','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (85,'오빌하우스','제주특별자치도 서귀포시 남원읍 신례리 85-5','올레 6코스 시작점에 위치하여 바다와 한라산 전경을 모두 감상할 수 있는 펜션형 게스트하우스','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (86,'제주사랑 펜션','제주특별자치도 서귀포시 서귀동 80-2','서귀포항과 가까운 도미토리 겸 펜션','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (87,'푸더매 제주','제주특별자치도 제주시 구좌읍 송당리 2656-7','맛있고 간편한 ‘패스트 베지','N');
Insert into JEJU_PLACE (PLACE_NO,PLACE_NAME,PLACE_ADDRESS,PLACE_DESC,PLACE_DEL_STAT) values (88,'바다위올레펜션','제주특별자치도 서귀포시 강정동 630-1','넓은 바다가 한눈에','N');
REM INSERTING into MAIN
SET DEFINE OFF;
REM INSERTING into MAIN_PRIVACY_FORM
SET DEFINE OFF;
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제17조(이용자의 의무)','① 이용자는 자신의 개인정보를 최신의 상태로 유지해야 하며, 이용자의 부정확한 정보 입력으로 발생하는 문제의 책임은 이용자 자신에게 있습니다.
② 타인의 개인정보를 도용한 회원가입의 경우 이용자 자격을 상실하거나 관련 개인정보보호 법령에 의해 처벌받을 수 있습니다.
③ 이용자는 전자우편주소, 비밀번호 등에 대한 보안을 유지할 책임이 있으며 제3자에게 이를 양도하거나 대여할 수 없습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제18조(회사의 개인정보 관리)','회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조, 훼손 등이 되지 아니하도록 안전성을 확보하기 위하여 다음과 같이 기술적·관리적 보호대책을 강구하고 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제19조(삭제된 정보의 처리)','회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 회사가 수집하는 "개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제20조(비밀번호의 암호화)','이용자의 비밀번호는 일방향 암호화하여 저장 및 관리되고 있으며, 개인정보의 확인, 변경은 비밀번호를 알고 있는 본인에 의해서만 가능합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제21조(해킹 등에 대비한 대책)','① 회사는 해킹, 컴퓨터 바이러스 등 정보통신망 침입에 의해 이용자의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.
② 회사는 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 유출 또는 손상되지 않도록 방지하고 있습니다.
③ 회사는 만일의 사태에 대비하여 침입차단 시스템을 이용하여 보안에 최선을 다하고 있습니다.
④ 회사는 민감한 개인정보를 수집 및 보유하고 있는 경우)를 암호화 통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제22조(개인정보 처리 최소화 및 교육)','회사는 개인정보 관련 처리 담당자를 최소한으로 제한하며, 개인정보 처리자에 대한 교육 등 관리적 조지를 통해 법령 및 내부방침 등의 준수를 강조하고 있습니다.');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제23조(개인정보 유출 등에 대한 조치)','회사는 개인정보의 분실·도난·유출(이하 "유출 등"이라 한다) 사실을 안 때에는 지체 없이 다음 각 호의 모든 사항을 해당 이용자에게 알리고 방송통신위원회 또는 한국인터넷진흥원에 신고합니다.
1. 유출 등이 된 개인정보 항목
2. 유출 등이 발생한 시점
3. 이용자가 취할 수 있는 조치
4. 정보통신서비스 제공자 등의 대응 조치
5. 이용자가 상담 등을 접수할 수 있는 부서 및 연락처
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제24조(개인정보 유출 등에 대한 조치의 예외)','회사는 전조에도 불구하고 이용자의 연락처를 알 수 없는 등 정당한 사유가 있는 경우에는 회사의 홈페이지에 30일 이상 게시하는 방법으로 전조의 통지를 갈음하는 조치를 취할 수 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제25조(국외 이전 개인정보의 보호)','① 회사는 이용자의 개인정보에 관하여 개인정보보호법 등 관계 법규를 위반하는 사항을 내용으로 하는 국제계약을 체결하지 않습니다.
② 회사는 이용자의 개인정보를 국외에 제공(조회되는 경우를 포함) · 처리위탁 ·보관(이하 "이전"이라 함)하려면 이용자의 동의를 받습니다. 다만, 본조 제3항 각 호의 사항 모두를 개인정보보호법 등 관계 법규에 따라 공개하거나 전자우편 등 대통령령으로 정하는 방법에 따라 이용자에게 알린 경우에는 개인정보 처리 위탁·보관에 따른 동의절차를 거치지 아니할 수 있습니다.
③ 회사는 본조 제2항 본문에 따른 동의를 받으려면 미리 다음 각 호의 사항 모두를 이용자에게 고지합니다.
1. 이전되는 개인정보 항목
2. 개인정보가 이전되는 국가, 이전일시 및 이전방법
3. 개인정보를 이전받는 자의 성명(법인인 경우 그 명칭 및 정보관리 책임자의
연락처를 말한다)
4. 개인정보를 이전받는 자의 개인정보 이용목적 및 보유·이용 기간
④ 회사는 본조 제2항 본문에 따른 동의를 받아 개인정보를 국외로 이전하는 경우
개인정보보호법 대통령령 등 관계법규에서 정하는 바에 따라 보호조치를 합니
다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제26조(이용자의 쿠키 설치 선택권)','① 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
② 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 회사의 일부 서비스는 이용에 어려움이 있을 수 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제27조(쿠키 설치 허용 지정 방법)','쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우)은 다음과 같습니다.
가. [도구] 메뉴에서 [인터넷 옵션]을 선택합니다.
나. [개인정보 탭]을 클릭합니다.
다. [고급] 설정에서 설정하시면 됩니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제28조(회사의 개인정보 보호 책임자 지정)','① 회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보 보호 책임자를 지정하고 있습니다.
가. 개인정보 보호 책임자
- 성명: 황수경
- 전화번호: 010-1234-5678
- 이메일: watersir@jajuisabear.com

회사는 개인정보의 보호를 위해 개인정보보호 전담부서를 운영하고 있으며, 개인정보처리방침의 이행사항 및 담당자의 준수여부를 확인하여 문제가 발견될 경우 즉시 해결하고 바로 잡을 수 있도록 최선을 다하고 있습니다.
부칙
제1조 본 방침은 2022.12.20부터 시행됩니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제01조(목적)','Jeju is a bear(이하 ''회사''라고 함)는 회사가 제공하고자 하는 서비스(이하 ''회사 서비스")를 이용하는 개인(이하 ''이용자'' 또는 ''개인'')의 정보(이하 ''개인정보'')를 보호하기 위해, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ''정보통신망법'') 등 관련 법령을 준수하고, 서비스 이용자의 개인정보 보호 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침(이하 ''본 방침'')을 수립합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제02조(개인정보 처리의 원칙)','개인정보 관련 법령 및 본 방침에 따라 회사는 이용자의 개인정보를 수집할 수 있으며 수집된 개인정보는 개인의 동의가 있는 경우에 한해 제3자에게 제공될 수 있습니다. 단, 법령의 규정 등에 의해 적법하게 강제되는 경우 회사는 수집한 이용자의 개인정보를 사전에 개인의 동의 없이 제3자에게 제공할 수도 있습니다.');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제03조(본 방침의 공개)','① 회사는 이용자가 언제든지 쉽게 본 방침을 확인할 수 있도록 회사 홈페이지 첫화면 또는 첫 화면과의 연결화면을 통해 본 방침을 공개하고 있습니다.
② 회사는 제1항에 따라 본 방침을 공개하는 경우 글자 크기, 색상 등을 활용하여 이용자가 본 방침을 쉽게 확인할 수 있도록 합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제04조(본 방침의 변경)','① 본 방침은 개인정보 관련 법령, 지침, 고시 또는 정부나 회사 서비스의 정책이나 내용의 변경에 따라 개정될 수 있습니다.
② 회사는 제1항에 따라 본 방침을 개정하는 경우 다음 각 호 하나 이상의 방법으로 공지합니다.
1. 회사가 운영하는 인터넷 홈페이지의 첫 화면의 공지사항란 또는 별도의 창을 통하여 공지하는 방법.
2. 서면•모사전송•전자우편 또는 이와 비슷한 방법으로 이용자에게 공지하는 방법
③ 회사는 제2항의 공지는 본 방침 개정의 시행일로부터 최소 7일 이전에 공지합니다. 다만, 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 공지합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제05조(개인정보 수집 방법)','회사는 다음과 같은 방법으로 이용자의 개인정보를 수집합니다.
1. 이용자가 회사의 홈페이지에 자신의 개인정보를 입력하는 방식,
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제06조(개인정보의 이용)','회사는 개인정보를 다음 각 호의 경우에 이용합니다.
1. 공지사항의 전달 등 회사의 운영에 필요한 경우,
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제07조(개인정보의 보유 및 이용기간)','① 회사는 이용자의 개인정보에 대해 개인정보의 수집·이용 목적이 달성을 위한 기간 동안 개인정보를 보유 및 이용합니다.
② 전항에도 불구하고 회사는 내부 방침에 의해 서비스 부정이용기록은 부정 가입 및 이용 방지를 위하여 회원 탈퇴 시점으로부터 최대 1년간 보관합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제08조(법령에 따른 개인정보의 보유 및 이용기간)','회사는 관계법령에 따라 다음과 같이 개인정보를 보유 및 이용합니다.
1. 전자상거래 등에서의 소비자보호에 관한 법률에 따른 보유정보 및 보유기간
- 계약 또는 청약철회 등에 관한 기록 : 5년
- 대금결제 및 재화 등의 공급에 관한 기록 : 5년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
- 표시·광고에 관한 기록 : 6개월
2. 통신비밀보호법에 따른 보유정보 및 보유기간
- 웹사이트 로그 기록 자료 : 3개월
3. 전자금융거래법에 따른 보유정보 및 보유기간
- 전자금융거래에 관한 기록 : 5년
4. 위치정보의 보호 및 이용 등에 관한 법률
- 개인위치정보에 관한 기록 : 6개월
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제09조(개인정보의 파기원칙)','회사는 원칙적으로 이용자의 개인정보 처리 목적의 달성, 보유·이용기간의 경과 등 개인정보가 필요하지 않을 경우에는 해당 정보를 지체 없이 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제10조(서비스 미이용자에 대한 개인정보처리)','① 회사는 1년 동안 회사의 서비스를 이용하지 않은 이용자의 개인정보는 원칙적으로 이용자에게 사전통지하고 개인정보를 파기하거나 별도로 분리하여 저장합니다.
② 회사는 장기 미이용 이용자의 개인정보는 별도로 분리되어 안전하게 보관하게 되며, 해당 이용자의 통지는 분리 보관 처리 일을 기준으로 최소 30일 이전에 전자우편주소로 전송됩니다.
③ 장기 미이용 이용자는 회사가 미이용자 DB를 별도로 분리하기 전에 계속 서비스를 이용하고자 하는 경우 웹사이트(이하 ''모바일앱'' 포함)에 로그인하시면 됩니다.
④ 장기 미이용 이용자는 웹사이트에 로그인할 경우 이용자의 동의에 따라 본인의 계정을 복원할 수 있습니다.
⑤ 회사는 분리 보관된 개인정보를 4년간 보관 후 지체없이 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제11조(개인정보파기절차)','① 이용자가 회원가입 등을 위해 입력한 정보는 개인정보 처리 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기 되어집니다.
② 회사는 파기 사유가 발생한 개인정보를 개인정보보호 책임자의 승인절차를 거쳐 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제12조(개인정보파기방법)','회사는 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제하며, 종이로 출력된 개인정보는 분쇄기로 분쇄하거나 소각 등을 통하여 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제13조(광고성 정보의 전송 조치)','① 회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 이용자의 명시적인 사전동의를 받습니다. 다만, 다음 각호 어느 하나에 해당하는 경우에는 사전 동의를 받지 않습니다
1. 회사가 재화 등의 거래관계를 통하여 수신자로부터 직접 연락처를 수집한 경우, 거래가 종료된 날로부터 6개월 이내에 회사가 처리하고 수신자와 거래한 것과 동종의 재화 등에 대한 영리목적의 광고성 정보를 전송하려는 경우
2. 「방문판매 등에 관한 법률」에 따른 전화권유판매자가 육성으로 수신자에게 개인정보의 수집출처를 고지하고 전화권유를 하는 경우
② 회사는 전항에도 불구하고 수신자가 수신거부의사를 표시하거나 사전 동의를 철회한 경우에는 영리목적의 광고성 정보를 전송하지 않으며 수신거부 및 수신 동의 철회에 대한 처리 결과를 알립니다.
③ 회사는 오후 9시부터 그다음 날 오전 8시까지의 시간에 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우에는 제1항에도 불구하고 그 수신자로부터 별도의 사전 동의를 받습니다.
④ 회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 다음의 사항 등을 광고성 정보에 구체적으로 밝힙니다.
1. 회사명 및 연락처
2. 수신 거부 또는 수신 동의의 철회 의사표시에 관한 사항의 표시
⑤ 회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 다음 각 호의 어느 하나에 해당하는 조치를 하지 않습니다.
1. 광고성 정보 수신자의 수신거부 또는 수신동의의 철회를 회피ㆍ방해하는 조치
2. 숫자·부호 또는 문자를 조합하여 전화번호·전자우편주소 등 수신자의 연락처를 자동으로 만들어 내는 조치
3. 영리목적의 광고성 정보를 전송할 목적으로 전화번호 또는 전자우편주소를 자동으로 등록하는 조치
4. 광고성 정보 전송자의 신원이나 광고 전송 출처를 감추기 위한 각종 조치
5. 영리목적의 광고성 정보를 전송할 목적으로 수신자를 기망하여 회신을 유도하는 각종 조치
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제14조(아동의 개인정보보호)','① 회사는 만 14세 미만 아동의 개인정보 보호를 위하여 만 14세 이상의 이용자에 한하여 회원가입을 허용합니다.
② 제1항에도 불구하고 회사는 이용자가 만 14세 미만의 아동일 경우에는, 그 아동의 법정대리인으로부터 그 아동의 개인정보 수집, 이용, 제공 등의 동의를 그 아동의 법정대리인으로부터 받습니다.
③ 제2항의 경우 회사는 그 법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(ID), 휴대폰 번호 등을 추가로 수집합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제15조(개인정보 조회 및 수집동의 철회)','① 이용자 및 법정 대리인은 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 개인정보수집 동의 철회를 요청할 수 있습니다.
② 이용자 및 법정 대리인은 자신의 가입정보 수집 등에 대한 동의를 철회하기 위해서는 개인정보보호책임자 또는 담당자에게 서면, 전화 또는 전자우편주소로 연락하시면 회사는 지체 없이 조치하겠습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제16조(개인정보 정보변경 등)','① 이용자는 회사에게 전조의 방법을 통해 개인정보의 오류에 대한 정정을 요청할 수 있습니다.
② 회사는 전항의 경우에 개인정보의 정정을 완료하기 전까지 개인정보를 이용 또는 제공하지 않으며 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제17조(이용자의 의무)','① 이용자는 자신의 개인정보를 최신의 상태로 유지해야 하며, 이용자의 부정확한 정보 입력으로 발생하는 문제의 책임은 이용자 자신에게 있습니다.
② 타인의 개인정보를 도용한 회원가입의 경우 이용자 자격을 상실하거나 관련 개인정보보호 법령에 의해 처벌받을 수 있습니다.
③ 이용자는 전자우편주소, 비밀번호 등에 대한 보안을 유지할 책임이 있으며 제3자에게 이를 양도하거나 대여할 수 없습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제18조(회사의 개인정보 관리)','회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조, 훼손 등이 되지 아니하도록 안전성을 확보하기 위하여 다음과 같이 기술적·관리적 보호대책을 강구하고 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제19조(삭제된 정보의 처리)','회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 회사가 수집하는 "개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제20조(비밀번호의 암호화)','이용자의 비밀번호는 일방향 암호화하여 저장 및 관리되고 있으며, 개인정보의 확인, 변경은 비밀번호를 알고 있는 본인에 의해서만 가능합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제21조(해킹 등에 대비한 대책)','① 회사는 해킹, 컴퓨터 바이러스 등 정보통신망 침입에 의해 이용자의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.
② 회사는 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 유출 또는 손상되지 않도록 방지하고 있습니다.
③ 회사는 만일의 사태에 대비하여 침입차단 시스템을 이용하여 보안에 최선을 다하고 있습니다.
④ 회사는 민감한 개인정보를 수집 및 보유하고 있는 경우)를 암호화 통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제22조(개인정보 처리 최소화 및 교육)','회사는 개인정보 관련 처리 담당자를 최소한으로 제한하며, 개인정보 처리자에 대한 교육 등 관리적 조지를 통해 법령 및 내부방침 등의 준수를 강조하고 있습니다.');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제23조(개인정보 유출 등에 대한 조치)','회사는 개인정보의 분실·도난·유출(이하 "유출 등"이라 한다) 사실을 안 때에는 지체 없이 다음 각 호의 모든 사항을 해당 이용자에게 알리고 방송통신위원회 또는 한국인터넷진흥원에 신고합니다.
1. 유출 등이 된 개인정보 항목
2. 유출 등이 발생한 시점
3. 이용자가 취할 수 있는 조치
4. 정보통신서비스 제공자 등의 대응 조치
5. 이용자가 상담 등을 접수할 수 있는 부서 및 연락처
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제24조(개인정보 유출 등에 대한 조치의 예외)','회사는 전조에도 불구하고 이용자의 연락처를 알 수 없는 등 정당한 사유가 있는 경우에는 회사의 홈페이지에 30일 이상 게시하는 방법으로 전조의 통지를 갈음하는 조치를 취할 수 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제25조(국외 이전 개인정보의 보호)','① 회사는 이용자의 개인정보에 관하여 개인정보보호법 등 관계 법규를 위반하는 사항을 내용으로 하는 국제계약을 체결하지 않습니다.
② 회사는 이용자의 개인정보를 국외에 제공(조회되는 경우를 포함) · 처리위탁 ·보관(이하 "이전"이라 함)하려면 이용자의 동의를 받습니다. 다만, 본조 제3항 각 호의 사항 모두를 개인정보보호법 등 관계 법규에 따라 공개하거나 전자우편 등 대통령령으로 정하는 방법에 따라 이용자에게 알린 경우에는 개인정보 처리 위탁·보관에 따른 동의절차를 거치지 아니할 수 있습니다.
③ 회사는 본조 제2항 본문에 따른 동의를 받으려면 미리 다음 각 호의 사항 모두를 이용자에게 고지합니다.
1. 이전되는 개인정보 항목
2. 개인정보가 이전되는 국가, 이전일시 및 이전방법
3. 개인정보를 이전받는 자의 성명(법인인 경우 그 명칭 및 정보관리 책임자의
연락처를 말한다)
4. 개인정보를 이전받는 자의 개인정보 이용목적 및 보유·이용 기간
④ 회사는 본조 제2항 본문에 따른 동의를 받아 개인정보를 국외로 이전하는 경우
개인정보보호법 대통령령 등 관계법규에서 정하는 바에 따라 보호조치를 합니
다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제26조(이용자의 쿠키 설치 선택권)','① 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
② 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 회사의 일부 서비스는 이용에 어려움이 있을 수 있습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제27조(쿠키 설치 허용 지정 방법)','쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우)은 다음과 같습니다.
가. [도구] 메뉴에서 [인터넷 옵션]을 선택합니다.
나. [개인정보 탭]을 클릭합니다.
다. [고급] 설정에서 설정하시면 됩니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제28조(회사의 개인정보 보호 책임자 지정)','① 회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보 보호 책임자를 지정하고 있습니다.
가. 개인정보 보호 책임자
- 성명: 황수경
- 전화번호: 010-1234-5678
- 이메일: watersir@jajuisabear.com

회사는 개인정보의 보호를 위해 개인정보보호 전담부서를 운영하고 있으며, 개인정보처리방침의 이행사항 및 담당자의 준수여부를 확인하여 문제가 발견될 경우 즉시 해결하고 바로 잡을 수 있도록 최선을 다하고 있습니다.
부칙
제1조 본 방침은 2022.12.20부터 시행됩니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제01조(목적)','Jeju is a bear(이하 ''회사''라고 함)는 회사가 제공하고자 하는 서비스(이하 ''회사 서비스")를 이용하는 개인(이하 ''이용자'' 또는 ''개인'')의 정보(이하 ''개인정보'')를 보호하기 위해, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ''정보통신망법'') 등 관련 법령을 준수하고, 서비스 이용자의 개인정보 보호 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리방침(이하 ''본 방침'')을 수립합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제02조(개인정보 처리의 원칙)','개인정보 관련 법령 및 본 방침에 따라 회사는 이용자의 개인정보를 수집할 수 있으며 수집된 개인정보는 개인의 동의가 있는 경우에 한해 제3자에게 제공될 수 있습니다. 단, 법령의 규정 등에 의해 적법하게 강제되는 경우 회사는 수집한 이용자의 개인정보를 사전에 개인의 동의 없이 제3자에게 제공할 수도 있습니다.');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제03조(본 방침의 공개)','① 회사는 이용자가 언제든지 쉽게 본 방침을 확인할 수 있도록 회사 홈페이지 첫화면 또는 첫 화면과의 연결화면을 통해 본 방침을 공개하고 있습니다.
② 회사는 제1항에 따라 본 방침을 공개하는 경우 글자 크기, 색상 등을 활용하여 이용자가 본 방침을 쉽게 확인할 수 있도록 합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제04조(본 방침의 변경)','① 본 방침은 개인정보 관련 법령, 지침, 고시 또는 정부나 회사 서비스의 정책이나 내용의 변경에 따라 개정될 수 있습니다.
② 회사는 제1항에 따라 본 방침을 개정하는 경우 다음 각 호 하나 이상의 방법으로 공지합니다.
1. 회사가 운영하는 인터넷 홈페이지의 첫 화면의 공지사항란 또는 별도의 창을 통하여 공지하는 방법.
2. 서면•모사전송•전자우편 또는 이와 비슷한 방법으로 이용자에게 공지하는 방법
③ 회사는 제2항의 공지는 본 방침 개정의 시행일로부터 최소 7일 이전에 공지합니다. 다만, 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 공지합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제05조(개인정보 수집 방법)','회사는 다음과 같은 방법으로 이용자의 개인정보를 수집합니다.
1. 이용자가 회사의 홈페이지에 자신의 개인정보를 입력하는 방식,
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제06조(개인정보의 이용)','회사는 개인정보를 다음 각 호의 경우에 이용합니다.
1. 공지사항의 전달 등 회사의 운영에 필요한 경우,
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제07조(개인정보의 보유 및 이용기간)','① 회사는 이용자의 개인정보에 대해 개인정보의 수집·이용 목적이 달성을 위한 기간 동안 개인정보를 보유 및 이용합니다.
② 전항에도 불구하고 회사는 내부 방침에 의해 서비스 부정이용기록은 부정 가입 및 이용 방지를 위하여 회원 탈퇴 시점으로부터 최대 1년간 보관합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제08조(법령에 따른 개인정보의 보유 및 이용기간)','회사는 관계법령에 따라 다음과 같이 개인정보를 보유 및 이용합니다.
1. 전자상거래 등에서의 소비자보호에 관한 법률에 따른 보유정보 및 보유기간
- 계약 또는 청약철회 등에 관한 기록 : 5년
- 대금결제 및 재화 등의 공급에 관한 기록 : 5년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
- 표시·광고에 관한 기록 : 6개월
2. 통신비밀보호법에 따른 보유정보 및 보유기간
- 웹사이트 로그 기록 자료 : 3개월
3. 전자금융거래법에 따른 보유정보 및 보유기간
- 전자금융거래에 관한 기록 : 5년
4. 위치정보의 보호 및 이용 등에 관한 법률
- 개인위치정보에 관한 기록 : 6개월
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제09조(개인정보의 파기원칙)','회사는 원칙적으로 이용자의 개인정보 처리 목적의 달성, 보유·이용기간의 경과 등 개인정보가 필요하지 않을 경우에는 해당 정보를 지체 없이 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제10조(서비스 미이용자에 대한 개인정보처리)','① 회사는 1년 동안 회사의 서비스를 이용하지 않은 이용자의 개인정보는 원칙적으로 이용자에게 사전통지하고 개인정보를 파기하거나 별도로 분리하여 저장합니다.
② 회사는 장기 미이용 이용자의 개인정보는 별도로 분리되어 안전하게 보관하게 되며, 해당 이용자의 통지는 분리 보관 처리 일을 기준으로 최소 30일 이전에 전자우편주소로 전송됩니다.
③ 장기 미이용 이용자는 회사가 미이용자 DB를 별도로 분리하기 전에 계속 서비스를 이용하고자 하는 경우 웹사이트(이하 ''모바일앱'' 포함)에 로그인하시면 됩니다.
④ 장기 미이용 이용자는 웹사이트에 로그인할 경우 이용자의 동의에 따라 본인의 계정을 복원할 수 있습니다.
⑤ 회사는 분리 보관된 개인정보를 4년간 보관 후 지체없이 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제11조(개인정보파기절차)','① 이용자가 회원가입 등을 위해 입력한 정보는 개인정보 처리 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기 되어집니다.
② 회사는 파기 사유가 발생한 개인정보를 개인정보보호 책임자의 승인절차를 거쳐 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제12조(개인정보파기방법)','회사는 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제하며, 종이로 출력된 개인정보는 분쇄기로 분쇄하거나 소각 등을 통하여 파기합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제13조(광고성 정보의 전송 조치)','① 회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 이용자의 명시적인 사전동의를 받습니다. 다만, 다음 각호 어느 하나에 해당하는 경우에는 사전 동의를 받지 않습니다
1. 회사가 재화 등의 거래관계를 통하여 수신자로부터 직접 연락처를 수집한 경우, 거래가 종료된 날로부터 6개월 이내에 회사가 처리하고 수신자와 거래한 것과 동종의 재화 등에 대한 영리목적의 광고성 정보를 전송하려는 경우
2. 「방문판매 등에 관한 법률」에 따른 전화권유판매자가 육성으로 수신자에게 개인정보의 수집출처를 고지하고 전화권유를 하는 경우
② 회사는 전항에도 불구하고 수신자가 수신거부의사를 표시하거나 사전 동의를 철회한 경우에는 영리목적의 광고성 정보를 전송하지 않으며 수신거부 및 수신 동의 철회에 대한 처리 결과를 알립니다.
③ 회사는 오후 9시부터 그다음 날 오전 8시까지의 시간에 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우에는 제1항에도 불구하고 그 수신자로부터 별도의 사전 동의를 받습니다.
④ 회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 다음의 사항 등을 광고성 정보에 구체적으로 밝힙니다.
1. 회사명 및 연락처
2. 수신 거부 또는 수신 동의의 철회 의사표시에 관한 사항의 표시
⑤ 회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 다음 각 호의 어느 하나에 해당하는 조치를 하지 않습니다.
1. 광고성 정보 수신자의 수신거부 또는 수신동의의 철회를 회피ㆍ방해하는 조치
2. 숫자·부호 또는 문자를 조합하여 전화번호·전자우편주소 등 수신자의 연락처를 자동으로 만들어 내는 조치
3. 영리목적의 광고성 정보를 전송할 목적으로 전화번호 또는 전자우편주소를 자동으로 등록하는 조치
4. 광고성 정보 전송자의 신원이나 광고 전송 출처를 감추기 위한 각종 조치
5. 영리목적의 광고성 정보를 전송할 목적으로 수신자를 기망하여 회신을 유도하는 각종 조치
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제14조(아동의 개인정보보호)','① 회사는 만 14세 미만 아동의 개인정보 보호를 위하여 만 14세 이상의 이용자에 한하여 회원가입을 허용합니다.
② 제1항에도 불구하고 회사는 이용자가 만 14세 미만의 아동일 경우에는, 그 아동의 법정대리인으로부터 그 아동의 개인정보 수집, 이용, 제공 등의 동의를 그 아동의 법정대리인으로부터 받습니다.
③ 제2항의 경우 회사는 그 법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(ID), 휴대폰 번호 등을 추가로 수집합니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제15조(개인정보 조회 및 수집동의 철회)','① 이용자 및 법정 대리인은 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 개인정보수집 동의 철회를 요청할 수 있습니다.
② 이용자 및 법정 대리인은 자신의 가입정보 수집 등에 대한 동의를 철회하기 위해서는 개인정보보호책임자 또는 담당자에게 서면, 전화 또는 전자우편주소로 연락하시면 회사는 지체 없이 조치하겠습니다.
');
Insert into MAIN_PRIVACY_FORM (FORM_TITLE,FORM_COMMENT) values ('제16조(개인정보 정보변경 등)','① 이용자는 회사에게 전조의 방법을 통해 개인정보의 오류에 대한 정정을 요청할 수 있습니다.
② 회사는 전항의 경우에 개인정보의 정정을 완료하기 전까지 개인정보를 이용 또는 제공하지 않으며 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.
');
REM INSERTING into MAIN_TOS
SET DEFINE OFF;
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제07조(회원가입에 대한 승낙)','① 회사는 이용계약에 대한 요청이 있을 때 서비스 이용을 승낙함을 원칙으로 합니다.
② 제1항에 따른 신청에 있어 회사는 서비스 제공에 필요한 경우 전문기관을 통한 실명 확인 및 본인인증을 요청할 수 있습니다.
③ 회사는 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.
④에 따라 서비스 이용을 승낙하지 아니하거나 유보한 경우, 회사는 원칙적으로 이를 서비스 이용 신청자에게 알리도록 합니다. 단, 회사의 귀책사유 없이 이용자에게 알릴 수 없는 경우에는 예외로 합니다.
⑤ 이용계약의 성립 시기는 제6조 제1호의 경우에는 회사가 가입완료를 신청절차 상에서 표시한 시점, 제6조 제2호의 경우에는 결제가 완료되었다는 표시가 된 시점으로 합니다.
⑥ 회사는 회원에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.
⑦ 회사는 회원에 대하여 ''영화및비디오물의진흥에관한법률'' 및 ''청소년보호법'' 등에 따른 등급 및 연령 준수를 위하여 이용제한이나 등급별 제한을 둘 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제08조(회원정보의 변경)','① 회원은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디 등은 수정이 불가능합니다.
② 회원은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다.
③ 제2항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여는 회원에게 책임이 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제09조(회원정보의 관리 및 보호)','① 회원의 아이디(ID)와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.
② 회사는 회원의 아이디(ID)가 개인정보 유출 우려가 있거나, 반사회적 또는 공서양속에 어긋나거나, 회사 또는 서비스의 운영자로 오인할 우려가 있는 경우, 해당 아이디(ID)의 이용을 제한할 수 있습니다.
③ 회원은 아이디(ID) 및 비밀번호가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 회사에 통지하고 안내에 따라야 합니다. 제3항의 경우 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지하였으나 회사의 안내에 따르지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제10조(회사의 의무)
','① 회사는 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 멸실 된 때에는 이를 지체 없이 수리 또는 복구하며, 다음 각 호의 사유 발생 시 부득이한 경우 예고 없이 서비스의 전부 또는 일부의 제공을 일시 중지할 수 있습니다. 이 경우 그 사유 및 중지 기간 등을 이용자에게 지체 없이 사후 공지합니다.
1. 시스템의 긴급점검, 증설, 교체, 시설의 보수 또는 공사를 하기 위하여 필요한 경우
2. 새로운 서비스를 제공하기 위하여 시스템교체가 필요하다고 판단되는 경우
3. 시스템 또는 기타 서비스 설비의 장애, 유무선 Network 장애 등으로 정상적인 서비스 제공이 불가능할 경우
4. 국가비상사태, 정전, 불가항력적 사유로 인한 경우
② 회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용자와의 계약관련 절차 및 내용 등에 있어 이용자에게 편의를 제공하도록 노력합니다.
③ 회사는 대표자의 성명, 상호, 주소, 전화번호, 모사전송번호(FAX), 통신판매업 신고 번호, 이용약관, 개인정보취급방침 등을 이용자가 쉽게 알 수 있도록 온라인 서비스 초기화면에 게시합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제11조(개인정보보호)','① 회사는 이용자들의 개인정보를 중요시하며, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법규를 준수하기 위해 노력합니다. 회사는 개인정보보호정책을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
② 회사는 최종 사용일로부터 연속하여 1년 동안 서비스 사용 이력이 없는 경우 ''개인정보보호법'' 및 같은 법 시행령의 규정에 따라 이용자정보를 영구적으로 삭제할 수 있습니다. 단, 유료결제 상품을 보유하고 있는 경우 삭제 대상에서 제외되며 관련 법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계 법령에서 정한 기간 동안 이용자정보를 보관합니다.
③ 회사가 이용자의 개인정보의 보호 및 사용에 대해서 관련 법규 및 회사의 개인정보처리방침을 적용합니다. 다만, 회사에서 운영하는 웹 사이트 등에서 링크된 외부 웹페이지에서는 회사의 개인정보처리방침이 적용되지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제14조(서비스의 제한 등)','① 회사는 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신사업자가 전기통신서비스를 중지하는 등 부득이한 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
② 무료서비스는 전항의 규정에도 불구하고, 회사의 운영정책 등의 사유로 서비스의 전부 또는 일부가 제한되거나 중지될 수 있으며, 유료로 전환될 수 있습니다.
③ 회사는 서비스의 이용을 제한하거나 정지하는 때에는 그 사유 및 제한기간, 예정 일시 등을 지체없이 이용자에게 알립니다. 회사는 사전에 결제정보를 입력 받고, 무료로 제공중인 서비스를 유료로 전환할 경우, 그 사유와 유료 전환 예정 일시를 통지하고 유료 전환에 대한 이용자의 동의를 받습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제15조(서비스의 해제·해지 및 탈퇴 절차)','① 이용자가 이용 계약을 해지하고자 할 때는 언제든지 홈페이지 상의 이용자 탈퇴 신청을 통해 이용계약 해지를 요청할 수 있습니다. 단, 신규가입 후 일정 시간 동안 서비스 부정이용 방지 등의 사유로 즉시 탈퇴가 제한될 수 있습니다.
② 회사는 이용자가 본 약관에서 정한 이용자의 의무를 위반한 경우 등 비정상적인 이용 또는 부당한 이용과 이용자 금지프로그램 사용하는 경우 또는 타인의 명예를 훼손하거나 모욕하는 방송과 게시물을 작성한 경우 이러한 행위를 금지하거나 삭제를 요청하였음에도 불구하고 최초의 금지 또는 삭제 요청을 포함하여 2회 이상 누적되는 경우 이용자에게 통지하고, 계약을 해지할 수 있습니다. 회사는 이용자의 청약철회, 해제 또는 해지의 의사표시를 수신한 후 그 사실을 이용자에게 회신합니다. 회신은 이용자가 회사에 대하여 통지한 방법 중 하나에 의하고, 이용자가 회사에 대하여 통지한 연락처가 존재하지 않는 경우에는 회신하지 않을 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제16조(손해배상)
','① 회사 또는 이용자는 상대방의 귀책에 따라 손해가 발생하는 경우 손해배상을 청구할 수 있습니다. 다만, 회사는 무료서비스의 장애, 제공 중단, 보관된 자료 멸실 또는 삭제, 변조 등으로 인한 손해에 대하여는 배상책임을 부담하지 않습니다. 회사가 제공하는 서비스의 이용과 관련하여 회사의 운영정책 및 개인 정보 보호정책, 기타 서비스별 이용약관에서 정하는 내용에 위반하지 않는 한 회사는 어떠한 손해에 대하여도 책임을 부담하지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제17조(면책사항)','① 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임을 지지 않습니다.
② 회사는 이용자의 귀책사유로 인한 서비스 이용장애에 대하여 책임을 지지 지 않습니다. 회사는 이용자가 서비스를 이용하며 기대하는 수익을 얻지 못한 것에 대하여 책임 지지 않으며 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다. 회사는 이용자가 웹페이지에 게재한 내용의 신뢰도, 정확성 등 내용에 대해서는 책임지지 않으며, 이용자 상호간 또는 이용자와 제3자 상호간 서비스를 매개로 발생한 분쟁에 개입하지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제12조(이용자의 의무)','이용자는 이용자가입을 통해 이용신청을 하는 경우 사실에 근거하여 신청서를 작성해야 합니다. 이용자가 허위, 또는 타인의 정보를 등록한 경우 회사에 대하여 일체의 권리를 주장할 수 없으며, 회사는 이로 인하여 발생한 손해에 대하여 책임을 부담하지 않습니다.
이용자는 본 약관에서 규정하는 사항과 기타 회사가 정한 제반 규정, 회사가 공지하는 사항을 준수하여야 합니다. 또한 이용자는 회사의 업무를 방해하는 행위 및 회사의 명예를 훼손하는 행위를 하여서는 안 됩니다.
③ 이용자는 주소, 연락처, 전자우편 주소 등 회원정보가 변경된 경우 즉시 온라인을 통해 이를 수정해야 합니다. 이 때 변경된 정보를 수정하지 않거나 수정이 지연되어 발생하는 책임은 이용자가 지게 됩니다. 이용자는 이용자에게 부여된 아이디와 비밀번호를 직접 관리해야 합니다. 이용자의 관리 소홀로 발생한 문제는 회사가 책임을 부담하지 않습니다. 이용자가 아이디, 닉네임, 기타 서비스 내에서 사용되는 명칭 등을 선정할 때에는 다음 각 호에 해당하는 행위를 해서는 안 됩니다.
1. 회사가 제공하는 서비스의 공식 운영자를 사칭하거나 이와 유사한 명칭을 사용하여 다른 이용자에게 혼란을 주는 행위
2. 선정적이고 음란한 내용이 포함된 명칭을 사용하는 행위
3. 제3자의 상표권, 저작권 등 권리를 침해할 가능성이 있는 명칭을 사용하는 행위
4. 제3자의 명예를 훼손하거나, 그 업무를 방해할 가능성이 있는 명칭을 사용하는 행위
5. 기타 반사회적이고 관계법령에 저촉되는 내용이 포함된 명칭을 사용하는 행위 이용자는 회사의 명시적 동의가 없는 한 서비스 이용 권한, 기타 이용 계약상의 지위에 대하여 매도, 증여, 담보제공 등 처분행위를 할 수 없습니다. 본 조와 관련하여 서비스 이용에 있어 주의사항 등 그 밖의 자세한 내용은 운영정책으로 정하며, 이용자가 서비스 이용약관 및 운영정책을 위반하는 경우 서비스 이용제한, 민형사상의 책임 등 불이익이 발생할 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제13조(서비스의 제공)
','① 회사의 서비스는 연중무휴, 1일 24시간 제공을 원칙으로 합니다. 다만 회사 시스템의 유지 보수를 위한 점검, 통신장비의 교체 등 특별한 사유가 있는 경우 서비스의 전부 또는 일부에 대하여 일시적인 제공 중단이 발생할 수 있습니다.
② 회사가 제공하는 개별 서비스에 대한 구체적인 안내사항은 개별 서비스 화면에서 확인할 수 있습니다.
③ 회사가 제공하는 구체적인 서비스의 내용은 본 약관에 별도로 첨부된 ''별표. 서비스의 내용''과 같습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제18조(권리의 귀속)
','① 회사가 제공하는 서비스에 대한 저작권 등 지식재산권은 회사에 귀속 됩니다.
② 회사는 서비스와 관련하여 이용자에게 회사가 정한 조건 따라 회사가 제공하는 서비스를 이용할 수 있는 권한만을 부여하며, 이용자는 이를 양도, 판매, 담보제공 하는 등 처분행위를 할 수 없습니다.
③ 제1항의 규정에도 불구하고 이용자가 직접 작성한 콘텐츠 및 회사의 제휴계약에 따라 제공된 저작물에 대한 지식재산권은 회사에 귀속되지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제19조(콘텐츠의 관리)','① 회원이 작성 또는 창작한 콘텐츠가 ''개인정보보호법'' 및 ''저작권법'' 등 관련 법에 위반되는 내용을 포함하는 경우, 관리자는 관련 법이 정한 절차에 따라 해당 콘텐츠의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련 법에 따라 조치를 취하여야 합니다.
② 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련 법에 위반되는 경우에는 관련 법에 따라 해당 콘텐츠에 대해 임시조치 등을 취할 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제07조(회원가입에 대한 승낙)','① 회사는 이용계약에 대한 요청이 있을 때 서비스 이용을 승낙함을 원칙으로 합니다.
② 제1항에 따른 신청에 있어 회사는 서비스 제공에 필요한 경우 전문기관을 통한 실명 확인 및 본인인증을 요청할 수 있습니다.
③ 회사는 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.
④에 따라 서비스 이용을 승낙하지 아니하거나 유보한 경우, 회사는 원칙적으로 이를 서비스 이용 신청자에게 알리도록 합니다. 단, 회사의 귀책사유 없이 이용자에게 알릴 수 없는 경우에는 예외로 합니다.
⑤ 이용계약의 성립 시기는 제6조 제1호의 경우에는 회사가 가입완료를 신청절차 상에서 표시한 시점, 제6조 제2호의 경우에는 결제가 완료되었다는 표시가 된 시점으로 합니다.
⑥ 회사는 회원에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.
⑦ 회사는 회원에 대하여 ''영화및비디오물의진흥에관한법률'' 및 ''청소년보호법'' 등에 따른 등급 및 연령 준수를 위하여 이용제한이나 등급별 제한을 둘 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제08조(회원정보의 변경)','① 회원은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디 등은 수정이 불가능합니다.
② 회원은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다.
③ 제2항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여는 회원에게 책임이 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제09조(회원정보의 관리 및 보호)','① 회원의 아이디(ID)와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.
② 회사는 회원의 아이디(ID)가 개인정보 유출 우려가 있거나, 반사회적 또는 공서양속에 어긋나거나, 회사 또는 서비스의 운영자로 오인할 우려가 있는 경우, 해당 아이디(ID)의 이용을 제한할 수 있습니다.
③ 회원은 아이디(ID) 및 비밀번호가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 회사에 통지하고 안내에 따라야 합니다. 제3항의 경우 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지하였으나 회사의 안내에 따르지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제10조(회사의 의무)
','① 회사는 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 멸실 된 때에는 이를 지체 없이 수리 또는 복구하며, 다음 각 호의 사유 발생 시 부득이한 경우 예고 없이 서비스의 전부 또는 일부의 제공을 일시 중지할 수 있습니다. 이 경우 그 사유 및 중지 기간 등을 이용자에게 지체 없이 사후 공지합니다.
1. 시스템의 긴급점검, 증설, 교체, 시설의 보수 또는 공사를 하기 위하여 필요한 경우
2. 새로운 서비스를 제공하기 위하여 시스템교체가 필요하다고 판단되는 경우
3. 시스템 또는 기타 서비스 설비의 장애, 유무선 Network 장애 등으로 정상적인 서비스 제공이 불가능할 경우
4. 국가비상사태, 정전, 불가항력적 사유로 인한 경우
② 회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용자와의 계약관련 절차 및 내용 등에 있어 이용자에게 편의를 제공하도록 노력합니다.
③ 회사는 대표자의 성명, 상호, 주소, 전화번호, 모사전송번호(FAX), 통신판매업 신고 번호, 이용약관, 개인정보취급방침 등을 이용자가 쉽게 알 수 있도록 온라인 서비스 초기화면에 게시합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제11조(개인정보보호)','① 회사는 이용자들의 개인정보를 중요시하며, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법규를 준수하기 위해 노력합니다. 회사는 개인정보보호정책을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
② 회사는 최종 사용일로부터 연속하여 1년 동안 서비스 사용 이력이 없는 경우 ''개인정보보호법'' 및 같은 법 시행령의 규정에 따라 이용자정보를 영구적으로 삭제할 수 있습니다. 단, 유료결제 상품을 보유하고 있는 경우 삭제 대상에서 제외되며 관련 법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계 법령에서 정한 기간 동안 이용자정보를 보관합니다.
③ 회사가 이용자의 개인정보의 보호 및 사용에 대해서 관련 법규 및 회사의 개인정보처리방침을 적용합니다. 다만, 회사에서 운영하는 웹 사이트 등에서 링크된 외부 웹페이지에서는 회사의 개인정보처리방침이 적용되지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제14조(서비스의 제한 등)','① 회사는 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신사업자가 전기통신서비스를 중지하는 등 부득이한 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
② 무료서비스는 전항의 규정에도 불구하고, 회사의 운영정책 등의 사유로 서비스의 전부 또는 일부가 제한되거나 중지될 수 있으며, 유료로 전환될 수 있습니다.
③ 회사는 서비스의 이용을 제한하거나 정지하는 때에는 그 사유 및 제한기간, 예정 일시 등을 지체없이 이용자에게 알립니다. 회사는 사전에 결제정보를 입력 받고, 무료로 제공중인 서비스를 유료로 전환할 경우, 그 사유와 유료 전환 예정 일시를 통지하고 유료 전환에 대한 이용자의 동의를 받습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제15조(서비스의 해제·해지 및 탈퇴 절차)','① 이용자가 이용 계약을 해지하고자 할 때는 언제든지 홈페이지 상의 이용자 탈퇴 신청을 통해 이용계약 해지를 요청할 수 있습니다. 단, 신규가입 후 일정 시간 동안 서비스 부정이용 방지 등의 사유로 즉시 탈퇴가 제한될 수 있습니다.
② 회사는 이용자가 본 약관에서 정한 이용자의 의무를 위반한 경우 등 비정상적인 이용 또는 부당한 이용과 이용자 금지프로그램 사용하는 경우 또는 타인의 명예를 훼손하거나 모욕하는 방송과 게시물을 작성한 경우 이러한 행위를 금지하거나 삭제를 요청하였음에도 불구하고 최초의 금지 또는 삭제 요청을 포함하여 2회 이상 누적되는 경우 이용자에게 통지하고, 계약을 해지할 수 있습니다. 회사는 이용자의 청약철회, 해제 또는 해지의 의사표시를 수신한 후 그 사실을 이용자에게 회신합니다. 회신은 이용자가 회사에 대하여 통지한 방법 중 하나에 의하고, 이용자가 회사에 대하여 통지한 연락처가 존재하지 않는 경우에는 회신하지 않을 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제16조(손해배상)
','① 회사 또는 이용자는 상대방의 귀책에 따라 손해가 발생하는 경우 손해배상을 청구할 수 있습니다. 다만, 회사는 무료서비스의 장애, 제공 중단, 보관된 자료 멸실 또는 삭제, 변조 등으로 인한 손해에 대하여는 배상책임을 부담하지 않습니다. 회사가 제공하는 서비스의 이용과 관련하여 회사의 운영정책 및 개인 정보 보호정책, 기타 서비스별 이용약관에서 정하는 내용에 위반하지 않는 한 회사는 어떠한 손해에 대하여도 책임을 부담하지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제17조(면책사항)','① 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임을 지지 않습니다.
② 회사는 이용자의 귀책사유로 인한 서비스 이용장애에 대하여 책임을 지지 지 않습니다. 회사는 이용자가 서비스를 이용하며 기대하는 수익을 얻지 못한 것에 대하여 책임 지지 않으며 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다. 회사는 이용자가 웹페이지에 게재한 내용의 신뢰도, 정확성 등 내용에 대해서는 책임지지 않으며, 이용자 상호간 또는 이용자와 제3자 상호간 서비스를 매개로 발생한 분쟁에 개입하지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제12조(이용자의 의무)','이용자는 이용자가입을 통해 이용신청을 하는 경우 사실에 근거하여 신청서를 작성해야 합니다. 이용자가 허위, 또는 타인의 정보를 등록한 경우 회사에 대하여 일체의 권리를 주장할 수 없으며, 회사는 이로 인하여 발생한 손해에 대하여 책임을 부담하지 않습니다.
이용자는 본 약관에서 규정하는 사항과 기타 회사가 정한 제반 규정, 회사가 공지하는 사항을 준수하여야 합니다. 또한 이용자는 회사의 업무를 방해하는 행위 및 회사의 명예를 훼손하는 행위를 하여서는 안 됩니다.
③ 이용자는 주소, 연락처, 전자우편 주소 등 회원정보가 변경된 경우 즉시 온라인을 통해 이를 수정해야 합니다. 이 때 변경된 정보를 수정하지 않거나 수정이 지연되어 발생하는 책임은 이용자가 지게 됩니다. 이용자는 이용자에게 부여된 아이디와 비밀번호를 직접 관리해야 합니다. 이용자의 관리 소홀로 발생한 문제는 회사가 책임을 부담하지 않습니다. 이용자가 아이디, 닉네임, 기타 서비스 내에서 사용되는 명칭 등을 선정할 때에는 다음 각 호에 해당하는 행위를 해서는 안 됩니다.
1. 회사가 제공하는 서비스의 공식 운영자를 사칭하거나 이와 유사한 명칭을 사용하여 다른 이용자에게 혼란을 주는 행위
2. 선정적이고 음란한 내용이 포함된 명칭을 사용하는 행위
3. 제3자의 상표권, 저작권 등 권리를 침해할 가능성이 있는 명칭을 사용하는 행위
4. 제3자의 명예를 훼손하거나, 그 업무를 방해할 가능성이 있는 명칭을 사용하는 행위
5. 기타 반사회적이고 관계법령에 저촉되는 내용이 포함된 명칭을 사용하는 행위 이용자는 회사의 명시적 동의가 없는 한 서비스 이용 권한, 기타 이용 계약상의 지위에 대하여 매도, 증여, 담보제공 등 처분행위를 할 수 없습니다. 본 조와 관련하여 서비스 이용에 있어 주의사항 등 그 밖의 자세한 내용은 운영정책으로 정하며, 이용자가 서비스 이용약관 및 운영정책을 위반하는 경우 서비스 이용제한, 민형사상의 책임 등 불이익이 발생할 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제13조(서비스의 제공)
','① 회사의 서비스는 연중무휴, 1일 24시간 제공을 원칙으로 합니다. 다만 회사 시스템의 유지 보수를 위한 점검, 통신장비의 교체 등 특별한 사유가 있는 경우 서비스의 전부 또는 일부에 대하여 일시적인 제공 중단이 발생할 수 있습니다.
② 회사가 제공하는 개별 서비스에 대한 구체적인 안내사항은 개별 서비스 화면에서 확인할 수 있습니다.
③ 회사가 제공하는 구체적인 서비스의 내용은 본 약관에 별도로 첨부된 ''별표. 서비스의 내용''과 같습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제18조(권리의 귀속)
','① 회사가 제공하는 서비스에 대한 저작권 등 지식재산권은 회사에 귀속 됩니다.
② 회사는 서비스와 관련하여 이용자에게 회사가 정한 조건 따라 회사가 제공하는 서비스를 이용할 수 있는 권한만을 부여하며, 이용자는 이를 양도, 판매, 담보제공 하는 등 처분행위를 할 수 없습니다.
③ 제1항의 규정에도 불구하고 이용자가 직접 작성한 콘텐츠 및 회사의 제휴계약에 따라 제공된 저작물에 대한 지식재산권은 회사에 귀속되지 않습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제19조(콘텐츠의 관리)','① 회원이 작성 또는 창작한 콘텐츠가 ''개인정보보호법'' 및 ''저작권법'' 등 관련 법에 위반되는 내용을 포함하는 경우, 관리자는 관련 법이 정한 절차에 따라 해당 콘텐츠의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련 법에 따라 조치를 취하여야 합니다.
② 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련 법에 위반되는 경우에는 관련 법에 따라 해당 콘텐츠에 대해 임시조치 등을 취할 수 있습니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제20조(콘텐츠의 저작권)
','① 이용자가 서비스 내에 게시한 콘텐츠의 저작권은 해당 콘텐츠의 저작자에게 귀속됩니다.
② 제1항에 불구하고 회사는 서비스의 운영, 전시, 전송, 배포, 홍보 등의 목적으로 별도의 허락 없이 무상으로 저작권법 및 공정한 거래관행에 합치되는 범위 내에서 다음 각 호와 같이 회원이 등록한 콘텐츠를 사용할 수 있습니다.
1. 서비스의 운영, 홍보, 서비스 개선 및 새로운 서비스 개발을 위한 범위 내의 사용 제21조(관할법원 및 준거법) 서비스와 관련하여 분쟁이 발생한 경우 관할법원은 민사소송법에 따른 관할법원으로 정하며, 준거법은 대한민국의 법령을 적용합니다.

부 칙

제 1조(시행일)
본 약관은 2022.12.20 부터 시행됩니다.
');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제02조(정의)','이 약관에서 사용하는 주요 용어의 정의는 다음과 같습니다.
1. ''서비스''라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 ''이용자''가 이용할 수 있는 회사가 제공하는 제반 서비스를 의미합니다.
2. ''이용자''란 이 약관에 따라 회사가 제공하는 서비스를 받는 ''개인회원'', ''기업회원'' 및 ''비회원''을 말합니다.
3. ''개인회원''은 회사에 개인정보를 제공하여 회원등록을 한 사람으로, 회사로부터 지속적으로 정보를 제공받고 ''회사''가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
4. ''기업회원''은 회사에 기업정보 및 개인정보를 제공하여 회원등록을 한 사람으로, 회사로부터 지속적으로 정보를 제공받고 회사가 제공하는 서비스를 계속적으로 이용할수 있는 자를 말합니다.
5. ''비회원''은 회원가입 없이 회사가 제공하는 서비스를 이용하는 자를 말합니다.
6. ''아이디(ID)''라 함은 회원의 식별과 서비스이용을 위하여 회원이 정하고 회사가 승인하는 문자 또는 문자와 숫자의 조합을 의미합니다.
7. ''비밀번호''라 함은 회원이 부여받은 아이디와 일치되는 회원임을 확인하고 비밀의 보호를 위해 회원 자신이 정한 문자(특수문자 포함)와 숫자의 조합을 의미합니다.
8. ''콘텐츠''란 정보통신망법의 규정에 따라 정보통신망에서 사용되는 부호·문자·음성·음향·이미지 또는 영상 등으로 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 말합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제03조(약관외 준칙)','이 약관에서 정하지 아니한 사항에 대해서는 법령 또는 회사가 정한 서비스의 개별약관, 운영정책 및 규칙 등(이하 세부지침)의 규정에 따릅니다. 또한 본 약관과 세부지침이 충돌할 경우에는 세부지침에 따릅니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제04조(약관의 효력과 변경)
','① 이 약관은 Jeju is a bear(이)가 제공하는 모든 인터넷서비스에 게시하여 공시합니다. 회사는 ''전자상거래등에서의 소비자보호에 관한 법률(이하 ''전자상거래법''이라 함)'', ''약관의 규제에 관한 법률(이하'' 약관규제법''이라 함)'', ''정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ''정보통신망법''이라 함)'' 등 본 서비스와 관련된 법령에 위배되지 않는 범위에서 이 약관을 변경할 수 있으며, 회사는 약관이 변경되는 경우에 변경된 약관의 내용과 시행일을 정하여, 그 시행일로부터 최소 7일 (이용자에게 불리하거나 중대한 사항의 변경은 30일) 이전부터 시행일 후 상당한 기간 동안 공지하고, 기존 이용자에게는 변경된 약관, 적용일자 및 변경사유(변경될 내용 중 중요사항에 대한 설명을 포함)를 별도의 전자적 수단(전자우편, 문자메시지, 서비스 내 전자 쪽지발송, 알림 메시지를 띄우는 등의 방법)으로 개별 통지합니다. 변경된 약관은 공지하거나 통지한 시행일로부터 효력이 발생합니다.
② 회사가 제1항에 따라 개정약관을 공지 또는 통지하는 경우 ''변경에 동의하지 아니한 경우 공지일 또는 통지를 받은 날로부터 7일(이용자에게 불리하거나 중대한 사항의 변경인 경우에는 30일) 내에 계약을 해지할 수 있으며, 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다.'' 라는 취지의 내용을 함께 통지합니다.
③ 이용자가 제2항의 공지일 또는 통지를 받은 날로부터 7일(또는 이용자에게 불리하거나 중대한 사항의 변경인 경우에는 30일)내에 변경된 약관에 대해 거절의 의사를 표시하지 않았을 때에는 본 약관의 변경에 동의한 것으로 간주합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제05조(이용자에 대한 통지)
','① 회사는 이 약관에 별도 규정이 없는 한 이용자에게 전자우편, 문자메시지(SMS), 전자쪽지, 푸쉬(Push)알림 등의 전자적 수단을 이용하여 통지할 수 있습니다.
② 회사는 이용자 전체에 대한 통지의 경우 7일 이상 회사가 운영하는 웹사이트 내의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. 다만, 이용자 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 제1항의 개별 통지를 합니다.
③ 회사는 이용자의 연락처 미기재, 변경 후 미수정, 오기재 등으로 인하여 개별 통지가 어려운 경우에 한하여 전항의 공지를 함으로써 개별 통지를 한 것으로 간주합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제06조(이용계약의 체결)
','이용계약은 다음의 경우에 체결됩니다.
1. 이용자가 회원으로 가입하고자 하는 경우 이용자가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 회사가 이러한 신청에 대하여 승낙한 때
2. 이용자가 회원 가입 없이 이용할 수 있는 서비스에 대하여 회원 가입 신청없이 서비스를 이용하고자 하는 경우에는 회사 서비스 이용을 위해 결제하는 때
3. 이용자가 회원가입 없이 이용할 수 있는 서비스에 대하여 회원가입의 신청없이 무료 서비스를 이용하고자 하는 경우에는 그 무료 서비스와 관련된 사항의 저장 등 부가서비스를 이용하면서 위 1호 및 2호의 절차를 진행한 때');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제01조(목적)','이 약관은 Jeju is a bear (이하 ''회사'' 라고 합니다)가 제공하는 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제20조(콘텐츠의 저작권)
','① 이용자가 서비스 내에 게시한 콘텐츠의 저작권은 해당 콘텐츠의 저작자에게 귀속됩니다.
② 제1항에 불구하고 회사는 서비스의 운영, 전시, 전송, 배포, 홍보 등의 목적으로 별도의 허락 없이 무상으로 저작권법 및 공정한 거래관행에 합치되는 범위 내에서 다음 각 호와 같이 회원이 등록한 콘텐츠를 사용할 수 있습니다.
1. 서비스의 운영, 홍보, 서비스 개선 및 새로운 서비스 개발을 위한 범위 내의 사용 제21조(관할법원 및 준거법) 서비스와 관련하여 분쟁이 발생한 경우 관할법원은 민사소송법에 따른 관할법원으로 정하며, 준거법은 대한민국의 법령을 적용합니다.

부 칙

제 1조(시행일)
본 약관은 2022.12.20 부터 시행됩니다.
');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제02조(정의)','이 약관에서 사용하는 주요 용어의 정의는 다음과 같습니다.
1. ''서비스''라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 ''이용자''가 이용할 수 있는 회사가 제공하는 제반 서비스를 의미합니다.
2. ''이용자''란 이 약관에 따라 회사가 제공하는 서비스를 받는 ''개인회원'', ''기업회원'' 및 ''비회원''을 말합니다.
3. ''개인회원''은 회사에 개인정보를 제공하여 회원등록을 한 사람으로, 회사로부터 지속적으로 정보를 제공받고 ''회사''가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
4. ''기업회원''은 회사에 기업정보 및 개인정보를 제공하여 회원등록을 한 사람으로, 회사로부터 지속적으로 정보를 제공받고 회사가 제공하는 서비스를 계속적으로 이용할수 있는 자를 말합니다.
5. ''비회원''은 회원가입 없이 회사가 제공하는 서비스를 이용하는 자를 말합니다.
6. ''아이디(ID)''라 함은 회원의 식별과 서비스이용을 위하여 회원이 정하고 회사가 승인하는 문자 또는 문자와 숫자의 조합을 의미합니다.
7. ''비밀번호''라 함은 회원이 부여받은 아이디와 일치되는 회원임을 확인하고 비밀의 보호를 위해 회원 자신이 정한 문자(특수문자 포함)와 숫자의 조합을 의미합니다.
8. ''콘텐츠''란 정보통신망법의 규정에 따라 정보통신망에서 사용되는 부호·문자·음성·음향·이미지 또는 영상 등으로 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 말합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제03조(약관외 준칙)','이 약관에서 정하지 아니한 사항에 대해서는 법령 또는 회사가 정한 서비스의 개별약관, 운영정책 및 규칙 등(이하 세부지침)의 규정에 따릅니다. 또한 본 약관과 세부지침이 충돌할 경우에는 세부지침에 따릅니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제04조(약관의 효력과 변경)
','① 이 약관은 Jeju is a bear(이)가 제공하는 모든 인터넷서비스에 게시하여 공시합니다. 회사는 ''전자상거래등에서의 소비자보호에 관한 법률(이하 ''전자상거래법''이라 함)'', ''약관의 규제에 관한 법률(이하'' 약관규제법''이라 함)'', ''정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 ''정보통신망법''이라 함)'' 등 본 서비스와 관련된 법령에 위배되지 않는 범위에서 이 약관을 변경할 수 있으며, 회사는 약관이 변경되는 경우에 변경된 약관의 내용과 시행일을 정하여, 그 시행일로부터 최소 7일 (이용자에게 불리하거나 중대한 사항의 변경은 30일) 이전부터 시행일 후 상당한 기간 동안 공지하고, 기존 이용자에게는 변경된 약관, 적용일자 및 변경사유(변경될 내용 중 중요사항에 대한 설명을 포함)를 별도의 전자적 수단(전자우편, 문자메시지, 서비스 내 전자 쪽지발송, 알림 메시지를 띄우는 등의 방법)으로 개별 통지합니다. 변경된 약관은 공지하거나 통지한 시행일로부터 효력이 발생합니다.
② 회사가 제1항에 따라 개정약관을 공지 또는 통지하는 경우 ''변경에 동의하지 아니한 경우 공지일 또는 통지를 받은 날로부터 7일(이용자에게 불리하거나 중대한 사항의 변경인 경우에는 30일) 내에 계약을 해지할 수 있으며, 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다.'' 라는 취지의 내용을 함께 통지합니다.
③ 이용자가 제2항의 공지일 또는 통지를 받은 날로부터 7일(또는 이용자에게 불리하거나 중대한 사항의 변경인 경우에는 30일)내에 변경된 약관에 대해 거절의 의사를 표시하지 않았을 때에는 본 약관의 변경에 동의한 것으로 간주합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제05조(이용자에 대한 통지)
','① 회사는 이 약관에 별도 규정이 없는 한 이용자에게 전자우편, 문자메시지(SMS), 전자쪽지, 푸쉬(Push)알림 등의 전자적 수단을 이용하여 통지할 수 있습니다.
② 회사는 이용자 전체에 대한 통지의 경우 7일 이상 회사가 운영하는 웹사이트 내의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. 다만, 이용자 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 제1항의 개별 통지를 합니다.
③ 회사는 이용자의 연락처 미기재, 변경 후 미수정, 오기재 등으로 인하여 개별 통지가 어려운 경우에 한하여 전항의 공지를 함으로써 개별 통지를 한 것으로 간주합니다.');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제06조(이용계약의 체결)
','이용계약은 다음의 경우에 체결됩니다.
1. 이용자가 회원으로 가입하고자 하는 경우 이용자가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 회사가 이러한 신청에 대하여 승낙한 때
2. 이용자가 회원 가입 없이 이용할 수 있는 서비스에 대하여 회원 가입 신청없이 서비스를 이용하고자 하는 경우에는 회사 서비스 이용을 위해 결제하는 때
3. 이용자가 회원가입 없이 이용할 수 있는 서비스에 대하여 회원가입의 신청없이 무료 서비스를 이용하고자 하는 경우에는 그 무료 서비스와 관련된 사항의 저장 등 부가서비스를 이용하면서 위 1호 및 2호의 절차를 진행한 때');
Insert into MAIN_TOS (TOS_TITLE,TOS_COMMENT) values ('제01조(목적)','이 약관은 Jeju is a bear (이하 ''회사'' 라고 합니다)가 제공하는 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.');
REM INSERTING into MATCHING
SET DEFINE OFF;
REM INSERTING into MATCHING_DETAIL
SET DEFINE OFF;
REM INSERTING into MATCHING_IMAGE
SET DEFINE OFF;
REM INSERTING into MATCHING_MAP
SET DEFINE OFF;
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (2,33.47712031218579,126.88736054551873,'두산봉');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (3,33.42354909900025,126.93075309240508,'섭지코지');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (4,33.43970064141761,126.89978162233206,'빛의벙커');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (5,33.45540858321619,126.92852546021251,'광치기해변');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (6,33.43312033409424,126.92784476612152,'아쿠아플라넷');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (7,33.435110275916635,126.92346639144021,'신양섭지해변');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (8,33.414766845508474,126.89476262004972,'혼인지');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (1,33.45912958666744,126.94059130802454,'성산일출봉');
Insert into MATCHING_MAP (MAP_NO,MAP_LATITUDE,MAP_LONGITUDE,MARKER_NAME) values (9,0,0,'골라주세요');
REM INSERTING into MATE_LIST
SET DEFINE OFF;
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (1,'광치기해변',2,2,'2023-01-02',2,0,5,'광치기 해변에 놀러 갈 사람 9함

맛난거 먹고 놀 사람',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (2,'두산봉',3,2,'2023-01-02',3,0,2,'두산봉에 놀러 갑시다

두
산
봉
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (3,'빛의벙커',4,3,'2023-01-03',3,0,4,'빛의벙커

3연벙커',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (4,'섭지코지',2,2,'2023-01-04',2,0,3,'섭지코지

섭지코지해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (13,'두산봉',3,2,'2023-01-02',3,0,2,'두산봉에 놀러 갑시다

두
산
봉
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (14,'빛의벙커',4,3,'2023-01-03',3,0,4,'빛의벙커

3연벙커',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (15,'섭지코지',2,2,'2023-01-04',2,0,3,'섭지코지

섭지코지해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (16,'성산일출봉',5,4,'2022-12-18',4,0,1,'성산 일출봉에 가면

일출을 볼 수 있음',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (17,'신양섭지해변',2,6,'2023-01-06',6,0,7,'섭지해변

섭지코지 해변

신양 섭지 해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (18,'아쿠아플라넷',5,3,'2023-01-07',3,0,6,'아쿠아플라넷

아쿠아리움

플라넷',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (19,'혼인지',2,4,'2023-01-08',4,0,8,'혼인지

혼
인
지
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (20,'광치기해변',2,1,'2023-01-09',1,0,5,'광치기

광광

치기
치기',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (21,'신양섭지해변',5,2,'2023-01-10',1,0,7,'섭지해변에서 재밌게

놀
아
봅
시
다
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (22,'혼인지',2,4,'2023-01-11',4,0,8,'혼인지

혼

인

지',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (23,'광치기해변',2,2,'2023-01-02',2,0,5,'광치기 해변에 놀러 갈 사람 9함

맛난거 먹고 놀 사람',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (5,'성산일출봉',5,4,'2022-12-18',4,0,1,'성산 일출봉에 가면

일출을 볼 수 있음',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (6,'신양섭지해변',2,6,'2023-01-06',6,0,7,'섭지해변

섭지코지 해변

신양 섭지 해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (7,'아쿠아플라넷',5,3,'2023-01-07',3,0,6,'아쿠아플라넷

아쿠아리움

플라넷',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (8,'혼인지',2,4,'2023-01-08',4,0,8,'혼인지

혼
인
지
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (9,'광치기해변',2,1,'2023-01-09',1,0,5,'광치기

광광

치기
치기',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (10,'신양섭지해변',5,2,'2023-01-10',1,0,7,'섭지해변에서 재밌게

놀
아
봅
시
다
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (11,'혼인지',2,4,'2023-01-11',4,0,8,'혼인지

혼

인

지',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (12,'광치기해변',2,2,'2023-01-02',2,0,5,'광치기 해변에 놀러 갈 사람 9함

맛난거 먹고 놀 사람',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (24,'두산봉',3,2,'2023-01-02',3,0,2,'두산봉에 놀러 갑시다

두
산
봉
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (25,'빛의벙커',4,3,'2023-01-03',3,0,4,'빛의벙커

3연벙커',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (26,'섭지코지',2,2,'2023-01-04',2,0,3,'섭지코지

섭지코지해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (27,'성산일출봉',5,4,'2022-12-18',4,0,1,'성산 일출봉에 가면

일출을 볼 수 있음',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (28,'신양섭지해변',2,6,'2023-01-06',6,0,7,'섭지해변

섭지코지 해변

신양 섭지 해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (29,'아쿠아플라넷',5,3,'2023-01-07',3,0,6,'아쿠아플라넷

아쿠아리움

플라넷',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (30,'혼인지',2,4,'2023-01-08',4,0,8,'혼인지

혼
인
지
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (31,'광치기해변',2,1,'2023-01-09',1,0,5,'광치기

광광

치기
치기',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (32,'신양섭지해변',5,2,'2023-01-10',1,0,7,'섭지해변에서 재밌게

놀
아
봅
시
다
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (33,'혼인지',2,4,'2023-01-11',4,0,8,'혼인지

혼

인

지',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (34,'광치기해변',2,2,'2023-01-02',2,1,5,'광치기 해변에 놀러 갈 사람 9함

맛난거 먹고 놀 사람',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (35,'두산봉',3,2,'2023-01-02',3,0,2,'두산봉에 놀러 갑시다

두
산
봉
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (36,'빛의벙커',4,3,'2023-01-03',3,0,4,'빛의벙커

3연벙커',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (37,'섭지코지',2,2,'2023-01-04',2,0,3,'섭지코지

섭지코지해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (38,'성산일출봉',5,4,'2022-12-18',4,1,1,'성산 일출봉에 가면

일출을 볼 수 있음',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (39,'신양섭지해변',2,6,'2023-01-06',6,0,7,'섭지해변

섭지코지 해변

신양 섭지 해변',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (40,'아쿠아플라넷',5,3,'2023-01-07',3,1,6,'아쿠아플라넷

아쿠아리움

플라넷',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (42,'광치기해변',2,1,'2023-01-09',1,4,5,'광치기

광광

치기
치기',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (43,'신양섭지해변',5,2,'2023-01-10',1,2,7,'섭지해변에서 재밌게

놀
아
봅
시
다
',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (44,'혼인지',2,4,'2023-01-11',4,29,8,'혼인지

혼

인

지',null,null);
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (53,'골라주세요',0,123,'2022-12-20',123,8,1,'test1234456456456',null,'test1234');
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (50,'광치기해변',2,123,'2022-12-09',123,2,5,'test1234',null,'test1234');
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (54,'성산일출봉',2,12,null,12,12,1,'user1234',null,'user1234');
Insert into MATE_LIST (LIST_NO,MATE_PLACE,MATE_MEMBER,MATE_TIME,MATE_DATE,MATE_CHARGE,MATE_VIEWS,MAP_NO,MATE_CONTENT,MATE_JOIN,NICK_NAME) values (55,'아쿠아플라넷',2,123,null,123,77,6,'user1234',null,'user1234');
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (NOTICE_ADMIN,NOTICE_TITLE,NOTICE_VIEWS,NOTICE_DATE,NOTICE_NO) values ('관리자','안녕하세요',0,null,12);
Insert into NOTICE (NOTICE_ADMIN,NOTICE_TITLE,NOTICE_VIEWS,NOTICE_DATE,NOTICE_NO) values ('관리자','시스템 점검에 따른 이용제한 안내',0,null,1);
Insert into NOTICE (NOTICE_ADMIN,NOTICE_TITLE,NOTICE_VIEWS,NOTICE_DATE,NOTICE_NO) values ('관리자','긴급 공지사항 안내',0,null,3);
Insert into NOTICE (NOTICE_ADMIN,NOTICE_TITLE,NOTICE_VIEWS,NOTICE_DATE,NOTICE_NO) values ('관리자','개인정보 처리방침 개정 안내(2022.12.04)
',0,null,2);
REM INSERTING into NOTICE_BOARD
SET DEFINE OFF;
REM INSERTING into NOTICE_LIST
SET DEFINE OFF;
Insert into NOTICE_LIST (NOTICELIST_TITLE,NOTICELIST_ADMIN,NOTICELIST_NO,NOTICELIST_DATE,NOTICELIST_VIEWS) values ('자자 주목!','수경',1,to_date('22/12/04','RR/MM/DD'),1);
Insert into NOTICE_LIST (NOTICELIST_TITLE,NOTICELIST_ADMIN,NOTICELIST_NO,NOTICELIST_DATE,NOTICELIST_VIEWS) values ('공지를 하나 더 추가해 보겠다','수경',3,to_date('22/12/14','RR/MM/DD'),9);
Insert into NOTICE_LIST (NOTICELIST_TITLE,NOTICELIST_ADMIN,NOTICELIST_NO,NOTICELIST_DATE,NOTICELIST_VIEWS) values ('오늘 내가 너희를 부른 이유는.. >더보기','ADMIN',2,to_date('22/12/07','RR/MM/DD'),12);
REM INSERTING into PLACE_IMAGES
SET DEFINE OFF;
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (1,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/c95eee1e-0bc6-41b7-884a-a7910397c783.gif','C',21);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (2,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/2ba7a5e8-b2e9-4a91-8cd8-772992d3ce11.gif','T',21);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (3,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/5d2e9d43-db3a-4268-9727-41e9718a6765.gif','C',22);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (4,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/b6ec4a43-4075-4fe1-8071-d757abbb5752.gif','T',22);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (5,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/81544292-1a5b-4358-acb2-5065f7f5b761.jpg','C',23);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (6,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/96b05996-a1fd-4e7e-ad6f-e7f6006b134f.jpg','T',23);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (7,'https://api.cdn.visitjeju.net/photomng/imgpath/201908/21/8568009c-e371-49ab-a892-0ce3a1f10fb4.JPG','C',24);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (8,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201908/21/4c309944-e7d0-48f2-b305-1d9c84f3481d.JPG','T',24);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (9,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/a3f54832-b81b-4ce7-acff-d91ef4bf9abd.jpg','C',25);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (10,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/dc917a98-23fe-47e1-96ee-d73a03c3dd01.jpg','T',25);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (11,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/1ffcca72-d536-4e7a-8bf1-6d4fc63e80ca.jpg','C',26);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (12,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/fd94f524-e053-40ea-b50c-a70b9fbe8873.jpg','T',26);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (13,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/bda48119-501d-4d51-9827-594bd083a3cf.jpg','C',27);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (14,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/03a2fb78-3e22-4d51-af3a-9e26f3a76bea.jpg','T',27);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (15,'https://api.cdn.visitjeju.net/photomng/imgpath/201812/20/7dd568d8-2f83-4ad0-bea2-3d56033ccd7a.JPG','C',28);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (16,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201812/20/f339683b-575a-4537-b875-e4056c2334c5.JPG','T',28);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (17,'https://api.cdn.visitjeju.net/photomng/imgpath/201805/23/9eaae173-4c33-44d4-9287-59762bbd3daf.jpg','C',29);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (18,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201805/23/e3a2a421-6aee-402a-9ce2-6103ffd64ff9.jpg','T',29);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (19,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/b63685cf-b154-49ae-a5c1-c452bdcd69b6.jpg','C',30);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (20,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/5f1390fe-54bc-42aa-bde8-b1c527f253f3.jpg','T',30);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (21,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/afb256e2-3073-4c76-a5bc-e0e5dfe7f1e5.png','C',31);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (22,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/13b57f17-4aad-404e-a82c-ca4dcc274756.png','T',31);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (23,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/fd344b3d-e817-48af-a205-3726a3b9bf4a.jpg','C',32);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (24,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/0c6d111c-8010-4436-993b-ef016f454bed.jpg','T',32);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (25,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/cb46627c-35aa-4ac0-aa25-30e17414f312.jpg','C',33);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (26,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/9d18600c-14a7-4b0a-93ef-be3b0d69f7ec.jpg','T',33);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (27,'https://api.cdn.visitjeju.net/photomng/imgpath/202211/14/b6ff3f20-6756-4825-9cb0-90a4fe04383f.jpg','C',34);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (28,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202211/14/691e5f30-19c9-4d69-8885-8e8db4bf6149.jpg','T',34);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (29,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/f503aad2-06b7-4a90-86d6-9238abc5f011.jpg','C',35);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (30,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/8e9418b5-1722-413c-a684-b07f7ff75de7.jpg','T',35);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (31,'https://api.cdn.visitjeju.net/photomng/imgpath/201806/28/ac2071e3-ea69-4f44-8359-67a7186a5d99.jpg','C',36);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (32,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201806/28/2b60a9e5-0e51-4b3a-a547-5b6254fbc8b3.jpg','T',36);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (33,'https://api.cdn.visitjeju.net/photomng/imgpath/202206/15/05aa0bc9-802a-416a-b77d-c637458a42d0.jpg','C',37);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (34,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202206/15/14edfc70-ae1e-4554-935d-457acf26c04b.jpg','T',37);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (35,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/bde55de8-5edf-462b-95ba-602e39d9ec3a.jpg','C',38);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (36,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/05d9b981-0044-4acf-9474-244949b3cf08.jpg','T',38);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (37,'https://api.cdn.visitjeju.net/photomng/imgpath/202211/14/5ec551c9-f4aa-4b6f-8670-b0a0f0599a8b.jpg','C',39);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (38,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202211/14/deafdffc-78e3-4c85-ad0e-a45fc98a1892.jpg','T',39);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (39,'https://api.cdn.visitjeju.net/photomng/imgpath/202211/14/14659907-0271-4252-9701-4183beb065ca.jpg','C',40);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (40,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202211/14/734fb140-1182-4326-833c-2137cbb30998.jpg','T',40);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (41,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/c9cd34a8-a5c3-4ccf-b781-e66482e8be13.jpg','C',1);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (42,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/4fc5f67a-77e7-4b0d-b0b3-44cc0b52fc5b.jpg','T',1);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (43,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/9be62538-4537-455c-86b3-c3bfe69218a4.gif','C',2);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (44,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/e1c0a5a3-8b02-4b90-bb5c-83773f98e420.gif','T',2);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (45,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/6c4a7e21-da67-4b56-84ce-19882a4390b1.jpg','C',3);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (46,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/cfaed659-9c87-42de-a7be-9efdb4fde873.jpg','T',3);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (47,'https://api.cdn.visitjeju.net/photomng/imgpath/202205/31/76f56c7f-4cb9-4430-b112-c2ca4f137876.JPG','C',4);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (48,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202205/31/0168a61d-6ef9-4d7c-bb82-70bfa191e8be.JPG','T',4);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (49,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/91716107-4fc8-4c83-9486-7b02c07ec9ba.jpg','C',5);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (50,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/66614c26-34af-40ea-8d06-16b3f09b5c82.jpg','T',5);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (51,'https://api.cdn.visitjeju.net/photomng/imgpath/202109/23/bfa72abe-af71-428c-9416-7a55136f0a33.jpg','C',6);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (52,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202109/23/219e2ac8-bfe3-4615-a6e0-d6e094ab31c2.jpg','T',6);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (53,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/d29fce50-455e-4de6-a742-9340a10e456b.gif','C',7);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (54,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/26c9987c-dc22-407f-b20b-4baf66231503.gif','T',7);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (55,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/f4916451-6f1b-45f1-b445-d47fbabb4200.jpg','C',8);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (56,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/73940366-f8e7-4644-9980-5d7c253694c9.jpg','T',8);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (57,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/3f4dfe16-43d8-4e29-a7d9-5db1eebc9b7a.jpg','C',9);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (58,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/2929f9d6-5e6e-4423-a13c-ad8d50f16c14.jpg','T',9);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (59,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/38514931-bc9b-4a7b-bd72-505e7e34b745.jpg','C',10);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (60,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/cd3ce85e-6875-4b23-9a16-4d5a36ca1040.jpg','T',10);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (61,'https://api.cdn.visitjeju.net/photomng/imgpath/201807/02/371a8e3f-6aa6-4017-a981-1e1b5d89e2bb.jpg','C',11);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (62,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201807/02/adacfa78-8f2b-4b3b-955e-c79d3cc2f0d6.jpg','T',11);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (63,'https://api.cdn.visitjeju.net/photomng/imgpath/201810/16/b2635763-fb57-4e8e-8b1c-cbef7773f690.JPG','C',12);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (86,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201907/04/de305046-6dd2-40af-bdb0-5805d829df86.jpg','T',43);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (87,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/aa8a570d-60c7-478b-9dcb-c2152a6c0990.jpg','C',44);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (88,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/f363d238-e198-4010-b84a-dafe1c36ec58.jpg','T',44);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (89,'https://api.cdn.visitjeju.net/photomng/imgpath/201805/23/3d2a86b0-bf30-4079-9c51-59c56b4d8778.jpg','C',45);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (90,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201805/23/b89c8a4c-d5b7-462d-bd9c-05e82f44323d.jpg','T',45);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (91,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/dea24126-298e-4987-a53d-c3f1660c4785.jpg','C',46);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (92,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/c099382d-7215-4d80-a91c-b038af346364.jpg','T',46);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (93,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/f10671a9-e46b-41e7-8a73-1c4b5682c730.jpg','C',47);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (94,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/bc94c1c2-0465-4d6b-ad3a-226224a24de4.jpg','T',47);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (95,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/1d6367ec-36d3-4905-bf5e-3cf637919b56.jpg','C',48);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (96,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/0736d55c-e0e2-41f7-b880-3b5fa603daaf.jpg','T',48);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (97,'https://api.cdn.visitjeju.net/photomng/imgpath/202211/14/6e74cf62-ae55-447c-b01d-751a3e18cc07.jpg','C',49);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (98,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202211/14/240e7c82-b919-4a8a-9f77-dd7e0b35e509.jpg','T',49);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (99,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/bec3d838-9e96-4589-8813-2b551cbf453c.jpg','C',50);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (100,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/ed093dd0-52bd-46cf-932b-aa5e8ec7dd94.jpg','T',50);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (101,'https://api.cdn.visitjeju.net/photomng/imgpath/201806/28/c2eabade-c9b6-4162-ac4a-563460f4144e.jpg','C',51);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (102,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201806/28/23521ac7-e117-41e0-9925-70c0d974c36f.jpg','T',51);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (103,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/adc77ff4-bd75-476a-bbb5-6721cc0aec20.jpg','C',52);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (104,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/a308c43f-4d83-4891-93cc-c2f820cd6348.jpg','T',52);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (105,'https://api.cdn.visitjeju.net/photomng/imgpath/201908/20/e3470371-465f-4551-86b2-37022483b254.JPG','C',53);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (106,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201908/20/90415e16-4902-4bc1-964d-9522c63133b3.JPG','T',53);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (107,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/d29bd413-8a98-4892-887e-c0aaef85b511.jpg','C',54);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (108,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/eef21172-a13b-49ba-8645-617303a1c0fd.jpg','T',54);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (109,'https://api.cdn.visitjeju.net/photomng/imgpath/202211/14/dafcd648-7abe-41bb-89a6-63ab3b45e420.jpg','C',55);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (110,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202211/14/4b6bb911-bd87-4891-bf5c-72f1dbcab5db.jpg','T',55);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (111,'https://api.cdn.visitjeju.net/photomng/imgpath/201908/20/bcccc4d6-4055-45ff-b084-03f3c9ffa851.JPG','C',56);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (112,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201908/20/f4c28adc-9707-48e1-b2af-af8b4e04d562.JPG','T',56);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (113,'https://api.cdn.visitjeju.net/photomng/imgpath/202211/14/ceb7e756-3cdd-4669-aa91-f73f61432df8.jpg','C',57);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (114,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202211/14/b1ebb691-986f-4ea5-9487-d66bfc55b9cc.jpg','T',57);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (115,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/80c5335b-e412-4a7e-a6f0-8066c9862559.jpg','C',58);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (116,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/62122d36-a966-4ba2-8a6c-a727602748ac.jpg','T',58);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (117,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/f8446049-3f4a-43eb-840b-0ce54bb24465.jpg','C',59);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (118,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/b73d8a44-e68a-42fe-8627-12d5ff26dab8.jpg','T',59);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (119,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/bca04da3-2fe8-4196-8d31-1ab596cfc41a.jpg','C',60);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (120,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/7d9d4646-8ecb-4030-a024-1d22a303e8de.jpg','T',60);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (121,'https://api.cdn.visitjeju.net/photomng/imgpath/201908/21/35533457-8676-4d71-ac63-f1cb964c0fa5.JPG','C',61);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (122,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201908/21/332499a2-15ba-4c3e-8e3a-cd5f4e8a2a5f.JPG','T',61);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (123,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/47158a86-812f-4376-b548-a5845024b1f6.jpg','C',62);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (124,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/381c24e6-bdc0-4ee3-8a94-51e81c9c076a.jpg','T',62);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (125,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/9ecba914-39d6-4b24-8c69-1661235645ca.jpg','C',63);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (126,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/66157835-46a7-4eb9-826c-17760cbe324d.jpg','T',63);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (64,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201810/16/417f6e40-d4fe-45a6-bf6c-2e5392542a00.JPG','T',12);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (65,'https://api.cdn.visitjeju.net/photomng/imgpath/201901/07/b510afef-90e4-4324-9acc-632fd6ef9790.jpg','C',13);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (66,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201901/07/f4c842eb-a3b7-4c9e-a75a-36b0110666db.jpg','T',13);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (67,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/4a27c5ee-731c-4d7b-9594-4462786d6687.jpg','C',14);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (68,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/52f78227-160e-4a02-a7df-5f25bbda9c40.jpg','T',14);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (69,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/f709e5b1-4441-44a7-8369-07e85013cc3d.jpg','C',15);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (70,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/cc0eef68-e8d8-4884-b8e5-3376efdb8d4a.jpg','T',15);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (71,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/4a069be0-aaa0-45c9-a755-6bd175f514e8.jpg','C',16);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (72,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/b1e6e835-9324-4272-a0cf-e359da33e0ea.jpg','T',16);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (73,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/9560a522-4cd7-4028-b89d-197f95b24219.jpg','C',17);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (74,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/c11e879a-94f2-4a71-9f8f-131d832369fe.jpg','T',17);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (75,'https://api.cdn.visitjeju.net/photomng/imgpath/202205/30/35f76423-3a03-4532-a2ba-d8b66f3405ce.jpg','C',18);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (76,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202205/30/f9cc6454-5866-4734-b92a-429830bcdeea.jpg','T',18);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (77,'https://api.cdn.visitjeju.net/photomng/imgpath/201908/20/39d66f34-261b-4115-9123-0f5491d36690.JPG','C',19);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (78,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201908/20/6d98172e-6471-49d5-8b7e-6e41ad07e3f1.JPG','T',19);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (79,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/e2a2f19f-b8dc-4ecc-ab80-37dcde6d169c.jpg','C',20);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (80,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/a9c9c524-0590-4cc2-8be3-2b661428eba7.jpg','T',20);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (81,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/a30253d2-8daf-4256-9873-baed3cbd102d.jpg','C',41);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (82,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/c5b19d44-87ac-4f36-bb3e-8d8faf000e19.jpg','T',41);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (83,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/be2abddc-6f02-4ed0-bc5d-676714db5b3b.jpg','C',42);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (84,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/b9c5e21c-7f55-4286-ac35-d00c6a23fe12.jpg','T',42);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (85,'https://api.cdn.visitjeju.net/photomng/imgpath/201907/04/b1492ea3-e5d9-46c8-b75b-cc30d6dfd42a.jpg','C',43);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (127,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/fc4640b1-af8d-408d-a7a4-ac3356a8fbf5.jpg','C',64);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (128,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/09144105-1b4f-4e49-ae4f-224629313f6d.jpg','T',64);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (129,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/71d032eb-5de9-4741-8508-4218003981dc.jpg','C',65);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (130,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/94a406b4-67b3-4d92-893d-47b493fed85c.jpg','T',65);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (131,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/d813fee5-1332-43e7-83d2-a4f140016ac2.jpg','C',66);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (132,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/588a11aa-21a3-4c2b-89a4-b7c4c9e8aabd.jpg','T',66);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (133,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/dd4d4f54-02d6-4217-b8c2-c1610db237ad.jpg','C',67);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (134,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/bbc5c764-c8a2-43dc-b833-2c7cd9778e82.jpg','T',67);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (135,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/fabb80e2-0895-4c53-b7fa-49e08ca765d7.jpg','C',68);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (136,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/6a0f043b-e2fe-485d-ac29-08817312f0f4.jpg','T',68);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (137,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/ae341d97-64a7-46b3-9869-ef600d88ec37.jpg','C',69);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (138,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/a6bb8eeb-eda0-4217-9c5b-3e5dca597e1d.jpg','T',69);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (139,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/3979f77b-18f4-41e8-9411-a1931b0ac08f.gif','C',70);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (140,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/23cbf962-6c2f-4783-a4ae-377f8392e41a.gif','T',70);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (141,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/9a968882-178b-4c13-bef4-149adb8360f2.jpg','C',71);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (142,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/d6ef3aad-4737-4b53-8cc7-7aae8672f338.jpg','T',71);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (143,'https://api.cdn.visitjeju.net/photomng/imgpath/202111/23/b5aa8f5d-cfc6-4fa8-ab55-1c0d956eb2d4.jpg','C',72);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (144,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202111/23/0b417fa9-9d6a-4b89-bb50-0d8432ea1808.jpg','T',72);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (145,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/343adc58-3f12-4353-8de9-90e5080511a8.gif','C',73);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (146,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/e8a5e5b7-6eff-44e1-aa96-bf22809adffe.gif','T',73);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (147,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/7335e958-e3e4-457f-9c00-c8a47782b409.jpg','C',74);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (148,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/2a9378eb-1e8c-4995-ba7e-a0d86c6390f2.jpg','T',74);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (149,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/c57d6a35-ef47-424e-83c1-e9fec9f21468.jpg','C',75);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (150,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/821a6dc7-a3cd-4284-a1d1-dcacc7f6c646.jpg','T',75);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (151,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/917fc7e1-83b7-41ef-bef2-7fb01ae5b3ef.jpg','C',76);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (152,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/05258697-bf86-4021-b543-8e53fc307dee.jpg','T',76);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (153,'https://api.cdn.visitjeju.net/photomng/imgpath/201903/08/fff3c774-191b-4701-af18-e0ff22f0c266.JPG','C',77);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (154,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201903/08/3cfd8fa4-b5e1-4e91-b286-2f6225f2d29e.JPG','T',77);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (155,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/aee63289-1272-4f8a-b663-cd215cee700d.jpg','C',78);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (156,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/3a438530-dd70-4e55-9797-d2e2514134d4.jpg','T',78);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (157,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/700e65d5-7fcf-490b-ba78-6f1cb682793c.gif','C',79);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (158,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/20f7d17b-87fa-48a0-950e-8b1c1fc07b5f.gif','T',79);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (159,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/140571ec-3712-4685-bc37-7ec24c33704b.jpg','C',80);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (160,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/59ce2370-a9c0-47f9-96b4-3d78ae5b033b.jpg','T',80);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (161,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/c01afd09-cb9c-4d25-b3c4-eb60a2d8d1c5.jpg','C',81);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (162,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/205956f6-b12e-4c2b-a65c-a5c86c378a68.jpg','T',81);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (163,'https://api.cdn.visitjeju.net/photomng/imgpath/202203/11/b8882bd7-bf86-45f8-8bcd-1b90544aa0d4.jpg','C',82);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (164,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202203/11/f3816b67-e576-4f0d-80ec-83bdd3b9e734.jpg','T',82);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (165,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/00290a79-f269-4caf-8091-3372e20e1dd1.jpg','C',83);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (166,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/cb0765e2-e881-4172-89b7-d1d0b3d19059.jpg','T',83);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (167,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/ce8b2076-227b-41c2-a765-feda8a0f6f7c.jpg','C',84);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (168,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/df93fc1f-c2a4-4e35-bd82-b6eb5e9c2b0a.jpg','T',84);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (169,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/5b716072-6310-4d65-9f82-f15fe8005886.jpg','C',85);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (170,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/330c7386-da98-4578-979b-2837eff81ece.jpg','T',85);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (171,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/dd003103-facc-4f3d-9f65-4182efb9f410.jpg','C',86);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (172,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/00331d39-0e05-48a2-b03a-937a245e6648.jpg','T',86);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (173,'https://api.cdn.visitjeju.net/photomng/imgpath/202211/15/cfd7967f-abf4-4c3a-ac2f-8b770207031b.jpg','C',87);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (174,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/202211/15/5f504987-a162-42a1-a11d-67894f98836d.jpg','T',87);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (175,'https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/09efe6a0-73aa-42d7-8adc-de53edb49a95.jpg','C',88);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (176,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/5529954f-1bcf-41d5-9e90-adee9c3a67c7.jpg','T',88);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (177,'https://api.cdn.visitjeju.net/photomng/imgpath/201908/20/0999df9b-66dc-4632-a322-f299c0feb560.JPG','C',89);
Insert into PLACE_IMAGES (P_IMAGE_NO,P_IMAGE_URL,P_IMAGE_STAT,PLACE_NO) values (178,'https://api.cdn.visitjeju.net/photomng/thumbnailpath/201908/20/d18ad19c-4af6-4acf-b13c-3a8bdefadd98.JPG','T',89);
REM INSERTING into PLACE_RECOMMAND_DETAIL
SET DEFINE OFF;
REM INSERTING into PLACE_REPLY
SET DEFINE OFF;
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (1,'동북왕 어디서도 맛보지 못하는 양꼬치','대표메뉴인 양꼬치와 함께 중국 현지에서 먹을 수 있는 메뉴들로 구성되어 있다.

기본 반찬으로는 무채 나물, 양배추 절임, 땅콩 볶음이 나온다.

다만 메뉴가 중국어로 되어 있기 때문에 동북왕 홈페이지를 미리 방문해 한국어 메뉴를 확인하고 방문하는 것이 좋을 듯하다.

',to_date('22/10/15','RR/MM/DD'),1,1,'N',null,'띠용','동북왕','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/c9cd34a8-a5c3-4ccf-b781-e66482e8be13.jpg');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (2,'해변의집','아름다운 제주의 오름인 도두봉이 있어 펜션에서 정상까지 10분이면 걸어서 등산이 가능하며
제주공항의 비행기 이착률 풍경과 제주시 전경과 푸른바다의 한라산을 사이에 두고 일출과 월출을 한눈에 볼 수있는 곳이기도 합니다.',to_date('22/10/15','RR/MM/DD'),3,1,'N',null,'앞잡이','해변의집','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/6c4a7e21-da67-4b56-84ce-19882a4390b1.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (3,'바농 카페를 다녀와서','바농카페는 이중섭미술관 북쪽 이중섭거리에 위치하고 있다.

이곳에서는 제주올레의 마스코트인 말모양 간세인형을 직접 만들어보는 체험을 할수 있다.

체험을 하면 음료 한잔 무료로 제공된다.

마농의 특별메뉴로는 유기농영귤차와 에소밀크티, 봉자주스 등이 있다.',to_date('22/10/17','RR/MM/DD'),5,1,'N',null,'쪼님','바농','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/91716107-4fc8-4c83-9486-7b02c07ec9ba.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (4,'제주도펜션으로 핫한 제주 바산올레 펜션을 소개합니다','제주도 여행길에 한번쯤 들려봐야 할곳~

깨끗한 숙소로 추천하고 싶은 곳~

심신의 피로를 풀수 있어 더욱 좋은 곳~

제주도펜션으로 핫한 제주 바산올레 펜션을 소개합니다

제주도 최남단 마라도,가파도,형제섬~

송악산과 대평의 명물 박수기정이 손에 잡힐듯 보이는

제주도 최상의 뷰를 자랑하는 제주 바산올레펜션입니다',to_date('22/11/12','RR/MM/DD'),7,1,'N',null,'우중','바산올레펜션','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/d29fce50-455e-4de6-a742-9340a10e456b.gif
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (5,'올레길 4코스에서 만난 뷰 맛집 카페 ''슬로우아일랜드''','슬로우 아일랜드는 커피와 디저트도 맛있고,
뷰맛집이라고 해서 방문했는데,
달달한 커피 메뉴가 많아서 좋았어요.
원목 테이블과 의자로 깔끔하면서 앉기 편안한 공간이였습니다.
야외 테라스 공간도 있고 바로 앞 바닷가가 보여 풍경이 너무 좋네요',to_date('22/11/12','RR/MM/DD'),9,1,'N',null,'휴탄','슬로우카페','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/3f4dfe16-43d8-4e29-a7d9-5db1eebc9b7a.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (6,'제주공한펜션 가성비갑 해안풍경펜션','제주도니까 "바다"가 보였으면 좋겠다고 생각해서 고른 숙소
침대에 누워서 해안도로가 바로 보여서 좋았다
아침에 해안도로따라 조깅하는 사람들도 정말 많았다
다만, 옛날 오두막집을 연상케하는 실내 인테리어와 불편한 점은 없었지만 무언가… 찝찝한 화장실…..
그리고 엘리베이터가 없어서 계단으로 3층까지 올라가야하는 점이 조금 불편했다',to_date('22/11/14','RR/MM/DD'),10,1,'N',null,'무드럭칼','해안풍경펜션','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/38514931-bc9b-4a7b-bd72-505e7e34b745.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (7,'동네 숨은 맛집','제주남원에 위치한 숙소 근처 횟집을 찾다가 펜션 사장님이 소개해 준 맛집리스트에 있어서 방문한 곳이다.
제주 남원의 올레길 4코스를 따라 가다보면 조금 안쪽 골목에 위치해 있다.
메뉴는 주로 회종류이고, 꼼장어 구이도 많이 주문하는 거 같았지만 제주에 왔으니 회를 먹어야지 하는 생각으로 모듬회를 주문해서 먹었다',to_date('22/11/14','RR/MM/DD'),14,1,'N',null,'최수운','갯마을','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/4a27c5ee-731c-4d7b-9594-4462786d6687.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (8,'우리나라 최남단에서 짬뽕먹기','배타는 시간이 얼마 안남아서 그냥 모듬 해산물만 호다닥 먹고 가려고 했는데, 사장님께서 전동차로 태워다 주신다고 해서 해물짬뽕까지 먹을 수 있었어요
먼저 모듬 해산물이 다양하게 나왔는데 처음보는 거복손이 나왔는데 조개보다 조금 더 쫄깃한 맛이였어요
먹다보니 해물짬뽕이 나왔는데 새우, 전복, 홍합이 푸짐하게 들어있었어요
최고최고 여태 먹어본 짬뽕 중에 원탑입니다!!',to_date('22/11/21','RR/MM/DD'),20,1,'N',null,'밀잠자리붙이','서바당횟집','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/e2a2f19f-b8dc-4ecc-ab80-37dcde6d169c.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (9,'여기가 낙원이죠 제주 낭만주의 카페','바다 바로 앞에 자리하고 있어 일몰이 더욱 아름다운 공간
이호테우 해변 근처 방파제에서 낚시를 살짝하고 
근처 몸도 녹일겸 들렸던 내도동 카페 제주 낭만주의
카페 분위기도 너무 좋고
커피까지 맛있어서 더 좋았던 곳이랍니다.
이호테우에서 가까워서 추천드리는 제주 카페예요',to_date('22/11/21','RR/MM/DD'),28,1,'N',null,'순재생산율','낭만주의','https://api.cdn.visitjeju.net/photomng/imgpath/201812/20/7dd568d8-2f83-4ad0-bea2-3d56033ccd7a.JPG
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (11,'깔끔하고 쾌적한 숙소 시땅 펜션','제주 애월읍에 위치한 깨끗하고 쾌적한 

시땅 펜션을 소개해드리려합니다!

​

갑자기 강풍주의보로 비행기 결항으로 인해 

에어비앤비에서 급히 잡아서 한 7시쯤? 도착했는데 

사장님께서 친절하게 잘 안내해주셨어요
​

참고로 입실 3시 퇴실 11시입니다!

1층에는 카페도 있는데 조식서비스 요금을 추가하면 

오전 8시 30분~10시까지 카페에서 

조식서비스을 이용할 수 있다고 합니다!

​

친구가 예약한거라 가고나서 알았던 서비스ㅠ

시땅펜션에서 묵는다면 이용해보는것도 좋을 것 같습니다',to_date('22/11/28','RR/MM/DD'),45,1,'N',null,'계시안','시땅','https://api.cdn.visitjeju.net/photomng/imgpath/201805/23/3d2a86b0-bf30-4079-9c51-59c56b4d8778.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (12,'노형동 단골 돔베고기 정식집 ''진미네식당''','오늘은 제가 실제로 자주갔었던 정식집인 ''진미네 식당''을 소개해드리려고해요

보통 정식집은 제육볶음이 메인으로 나오는데 진미네 식당은 돔베고기가 나온답니다!

거기에 따뜻하고 부드러운 고등어구이까지 나오는데

둘다 갈치속젓이랑 같이 먹으면 아주 맛있다구요ㅎㅎ

진미네 식당은 노형동 노형초 부근 주택가에 위치해있습니다

전용 주차장은 없지만 주변 골목에 주차하셔도 되고

바로 옆에 공영 주차장이 새로 건설되어서

주차는 어렵지 않을 것 같아요',to_date('22/12/01','RR/MM/DD'),4,1,'N',null,'주안점','진미네식당','https://api.cdn.visitjeju.net/photomng/imgpath/202205/31/76f56c7f-4cb9-4430-b112-c2ca4f137876.JPG
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (13,'제주 한라꽃방 꽃다발 예쁘게 하는 곳','이중섭거리에 있어서 완전 관광지 안에 있더라구요

옆에 카페까지 함께 있어서 꽃 좋아하시는 분들은

커피 한잔하며 꽃도 구경하기 좋을 것 같아요!

입구부터 꽃향기와 푸르름 가득

내부가 생각보다 넓고 

다양한 꽃과 화분, 집 데코용으로도 

살 만한 식물이 많았어요

화병도 따로 판매하는데 

뭔가 엔틱하면서도 심플해서 

집에 꽂아놓을 용으로 꽃다발을 사게 된다면

꽃병도 구경해보길 추천추천',to_date('22/12/01','RR/MM/DD'),51,1,'N',null,'기기창','한라꽃방','https://api.cdn.visitjeju.net/photomng/imgpath/201806/28/c2eabade-c9b6-4162-ac4a-563460f4144e.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (14,'제주의 서쪽 한경면 판포리에 있는 메종드판포','저희가 원하던 숙소는 관광지보단 소소한 마을이였고 돌담과 제주 현지감성의 숙소 였어요! 또 바다근처나 남편이 한번씩 갈 수 있는 낚시스팟 근처였어요!

요새 신혼여행도 태교여행도 여름휴가도 다 제주도로 가는 추세라 숙소를 찾기가 너무 어렵더라구요. 깨끗하고 감성숙소면 너무 비쌌고 아님 4인가족을 위한 너무 큰 독채복층집거나...

검색하다 여기 까페에서 판포포구의 메종드판포를 알게되었는데 최근후기가 많이 없어 고민했었습니다. 어디를 가야할지 계속 검색해보던 중에, 메종드판포의 최신글로 하나가 올라왔고 블로그 후기를 봤더니, 5월 한달살기를 하고 온 분이 였습니다.
아이와 함께 온 것 같았는데 엄청 만족한 것 같아서
저희도 바로 예약했어요!

어제 오후쯤 도착했는데 생각보다 더 넓고 예쁘고
깨끗하고 너무 좋네요!!!
집으로 들어오는 도로마저도 이뻐요

후기를 인스타그램에만 올리기엔 아쉬워서 까페에도 남겨요
좋은 가격에 좋은 숙소를 구한 것 같아요!',to_date('22/12/01','RR/MM/DD'),59,1,'N',null,'히마리','메종드판포','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/f8446049-3f4a-43eb-840b-0ce54bb24465.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (15,'제주로컬 돈가스맛집 이돈갓 시청점','제주시청맛집 <이돈갓> 다녀왔습니다~!

이번 기회에 알았는데

이돈갓 제주에만 있는 브랜드더라구요~?

제주에 4개의 분점이 있는 돈가스 브랜드에요 ㅎㅎ

​

이미 도민들 사이에서는​

모르는 사람이 없을 돈가스 맛집입니다~!

요즘 제주에 돈가스맛집 많이 생기지만

<이돈갓>은 저 어릴 때부터 가던

돈가스 맛집이에요!​

​

주방 직원분이 위생모와 마스크까지

완전히 무장하고 요리를 하고 계셔서

놀랐어요!!!

(당연한 거지만 위생모까지 하는 가게 많이 없잖아요;)

청결 걱정은 안 하셔도 될 듯',to_date('22/12/05','RR/MM/DD'),67,1,'N',null,'탑용','이돈갓시청점','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/dd4d4f54-02d6-4217-b8c2-c1610db237ad.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (16,'허브올레, 서귀포 가기전 마지막 카페','제주시에서 표선 해수욕장을 연결하는 길을 다니다보면 한번쯤 보게 되는 곳이 있다.
직접 키운 허브로 차를 내려주는 카페가 있는데 이름은 "허브올레"

요즘같이 쌀쌀한 바닷바람이 부는 제주도를 여행한다면 따뜻한 차 한잔이 생각날 때 들려주면 좋은 곳이다

커피를 마시기엔 그렇고
뭔가 깔끔하면서도 따뜻한걸 마시고 싶을 때 알맞은 장소

허브를 직접 생산하는 농장 카페답게 허브를 이용해 다양한 상품을 만들어 판매중이다!

물론 허브차 종류도 직접 구입 가능했다',to_date('22/12/05','RR/MM/DD'),72,1,'N',null,'양처현모주의','허브올레','https://api.cdn.visitjeju.net/photomng/imgpath/202111/23/b5aa8f5d-cfc6-4fa8-ab55-1c0d956eb2d4.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (17,'국물이 진한 생면 고기국수 맛집 ''용담생국수''','
진한 돼지국물 맛이 찰진

고기국수의 맛집을 찾았다.

​

우연히 들렀다 건진 고기국수 맛집

이번이 세 번째 방문인

용담생국수

​

특히 면은 중면이 아니라

내가 좋아하는 생면

고기국수 외에도

다양한 메뉴가 있다.

현지인들이 주로 찾는 맛집이었는데

오늘은 여행객들도 보였다.',to_date('22/12/06','RR/MM/DD'),73,1,'N',null,'로도피산맥','용담생국수','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/343adc58-3f12-4353-8de9-90e5080511a8.gif
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (18,'고등어조림 맛있는 영춘식당','오늘은 제주시 도남동 ~ 
동네언니가 정식집 맛있는 곳 있다고 데려간 
제주시청 맛집
영춘식당 

고등어조림이 맛있다고 해서 다녀왔다.
아침10시부터 영업이다.

방은 없고 다 입식이다.

고등어조림 2인16000원
공깃밥 포함이라 비싸진 않음

메인 고등어조림 말고도 
수육이랑 국, 찌게, 쌈과 나물들이 나온다.',to_date('22/12/12','RR/MM/DD'),79,1,'N',null,'바른생활어른이','영춘식당','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/700e65d5-7fcf-490b-ba78-6f1cb682793c.gif
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (10,'2박 3일 제주여행 알차게 즐기기','좁은 산길을 굽이굽이 돌아 마치 길의 끝인 듯 만난 단독 펜션 ''브라운 캐빈''
캠핑 2박을 꿈꾸다가 1박을 편안한 잠자리로 바꾸었더니 참 다행한 일이 되었습니다
제주 풀빌라 느낌 독채펜션은 복층 구조로 되어있고 인테리어도 깔끔하고 완전 좋네요
멀리 바다가 있어서 밤에는 고기잡이배들의 불빛이 장관이였어요
',to_date('22/11/21','RR/MM/DD'),44,1,'N',null,'평교수','브라운캐빈','https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/aa8a570d-60c7-478b-9dcb-c2152a6c0990.jpg
');
Insert into REVIEW (REV_NO,REV_TITLE,REV_CONTENT,REV_CRE_DATE,PLACE_NO,REV_VIEWS,REV_DEL_STAT,USERS_ID,USER_NICKNAME,PLACE_NAME,P_IMAGE_URL) values (27,'안녕','잘가',null,0,0,'N',null,null,'우리집',null);
REM INSERTING into REV_IMAGE
SET DEFINE OFF;
REM INSERTING into REV_REPLY
SET DEFINE OFF;
REM INSERTING into TAG
SET DEFINE OFF;
Insert into TAG (TAG_NO,TAG_NAME) values (1,'특산품');
Insert into TAG (TAG_NO,TAG_NAME) values (2,'공방');
Insert into TAG (TAG_NO,TAG_NAME) values (3,'쇼핑');
Insert into TAG (TAG_NO,TAG_NAME) values (4,'옥돔');
Insert into TAG (TAG_NO,TAG_NAME) values (5,'갈비');
Insert into TAG (TAG_NO,TAG_NAME) values (6,'음식');
Insert into TAG (TAG_NO,TAG_NAME) values (7,'생선구이정식');
Insert into TAG (TAG_NO,TAG_NAME) values (8,'생선조림');
Insert into TAG (TAG_NO,TAG_NAME) values (9,'전복');
Insert into TAG (TAG_NO,TAG_NAME) values (10,'해물뚝배기');
Insert into TAG (TAG_NO,TAG_NAME) values (11,'카페');
Insert into TAG (TAG_NO,TAG_NAME) values (12,'수박주스');
Insert into TAG (TAG_NO,TAG_NAME) values (13,'카페라떼');
Insert into TAG (TAG_NO,TAG_NAME) values (14,'카페모카');
Insert into TAG (TAG_NO,TAG_NAME) values (15,'쿠키');
Insert into TAG (TAG_NO,TAG_NAME) values (16,'주스');
Insert into TAG (TAG_NO,TAG_NAME) values (17,'김치찜');
Insert into TAG (TAG_NO,TAG_NAME) values (18,'김치요리');
Insert into TAG (TAG_NO,TAG_NAME) values (19,'김치전골');
Insert into TAG (TAG_NO,TAG_NAME) values (20,'가족');
Insert into TAG (TAG_NO,TAG_NAME) values (21,'안전인증숙소');
Insert into TAG (TAG_NO,TAG_NAME) values (22,'후포해변');
Insert into TAG (TAG_NO,TAG_NAME) values (23,'나바론하늘길');
Insert into TAG (TAG_NO,TAG_NAME) values (24,'산책로');
Insert into TAG (TAG_NO,TAG_NAME) values (25,'포토스팟');
Insert into TAG (TAG_NO,TAG_NAME) values (26,'아이스크림');
Insert into TAG (TAG_NO,TAG_NAME) values (27,'고기국수');
Insert into TAG (TAG_NO,TAG_NAME) values (28,'몸국');
Insert into TAG (TAG_NO,TAG_NAME) values (29,'한치물회');
Insert into TAG (TAG_NO,TAG_NAME) values (30,'해물파전');
Insert into TAG (TAG_NO,TAG_NAME) values (31,'조식 포함');
Insert into TAG (TAG_NO,TAG_NAME) values (32,'고객휴게실');
Insert into TAG (TAG_NO,TAG_NAME) values (33,'대니쉬빵');
Insert into TAG (TAG_NO,TAG_NAME) values (34,'유기농');
Insert into TAG (TAG_NO,TAG_NAME) values (35,'쌈밥정식');
Insert into TAG (TAG_NO,TAG_NAME) values (36,'가브리살');
Insert into TAG (TAG_NO,TAG_NAME) values (37,'냉면');
Insert into TAG (TAG_NO,TAG_NAME) values (38,'육개장');
Insert into TAG (TAG_NO,TAG_NAME) values (39,'갈비탕');
Insert into TAG (TAG_NO,TAG_NAME) values (40,'동태찌개');
Insert into TAG (TAG_NO,TAG_NAME) values (41,'순두부찌개');
Insert into TAG (TAG_NO,TAG_NAME) values (42,'가파도');
Insert into TAG (TAG_NO,TAG_NAME) values (43,'방갈로숙박촌');
Insert into TAG (TAG_NO,TAG_NAME) values (44,'추자항근처');
Insert into TAG (TAG_NO,TAG_NAME) values (45,'추자숙박');
Insert into TAG (TAG_NO,TAG_NAME) values (46,'교통');
Insert into TAG (TAG_NO,TAG_NAME) values (47,'백숙');
Insert into TAG (TAG_NO,TAG_NAME) values (48,'오리구이');
Insert into TAG (TAG_NO,TAG_NAME) values (49,'오골계백숙');
Insert into TAG (TAG_NO,TAG_NAME) values (50,'흑염소전골');
Insert into TAG (TAG_NO,TAG_NAME) values (51,'노래방');
Insert into TAG (TAG_NO,TAG_NAME) values (52,'양념고기');
Insert into TAG (TAG_NO,TAG_NAME) values (53,'돼지구이');
Insert into TAG (TAG_NO,TAG_NAME) values (54,'된장찌개');
Insert into TAG (TAG_NO,TAG_NAME) values (55,'김치찌개');
Insert into TAG (TAG_NO,TAG_NAME) values (56,'목살');
Insert into TAG (TAG_NO,TAG_NAME) values (57,'브루스케타');
Insert into TAG (TAG_NO,TAG_NAME) values (58,'브런치카페');
Insert into TAG (TAG_NO,TAG_NAME) values (59,'우동');
Insert into TAG (TAG_NO,TAG_NAME) values (60,'나베');
Insert into TAG (TAG_NO,TAG_NAME) values (61,'히레까스');
Insert into TAG (TAG_NO,TAG_NAME) values (62,'로스까스');
Insert into TAG (TAG_NO,TAG_NAME) values (63,'기념품');
Insert into TAG (TAG_NO,TAG_NAME) values (64,'어린이');
Insert into TAG (TAG_NO,TAG_NAME) values (65,'추자음식점');
Insert into TAG (TAG_NO,TAG_NAME) values (66,'추자식당');
Insert into TAG (TAG_NO,TAG_NAME) values (67,'추자갈비집');
Insert into TAG (TAG_NO,TAG_NAME) values (68,'추자숯불갈비');
Insert into TAG (TAG_NO,TAG_NAME) values (69,'양념갈비');
Insert into TAG (TAG_NO,TAG_NAME) values (70,'삼겹살');
Insert into TAG (TAG_NO,TAG_NAME) values (71,'오겹살');
Insert into TAG (TAG_NO,TAG_NAME) values (72,'항정살');
Insert into TAG (TAG_NO,TAG_NAME) values (73,'포장판매');
Insert into TAG (TAG_NO,TAG_NAME) values (74,'스파');
Insert into TAG (TAG_NO,TAG_NAME) values (75,'풀빌라');
Insert into TAG (TAG_NO,TAG_NAME) values (76,'제주시권');
Insert into TAG (TAG_NO,TAG_NAME) values (77,'추자펜션');
Insert into TAG (TAG_NO,TAG_NAME) values (78,'추자일출');
Insert into TAG (TAG_NO,TAG_NAME) values (79,'추자조식');
Insert into TAG (TAG_NO,TAG_NAME) values (80,'힐링');
Insert into TAG (TAG_NO,TAG_NAME) values (81,'마을관광');
Insert into TAG (TAG_NO,TAG_NAME) values (82,'닭');
Insert into TAG (TAG_NO,TAG_NAME) values (83,'오리');
Insert into TAG (TAG_NO,TAG_NAME) values (84,'옻닭');
Insert into TAG (TAG_NO,TAG_NAME) values (85,'샤브샤브');
Insert into TAG (TAG_NO,TAG_NAME) values (86,'오리고기');
Insert into TAG (TAG_NO,TAG_NAME) values (87,'콘도');
Insert into TAG (TAG_NO,TAG_NAME) values (88,'휴양콘도');
Insert into TAG (TAG_NO,TAG_NAME) values (89,'가족호텔');
Insert into TAG (TAG_NO,TAG_NAME) values (90,'바지락');
Insert into TAG (TAG_NO,TAG_NAME) values (91,'닭칼국수');
Insert into TAG (TAG_NO,TAG_NAME) values (92,'김치손칼국수');
Insert into TAG (TAG_NO,TAG_NAME) values (93,'칼국수');
Insert into TAG (TAG_NO,TAG_NAME) values (94,'한식');
Insert into TAG (TAG_NO,TAG_NAME) values (95,'만두');
Insert into TAG (TAG_NO,TAG_NAME) values (96,'갈비찜');
Insert into TAG (TAG_NO,TAG_NAME) values (97,'열무국수');
Insert into TAG (TAG_NO,TAG_NAME) values (98,'불고기');
Insert into TAG (TAG_NO,TAG_NAME) values (99,'돼지고기');
Insert into TAG (TAG_NO,TAG_NAME) values (100,'2022고메페스타');
Insert into TAG (TAG_NO,TAG_NAME) values (101,'게스트하우스');
Insert into TAG (TAG_NO,TAG_NAME) values (102,'안전인증민박');
Insert into TAG (TAG_NO,TAG_NAME) values (103,'드립커피');
Insert into TAG (TAG_NO,TAG_NAME) values (104,'레몬에이드');
Insert into TAG (TAG_NO,TAG_NAME) values (105,'차');
Insert into TAG (TAG_NO,TAG_NAME) values (106,'한라산큐브스테이크');
Insert into TAG (TAG_NO,TAG_NAME) values (107,'쉬림프박스');
Insert into TAG (TAG_NO,TAG_NAME) values (108,'오메기떡춥스');
Insert into TAG (TAG_NO,TAG_NAME) values (109,'감바스');
Insert into TAG (TAG_NO,TAG_NAME) values (110,'딸기스무디');
Insert into TAG (TAG_NO,TAG_NAME) values (111,'한정식');
Insert into TAG (TAG_NO,TAG_NAME) values (112,'흑돼지');
Insert into TAG (TAG_NO,TAG_NAME) values (113,'삼계탕');
Insert into TAG (TAG_NO,TAG_NAME) values (114,'토종닭');
Insert into TAG (TAG_NO,TAG_NAME) values (115,'흑돼지구이');
Insert into TAG (TAG_NO,TAG_NAME) values (116,'두루치기');
Insert into TAG (TAG_NO,TAG_NAME) values (117,'볶음밥');
Insert into TAG (TAG_NO,TAG_NAME) values (118,'막걸리');
Insert into TAG (TAG_NO,TAG_NAME) values (119,'티본스테이크');
Insert into TAG (TAG_NO,TAG_NAME) values (120,'파스타');
Insert into TAG (TAG_NO,TAG_NAME) values (121,'샐러드');
Insert into TAG (TAG_NO,TAG_NAME) values (122,'스테이크');
Insert into TAG (TAG_NO,TAG_NAME) values (123,'토마호크스테이크');
Insert into TAG (TAG_NO,TAG_NAME) values (124,'꽃등심스테이크');
Insert into TAG (TAG_NO,TAG_NAME) values (125,'봉골레파스타');
Insert into TAG (TAG_NO,TAG_NAME) values (126,'해물파스타');
Insert into TAG (TAG_NO,TAG_NAME) values (127,'크림파스타');
Insert into TAG (TAG_NO,TAG_NAME) values (128,'미트볼파스타');
Insert into TAG (TAG_NO,TAG_NAME) values (129,'리조또');
Insert into TAG (TAG_NO,TAG_NAME) values (130,'전복뚝배기');
Insert into TAG (TAG_NO,TAG_NAME) values (131,'옥돔구이');
Insert into TAG (TAG_NO,TAG_NAME) values (132,'고등어구이');
Insert into TAG (TAG_NO,TAG_NAME) values (133,'갈치조림');
Insert into TAG (TAG_NO,TAG_NAME) values (134,'고등어');
Insert into TAG (TAG_NO,TAG_NAME) values (135,'고등어회');
Insert into TAG (TAG_NO,TAG_NAME) values (136,'쌈밥');
Insert into TAG (TAG_NO,TAG_NAME) values (137,'전복버터구이');
Insert into TAG (TAG_NO,TAG_NAME) values (138,'갈치');
Insert into TAG (TAG_NO,TAG_NAME) values (139,'갈치구이');
Insert into TAG (TAG_NO,TAG_NAME) values (140,'갈치회');
Insert into TAG (TAG_NO,TAG_NAME) values (141,'제주갈치조림');
Insert into TAG (TAG_NO,TAG_NAME) values (142,'제주갈치구이');
Insert into TAG (TAG_NO,TAG_NAME) values (143,'갈치국');
Insert into TAG (TAG_NO,TAG_NAME) values (144,'물회');
Insert into TAG (TAG_NO,TAG_NAME) values (145,'회국수');
Insert into TAG (TAG_NO,TAG_NAME) values (146,'회덮밥');
Insert into TAG (TAG_NO,TAG_NAME) values (147,'한치회');
Insert into TAG (TAG_NO,TAG_NAME) values (148,'전복물회');
Insert into TAG (TAG_NO,TAG_NAME) values (149,'광어회');
Insert into TAG (TAG_NO,TAG_NAME) values (150,'방어회');
Insert into TAG (TAG_NO,TAG_NAME) values (151,'한치');
Insert into TAG (TAG_NO,TAG_NAME) values (152,'방어');
Insert into TAG (TAG_NO,TAG_NAME) values (153,'핸드드립');
Insert into TAG (TAG_NO,TAG_NAME) values (154,'핸드드립커피');
Insert into TAG (TAG_NO,TAG_NAME) values (155,'딸기라떼');
Insert into TAG (TAG_NO,TAG_NAME) values (156,'과일주스');
Insert into TAG (TAG_NO,TAG_NAME) values (157,'계곡');
Insert into TAG (TAG_NO,TAG_NAME) values (158,'4성급호텔');
Insert into TAG (TAG_NO,TAG_NAME) values (159,'양식레스토랑');
Insert into TAG (TAG_NO,TAG_NAME) values (160,'무장애여행');
Insert into TAG (TAG_NO,TAG_NAME) values (161,'편의시설');
Insert into TAG (TAG_NO,TAG_NAME) values (162,'추자도민박');
Insert into TAG (TAG_NO,TAG_NAME) values (163,'상추자항근처민박');
Insert into TAG (TAG_NO,TAG_NAME) values (164,'상추자도숙소');
Insert into TAG (TAG_NO,TAG_NAME) values (165,'추자숙소');
Insert into TAG (TAG_NO,TAG_NAME) values (166,'횟집');
Insert into TAG (TAG_NO,TAG_NAME) values (167,'활어회');
Insert into TAG (TAG_NO,TAG_NAME) values (168,'소라');
Insert into TAG (TAG_NO,TAG_NAME) values (169,'문어숙회');
Insert into TAG (TAG_NO,TAG_NAME) values (170,'문어');
Insert into TAG (TAG_NO,TAG_NAME) values (171,'회');
Insert into TAG (TAG_NO,TAG_NAME) values (172,'양꼬치');
Insert into TAG (TAG_NO,TAG_NAME) values (173,'중식');
Insert into TAG (TAG_NO,TAG_NAME) values (174,'중국인셰프');
Insert into TAG (TAG_NO,TAG_NAME) values (175,'마파두부');
Insert into TAG (TAG_NO,TAG_NAME) values (176,'마라탕');
Insert into TAG (TAG_NO,TAG_NAME) values (177,'정원');
Insert into TAG (TAG_NO,TAG_NAME) values (178,'찜질방');
Insert into TAG (TAG_NO,TAG_NAME) values (179,'정식');
Insert into TAG (TAG_NO,TAG_NAME) values (180,'고등어조림');
Insert into TAG (TAG_NO,TAG_NAME) values (181,'안심채움');
Insert into TAG (TAG_NO,TAG_NAME) values (182,'맛있는제주만들기');
Insert into TAG (TAG_NO,TAG_NAME) values (183,'유기농영귤차');
Insert into TAG (TAG_NO,TAG_NAME) values (184,'에소밀크티');
Insert into TAG (TAG_NO,TAG_NAME) values (185,'봉자주스');
Insert into TAG (TAG_NO,TAG_NAME) values (186,'체험관광');
Insert into TAG (TAG_NO,TAG_NAME) values (187,'액티비티');
Insert into TAG (TAG_NO,TAG_NAME) values (188,'축제');
Insert into TAG (TAG_NO,TAG_NAME) values (189,'행사');
Insert into TAG (TAG_NO,TAG_NAME) values (190,'갯벌체험학습장');
Insert into TAG (TAG_NO,TAG_NAME) values (191,'수영장');
Insert into TAG (TAG_NO,TAG_NAME) values (192,'치아바타');
Insert into TAG (TAG_NO,TAG_NAME) values (193,'자연경관');
Insert into TAG (TAG_NO,TAG_NAME) values (194,'해변');
Insert into TAG (TAG_NO,TAG_NAME) values (195,'수상레저');
Insert into TAG (TAG_NO,TAG_NAME) values (196,'올레길');
Insert into TAG (TAG_NO,TAG_NAME) values (197,'낚시');
Insert into TAG (TAG_NO,TAG_NAME) values (198,'분식');
Insert into TAG (TAG_NO,TAG_NAME) values (199,'현미김밥');
Insert into TAG (TAG_NO,TAG_NAME) values (200,'매운멸치김밥');
Insert into TAG (TAG_NO,TAG_NAME) values (201,'떡볶이');
Insert into TAG (TAG_NO,TAG_NAME) values (202,'돈까스');
Insert into TAG (TAG_NO,TAG_NAME) values (203,'콩국수');
Insert into TAG (TAG_NO,TAG_NAME) values (204,'김밥');
Insert into TAG (TAG_NO,TAG_NAME) values (205,'꽃');
Insert into TAG (TAG_NO,TAG_NAME) values (206,'꽃집');
Insert into TAG (TAG_NO,TAG_NAME) values (207,'관광기념품');
Insert into TAG (TAG_NO,TAG_NAME) values (208,'상점/상가');
Insert into TAG (TAG_NO,TAG_NAME) values (209,'안전여행스탬프');
Insert into TAG (TAG_NO,TAG_NAME) values (210,'양식');
Insert into TAG (TAG_NO,TAG_NAME) values (211,'식당');
Insert into TAG (TAG_NO,TAG_NAME) values (212,'맛집');
Insert into TAG (TAG_NO,TAG_NAME) values (213,'일식');
Insert into TAG (TAG_NO,TAG_NAME) values (214,'신라호텔');
Insert into TAG (TAG_NO,TAG_NAME) values (215,'럭셔리트래블인제주');
Insert into TAG (TAG_NO,TAG_NAME) values (216,'호텔');
Insert into TAG (TAG_NO,TAG_NAME) values (217,'엘리베이터');
Insert into TAG (TAG_NO,TAG_NAME) values (218,'물품보관서비스');
Insert into TAG (TAG_NO,TAG_NAME) values (219,'해안도로');
Insert into TAG (TAG_NO,TAG_NAME) values (220,'공항');
Insert into TAG (TAG_NO,TAG_NAME) values (221,'관광호텔');
Insert into TAG (TAG_NO,TAG_NAME) values (222,'휴식');
Insert into TAG (TAG_NO,TAG_NAME) values (223,'해수욕장');
Insert into TAG (TAG_NO,TAG_NAME) values (224,'반려동물보호소');
Insert into TAG (TAG_NO,TAG_NAME) values (225,'골프');
Insert into TAG (TAG_NO,TAG_NAME) values (226,'체험');
Insert into TAG (TAG_NO,TAG_NAME) values (227,'수제디저트');
Insert into TAG (TAG_NO,TAG_NAME) values (228,'브런치');
Insert into TAG (TAG_NO,TAG_NAME) values (229,'케이크');
Insert into TAG (TAG_NO,TAG_NAME) values (230,'햄버거스테이크');
Insert into TAG (TAG_NO,TAG_NAME) values (231,'햄버거');
Insert into TAG (TAG_NO,TAG_NAME) values (232,'치즈버거');
Insert into TAG (TAG_NO,TAG_NAME) values (233,'감자튀김');
Insert into TAG (TAG_NO,TAG_NAME) values (234,'추자민박');
Insert into TAG (TAG_NO,TAG_NAME) values (235,'추자도');
Insert into TAG (TAG_NO,TAG_NAME) values (236,'민박');
Insert into TAG (TAG_NO,TAG_NAME) values (237,'농어촌민박');
Insert into TAG (TAG_NO,TAG_NAME) values (238,'조식');
Insert into TAG (TAG_NO,TAG_NAME) values (239,'빵');
Insert into TAG (TAG_NO,TAG_NAME) values (240,'음료');
Insert into TAG (TAG_NO,TAG_NAME) values (241,'아이스티');
Insert into TAG (TAG_NO,TAG_NAME) values (242,'수제청');
Insert into TAG (TAG_NO,TAG_NAME) values (243,'수제청음료');
Insert into TAG (TAG_NO,TAG_NAME) values (244,'에이드');
Insert into TAG (TAG_NO,TAG_NAME) values (245,'요거트');
Insert into TAG (TAG_NO,TAG_NAME) values (246,'주차장');
Insert into TAG (TAG_NO,TAG_NAME) values (247,'주방기구');
Insert into TAG (TAG_NO,TAG_NAME) values (248,'힐링쉼터');
Insert into TAG (TAG_NO,TAG_NAME) values (249,'숙소');
Insert into TAG (TAG_NO,TAG_NAME) values (250,'휴양펜션');
Insert into TAG (TAG_NO,TAG_NAME) values (251,'펜션');
Insert into TAG (TAG_NO,TAG_NAME) values (252,'캠핑');
Insert into TAG (TAG_NO,TAG_NAME) values (253,'독채');
Insert into TAG (TAG_NO,TAG_NAME) values (254,'온돌방');
Insert into TAG (TAG_NO,TAG_NAME) values (255,'바비큐');
Insert into TAG (TAG_NO,TAG_NAME) values (256,'단체여행객');
Insert into TAG (TAG_NO,TAG_NAME) values (257,'공공와이파이존');
Insert into TAG (TAG_NO,TAG_NAME) values (258,'언택트');
Insert into TAG (TAG_NO,TAG_NAME) values (259,'라떼');
Insert into TAG (TAG_NO,TAG_NAME) values (260,'토스트');
Insert into TAG (TAG_NO,TAG_NAME) values (261,'바닐라라떼');
Insert into TAG (TAG_NO,TAG_NAME) values (262,'녹차라떼');
Insert into TAG (TAG_NO,TAG_NAME) values (263,'쿠바');
Insert into TAG (TAG_NO,TAG_NAME) values (264,'아메리카노');
Insert into TAG (TAG_NO,TAG_NAME) values (265,'와인뱅쇼');
Insert into TAG (TAG_NO,TAG_NAME) values (266,'샌드위치');
Insert into TAG (TAG_NO,TAG_NAME) values (267,'수제맥주');
Insert into TAG (TAG_NO,TAG_NAME) values (268,'커피');
Insert into TAG (TAG_NO,TAG_NAME) values (269,'치즈타르트');
Insert into TAG (TAG_NO,TAG_NAME) values (270,'브라우니');
Insert into TAG (TAG_NO,TAG_NAME) values (271,'디저트');
REM INSERTING into TAG_DETAIL
SET DEFINE OFF;
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,216);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,217);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,218);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,219);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,220);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (21,221);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,224);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,225);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (22,226);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,227);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,228);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,229);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,230);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,231);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,232);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (23,233);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (24,234);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (24,235);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (24,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (24,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (24,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (24,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (24,238);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,239);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,268);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,240);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,13);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,264);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,241);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,242);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,243);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,244);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,245);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (25,271);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (26,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (26,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (26,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (26,247);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (26,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (26,248);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,252);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (27,258);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,268);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,271);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,259);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,260);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,264);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,266);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,261);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,13);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (28,262);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (29,263);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (29,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (29,264);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (29,265);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (29,266);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (29,267);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (30,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (30,268);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (30,269);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (30,270);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (30,271);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (30,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (31,195);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,196);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,197);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (32,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,198);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,199);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,200);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,201);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,202);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,203);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,204);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (33,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (34,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (34,215);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,219);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (35,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (36,205);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (36,206);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (36,3);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (36,207);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (36,208);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (37,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (37,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (37,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (37,89);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (37,216);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (37,209);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (38,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (38,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (38,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (38,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (38,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (38,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (38,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (39,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (39,212);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (39,210);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (39,215);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (40,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (40,212);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (40,213);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (40,214);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (40,215);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (1,172);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (1,173);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (1,174);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (1,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (1,175);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (1,176);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (2,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (2,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (2,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (2,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (2,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (2,177);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (2,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,219);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,226);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (3,178);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (4,179);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (4,180);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (4,181);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (4,182);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (4,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (4,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (5,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (5,240);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (5,183);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (5,184);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (5,185);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (5,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (6,186);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (6,187);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (6,188);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (6,189);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,193);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,194);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,224);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,190);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,195);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (7,226);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (8,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (8,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (8,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (8,191);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (8,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (9,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (9,266);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (9,192);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (9,201);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (9,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (9,228);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (9,271);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,193);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,194);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (10,219);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,106);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,107);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,108);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,228);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,120);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,127);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,109);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,110);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (11,264);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,111);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,112);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,113);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,114);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,115);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,116);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,117);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (12,118);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,119);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,120);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,121);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,122);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,123);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,124);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,230);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,125);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,126);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,127);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,128);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (13,129);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,130);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,180);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,131);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,132);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,133);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,134);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,135);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,136);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,137);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,138);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,139);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,140);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,141);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,142);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,143);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,144);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,145);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,146);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,171);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,147);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,148);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,149);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,169);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,150);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,151);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (14,152);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (15,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (15,153);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (15,268);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (15,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (15,154);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (15,155);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (15,156);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,191);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,194);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,157);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (16,195);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,247);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,238);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (17,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,216);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,158);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,159);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,160);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,161);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,221);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (18,209);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,234);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,162);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,163);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,164);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,165);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,235);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (19,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (20,166);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (20,167);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (20,168);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (20,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (20,169);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (20,170);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (20,171);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (41,87);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (41,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (41,88);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (41,247);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (41,193);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (41,194);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (41,238);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (42,216);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (42,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (42,221);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (42,217);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (42,218);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (42,89);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (43,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (43,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (43,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (43,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (43,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (43,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (43,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (44,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (44,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (44,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (44,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (44,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (44,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (45,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (45,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (45,238);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (45,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (45,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (45,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (46,90);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (46,91);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (46,92);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (46,93);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (46,94);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (46,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (46,95);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (47,96);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (47,39);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (47,97);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (47,98);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (47,99);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (47,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (47,100);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,101);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,177);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,102);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (48,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (49,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (49,215);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,268);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,103);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,244);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,154);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,264);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,104);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (50,105);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (51,205);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (51,206);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (51,3);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (51,207);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (51,208);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (52,1);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (52,3);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (52,207);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (52,208);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,65);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,66);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,67);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,68);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,235);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,5);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,69);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,70);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,71);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,72);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (53,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,73);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,74);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,75);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,194);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (54,76);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (55,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (55,215);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,77);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,78);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,79);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,235);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (56,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (57,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (57,215);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (58,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (58,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (58,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (58,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (58,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (58,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,80);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,81);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,248);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (59,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,82);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,83);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,113);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,94);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,84);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,85);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (60,86);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,44);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,45);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,235);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,46);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (61,193);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (62,47);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (62,48);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (62,113);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (62,49);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (62,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (62,50);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (62,84);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (63,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (63,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (63,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (63,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (63,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (63,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (63,193);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,191);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,219);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (64,51);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,52);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,69);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,94);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,53);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,71);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,70);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,5);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,54);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,55);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (65,56);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (66,57);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (66,58);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (66,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (66,268);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (66,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (66,112);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (66,115);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (67,213);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (67,59);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (67,60);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (67,202);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (67,61);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (67,62);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (67,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (68,3);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (68,63);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (68,207);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (68,208);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,216);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,101);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,220);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,161);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,194);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,193);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (69,80);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,216);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,64);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,220);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,160);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,161);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (70,221);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,24);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (71,51);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,25);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,26);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,105);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,264);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,244);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,13);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (72,266);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (73,27);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (73,28);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (73,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (73,29);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (73,30);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (73,203);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,219);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,51);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,31);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (74,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (75,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (75,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (75,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (75,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (75,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (75,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (75,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,222);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,101);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,88);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,32);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,177);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,159);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (76,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (77,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (77,33);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (77,34);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (77,271);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (77,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (77,239);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (77,266);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,112);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,35);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,94);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,71);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,70);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,72);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,36);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,115);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,53);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,55);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,54);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (78,37);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (79,38);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (79,116);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (79,39);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (79,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (79,40);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (79,41);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,42);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,254);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,46);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,223);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,253);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (80,43);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (81,1);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (81,2);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (81,63);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (81,3);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (81,207);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (81,208);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,138);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,134);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,4);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,5);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,7);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,8);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,133);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,180);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,171);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,140);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,135);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,137);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,9);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (82,10);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,11);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,240);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,268);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,12);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,264);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,13);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,14);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,15);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,271);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,244);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,156);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (83,16);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (84,17);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (84,112);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (84,18);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (84,6);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (84,55);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (84,19);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (85,101);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (85,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (85,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (85,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (85,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (85,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (85,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,21);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,257);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,255);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,178);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (86,102);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (87,211);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (87,212);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (87,231);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (87,215);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,251);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,250);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,246);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,256);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,193);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,196);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (88,20);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,22);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,23);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,79);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,235);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,249);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,236);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,237);
Insert into TAG_DETAIL (PLACE_NO,TAG_NO) values (89,257);
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (USER_NO,USER_ID,USER_PWD,USER_NICKNAME,USER_PHONENUMBER,USER_EMAIL,USER_AUTHORITY,USER_ENT_DATE,USER_LATEST_CONNECT_DATE,USER_PWD_CHANGE_DATE,USER_PWD_UPTO_DATE,USER_CON_FAILED_NUM,USER_DEL_STAT,MATE_JOIN) values (3,'user1234','$2a$10$JM7wrWralla.v0EKcj44OO9hnkc6n8CIqFhR0Q9KDIGCDjAzAZMEK','user1234','123123','123@123','일반유저',to_date('22/12/19','RR/MM/DD'),null,to_date('22/12/19','RR/MM/DD'),to_date('23/03/19','RR/MM/DD'),0,'N','N');
Insert into USERS (USER_NO,USER_ID,USER_PWD,USER_NICKNAME,USER_PHONENUMBER,USER_EMAIL,USER_AUTHORITY,USER_ENT_DATE,USER_LATEST_CONNECT_DATE,USER_PWD_CHANGE_DATE,USER_PWD_UPTO_DATE,USER_CON_FAILED_NUM,USER_DEL_STAT,MATE_JOIN) values (4,'chy','$2a$10$sJkiU79n.Y8eFfAEyYL6kup0xLucAaAWJV40s4qrkOeTumNCS0pKS','chy','123123','123@123','일반유저',to_date('22/12/19','RR/MM/DD'),null,to_date('22/12/19','RR/MM/DD'),to_date('23/03/19','RR/MM/DD'),0,'N','N');
Insert into USERS (USER_NO,USER_ID,USER_PWD,USER_NICKNAME,USER_PHONENUMBER,USER_EMAIL,USER_AUTHORITY,USER_ENT_DATE,USER_LATEST_CONNECT_DATE,USER_PWD_CHANGE_DATE,USER_PWD_UPTO_DATE,USER_CON_FAILED_NUM,USER_DEL_STAT,MATE_JOIN) values (5,'user01','$2a$10$8uqncTDyKAPyDP.3B3lr8O7jiqko5yIOxOWzaKuZDKv7GSaLWVnla','일반유저','010-1111-1111','123456@naver.com','일반유저',to_date('22/12/19','RR/MM/DD'),null,to_date('22/12/19','RR/MM/DD'),to_date('23/03/19','RR/MM/DD'),0,'N',null);
Insert into USERS (USER_NO,USER_ID,USER_PWD,USER_NICKNAME,USER_PHONENUMBER,USER_EMAIL,USER_AUTHORITY,USER_ENT_DATE,USER_LATEST_CONNECT_DATE,USER_PWD_CHANGE_DATE,USER_PWD_UPTO_DATE,USER_CON_FAILED_NUM,USER_DEL_STAT,MATE_JOIN) values (1,'admin','$2a$10$1zi9YuaZY8k8EIGMe/n60OiTvSrhh4MT5ic8NHlE.nmD4uHJZnjue','admin123','123123','123@123','관리자',to_date('22/12/19','RR/MM/DD'),null,to_date('22/12/19','RR/MM/DD'),to_date('23/03/19','RR/MM/DD'),0,'N','N');
Insert into USERS (USER_NO,USER_ID,USER_PWD,USER_NICKNAME,USER_PHONENUMBER,USER_EMAIL,USER_AUTHORITY,USER_ENT_DATE,USER_LATEST_CONNECT_DATE,USER_PWD_CHANGE_DATE,USER_PWD_UPTO_DATE,USER_CON_FAILED_NUM,USER_DEL_STAT,MATE_JOIN) values (2,'test1234','$2a$10$SXEr6vwOf0la.IffD5gE8.A1O.ILfyNeSKb4blR9M1bptPzdbwn9S','test1234','123123','123@123','일반유저',to_date('22/12/19','RR/MM/DD'),null,to_date('22/12/19','RR/MM/DD'),to_date('23/03/19','RR/MM/DD'),0,'N','N');
--------------------------------------------------------
--  DDL for Index SYS_C008104
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008104" ON "MATCHING_MAP" ("MARKER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008120
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008120" ON "MATE_LIST" ("LIST_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008104
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008104" ON "MATCHING_MAP" ("MARKER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008120
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008120" ON "MATE_LIST" ("LIST_NO") 
  ;
--------------------------------------------------------
--  DDL for Trigger CONNECT_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CONNECT_DETAIL_TRG" 
BEFORE INSERT ON CONNECT_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "CONNECT_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JEJU_PLACE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "JEJU_PLACE_TRG" 
BEFORE INSERT ON "JEJU_PLACE"
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "JEJU_PLACE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MATCHING_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MATCHING_DETAIL_TRG" 
BEFORE INSERT ON MATCHING_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MAT_RESULT IS NULL THEN
      SELECT MATCHING_DETAIL_SEQ.NEXTVAL INTO :NEW.MAT_RESULT FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "MATCHING_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MATCHING_IMAGE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MATCHING_IMAGE_TRG" 
BEFORE INSERT ON MATCHING_IMAGE
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.M_IMAGE_NO IS NULL THEN
      SELECT MATCHING_IMAGE_SEQ.NEXTVAL INTO :NEW.M_IMAGE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "MATCHING_IMAGE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MATCHING_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MATCHING_TRG" 
BEFORE INSERT ON MATCHING
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MAT_NO IS NULL THEN
      SELECT MATCHING_SEQ.NEXTVAL INTO :NEW.MAT_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "MATCHING_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_BOARD_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "NOTICE_BOARD_TRG" 
BEFORE INSERT ON NOTICE_BOARD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.NOBOARD_TITLE IS NULL THEN
      SELECT SEQ_BOARD_NOTICE.NEXTVAL INTO :NEW.NOBOARD_TITLE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "NOTICE_BOARD_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "NOTICE_TRG" 
BEFORE INSERT ON NOTICE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.NOTICE_ADMIN IS NULL THEN
      SELECT NOTICE_SEQ.NEXTVAL INTO :NEW.NOTICE_ADMIN FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "NOTICE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLACE_IMAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PLACE_IMAGES_TRG" 
BEFORE INSERT ON PLACE_IMAGES
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.P_IMAGE_NO IS NULL THEN
      SELECT PLACE_IMAGES_SEQ.NEXTVAL INTO :NEW.P_IMAGE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "PLACE_IMAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLACE_RECOMMAND_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PLACE_RECOMMAND_DETAIL_TRG" 
BEFORE INSERT ON PLACE_RECOMMAND_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PLACE_NO IS NULL THEN
      SELECT PLACE_RECOMMAND_DETAIL_SEQ.NEXTVAL INTO :NEW.PLACE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "PLACE_RECOMMAND_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLACE_REPLY_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PLACE_REPLY_TRG" 
BEFORE INSERT ON PLACE_REPLY
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "PLACE_REPLY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVIEW_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "REVIEW_TRG" 
BEFORE INSERT ON REVIEW
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "REVIEW_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REV_IMAGE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "REV_IMAGE_TRG" 
BEFORE INSERT ON REV_IMAGE
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.R_IMAGE_NO IS NULL THEN
      SELECT REV_IMAGE_SEQ.NEXTVAL INTO :NEW.R_IMAGE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "REV_IMAGE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REV_REPLY_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "REV_REPLY_TRG" 
BEFORE INSERT ON REV_REPLY
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.R_REP_NO IS NULL THEN
      SELECT REV_REPLY_SEQ.NEXTVAL INTO :NEW.R_REP_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "REV_REPLY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TAG_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TAG_DETAIL_TRG" 
BEFORE INSERT ON TAG_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.TAG_NO IS NULL THEN
      SELECT TAG_DETAIL_SEQ.NEXTVAL INTO :NEW.TAG_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TAG_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TAG_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TAG_TRG" 
BEFORE INSERT ON TAG
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TAG_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TAG_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TAG_TRG1" 
BEFORE INSERT ON TAG
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.TAG_NO IS NULL THEN
      SELECT TAG_SEQ1.NEXTVAL INTO :NEW.TAG_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TAG_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRAVEL_PLACE_IMAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRAVEL_PLACE_IMAGES_TRG" 
BEFORE INSERT ON "PLACE_IMAGES"
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TRAVEL_PLACE_IMAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "USERS_TRG" 
BEFORE INSERT ON USERS
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CONNECT_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CONNECT_DETAIL_TRG" 
BEFORE INSERT ON CONNECT_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "CONNECT_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JEJU_PLACE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "JEJU_PLACE_TRG" 
BEFORE INSERT ON "JEJU_PLACE"
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "JEJU_PLACE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MATCHING_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MATCHING_TRG" 
BEFORE INSERT ON MATCHING
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MAT_NO IS NULL THEN
      SELECT MATCHING_SEQ.NEXTVAL INTO :NEW.MAT_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "MATCHING_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MATCHING_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MATCHING_DETAIL_TRG" 
BEFORE INSERT ON MATCHING_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MAT_RESULT IS NULL THEN
      SELECT MATCHING_DETAIL_SEQ.NEXTVAL INTO :NEW.MAT_RESULT FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "MATCHING_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MATCHING_IMAGE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MATCHING_IMAGE_TRG" 
BEFORE INSERT ON MATCHING_IMAGE
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.M_IMAGE_NO IS NULL THEN
      SELECT MATCHING_IMAGE_SEQ.NEXTVAL INTO :NEW.M_IMAGE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "MATCHING_IMAGE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "NOTICE_TRG" 
BEFORE INSERT ON NOTICE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.NOTICE_ADMIN IS NULL THEN
      SELECT NOTICE_SEQ.NEXTVAL INTO :NEW.NOTICE_ADMIN FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "NOTICE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NOTICE_BOARD_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "NOTICE_BOARD_TRG" 
BEFORE INSERT ON NOTICE_BOARD 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.NOBOARD_TITLE IS NULL THEN
      SELECT SEQ_BOARD_NOTICE.NEXTVAL INTO :NEW.NOBOARD_TITLE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "NOTICE_BOARD_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLACE_IMAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PLACE_IMAGES_TRG" 
BEFORE INSERT ON PLACE_IMAGES
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.P_IMAGE_NO IS NULL THEN
      SELECT PLACE_IMAGES_SEQ.NEXTVAL INTO :NEW.P_IMAGE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "PLACE_IMAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRAVEL_PLACE_IMAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRAVEL_PLACE_IMAGES_TRG" 
BEFORE INSERT ON "PLACE_IMAGES"
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TRAVEL_PLACE_IMAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLACE_RECOMMAND_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PLACE_RECOMMAND_DETAIL_TRG" 
BEFORE INSERT ON PLACE_RECOMMAND_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PLACE_NO IS NULL THEN
      SELECT PLACE_RECOMMAND_DETAIL_SEQ.NEXTVAL INTO :NEW.PLACE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "PLACE_RECOMMAND_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLACE_REPLY_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PLACE_REPLY_TRG" 
BEFORE INSERT ON PLACE_REPLY
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "PLACE_REPLY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVIEW_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "REVIEW_TRG" 
BEFORE INSERT ON REVIEW
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "REVIEW_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REV_IMAGE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "REV_IMAGE_TRG" 
BEFORE INSERT ON REV_IMAGE
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.R_IMAGE_NO IS NULL THEN
      SELECT REV_IMAGE_SEQ.NEXTVAL INTO :NEW.R_IMAGE_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "REV_IMAGE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REV_REPLY_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "REV_REPLY_TRG" 
BEFORE INSERT ON REV_REPLY
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.R_REP_NO IS NULL THEN
      SELECT REV_REPLY_SEQ.NEXTVAL INTO :NEW.R_REP_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "REV_REPLY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TAG_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TAG_TRG" 
BEFORE INSERT ON TAG
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TAG_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TAG_TRG1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TAG_TRG1" 
BEFORE INSERT ON TAG
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.TAG_NO IS NULL THEN
      SELECT TAG_SEQ1.NEXTVAL INTO :NEW.TAG_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TAG_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TAG_DETAIL_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TAG_DETAIL_TRG" 
BEFORE INSERT ON TAG_DETAIL
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.TAG_NO IS NULL THEN
      SELECT TAG_DETAIL_SEQ.NEXTVAL INTO :NEW.TAG_NO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;


/
ALTER TRIGGER "TAG_DETAIL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "USERS_TRG" 
BEFORE INSERT ON USERS
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "USERS_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table CONNECT_DETAIL
--------------------------------------------------------

  ALTER TABLE "CONNECT_DETAIL" MODIFY ("CON_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JEJU_PLACE
--------------------------------------------------------

  ALTER TABLE "JEJU_PLACE" MODIFY ("PLACE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MAIN
--------------------------------------------------------

  ALTER TABLE "MAIN" MODIFY ("MAIN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MATCHING
--------------------------------------------------------

  ALTER TABLE "MATCHING" MODIFY ("MAT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MATCHING_IMAGE
--------------------------------------------------------

  ALTER TABLE "MATCHING_IMAGE" MODIFY ("M_IMAGE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MATCHING_MAP
--------------------------------------------------------

  ALTER TABLE "MATCHING_MAP" MODIFY ("MAP_LATITUDE" NOT NULL ENABLE);
  ALTER TABLE "MATCHING_MAP" MODIFY ("MAP_LONGITUDE" NOT NULL ENABLE);
  ALTER TABLE "MATCHING_MAP" ADD PRIMARY KEY ("MARKER_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MATE_LIST
--------------------------------------------------------

  ALTER TABLE "MATE_LIST" ADD PRIMARY KEY ("LIST_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("NOTICE_ADMIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLACE_IMAGES
--------------------------------------------------------

  ALTER TABLE "PLACE_IMAGES" MODIFY ("P_IMAGE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLACE_REPLY
--------------------------------------------------------

  ALTER TABLE "PLACE_REPLY" MODIFY ("P_REP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("REV_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REV_DEL_STAT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REV_IMAGE
--------------------------------------------------------

  ALTER TABLE "REV_IMAGE" MODIFY ("R_IMAGE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REV_REPLY
--------------------------------------------------------

  ALTER TABLE "REV_REPLY" MODIFY ("R_REP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAG
--------------------------------------------------------

  ALTER TABLE "TAG" MODIFY ("TAG_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("USER_DEL_STAT" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MATE_LIST
--------------------------------------------------------

  ALTER TABLE "MATE_LIST" ADD CONSTRAINT "FK_MATE_PLACE" FOREIGN KEY ("MATE_PLACE")
	  REFERENCES "MATCHING_MAP" ("MARKER_NAME") ENABLE;
