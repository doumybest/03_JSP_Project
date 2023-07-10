<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  
		* 회원 서비스  |  C(Insert)  |  R(Select)  |  U(Update)  |  D(Delete)
		=================================================================================
		   로그인 	|			  |       O     |             |
		   회원가입   |     O       |        		|			  |
	   [ID 중복체크]	|			  |	 	O		| 			  |
	      마이페이지   |             |     O       |             |
	      정보 변경	|			  |             |      O      |
	      회원 탈퇴	|			  |				|	   O	  |			O
	      
       * 공지사항 서비스 - 공지사항 리스트 조회(R)/공지사항 상세조회(R)/공지사항 작성(C)/수정(U)/삭제(U/D)
       
       * 일반게시판 서비스 - 게시판 리스트 조회(R) - 페이징처리(R)/게시판 상세조회(R)/게시판 작성(C) - 첨부퍼알 1개 업로드
       					/ 게시판 수정(U)/삭제(U/D)/[댓글 리스트 조회(R)/댓글 작성(C)]
       					
	   * 사진 게시판 서비스 - 게시판 리스트 조회(R) - 섬네일/상세조회(R)/작성(C) - 다중 첨부파일 업로드 / 사진 미리 보기
	      
	-->
	<%@ include file="views/common/menubar.jsp" %>
	
</body>
</html>