<%@ page import="java.util.ArrayList, com.kh.notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer {
	height: 500px;
}

.list-area {
	border: 1px solid white;
	text-align: center;
}

.list-area>tbody>tr:hover {
	background: gray;
	cursor: pointer;
}
</style>
</head>
<body>

	<%@ include file="/views/common/menubar.jsp"%>

	<div class="outer">
		<br>
		<h2 align="center">공지사항</h2>
		<br>

		<!-- 
			admin계정을 관리자 계정이라고 가정. 공지사항은 관리자만 관리하기에, 스크립틀릿을 활용하여
			관리자인 경우에만 버튼이 노출되도록 조건을 걸어줄 것
		-->
		<% if(loginUser != null && loginUser.getUserId().equals("admin")) { %>

		<div align="right" style="width: 850px;">
			<a href="<%= contextPath %>/insert.no" class="btn btn-secondary">글작성</a>
		</div>

		<% } %>

		<table class="list-area" align="center">
			<thead>
				<tr>
					<th>글번호</th>
					<th width="400">글제목</th>
					<th width="100">작성자</th>
					<th>조회수</th>
					<th width="100">작성일</th>
				</tr>
			</thead>
			<tbody>
				<%if(list.isEmpty()) { %>
				<!-- 리스트가 비어있을 경우 -->
				<tr>
					<td colspan="5">존재하는 공지사항이 없습니다.</td>
				</tr>
				<% } else { %>
				<% for( Notice n : list )  { %>
				<tr>
					<td><%= n.getNoticeNo() %></td>
					<td><%= n.getNoticeTitle() %></td>
					<td><%= n.getNoticeWriter() %></td>
					<td><%= n.getCount() %></td>
					<td><%= n.getCreateDate() %></td>
				</tr>
				<% } %>
				<% } %>
			</tbody>
		</table>

	</div>
	
	<script>
		$(function() {
			$(".list-area>tbody>tr").click(function() {
				// console.log("클릭됨");
				// 클릭 시 해당 공지사항의 공지사항번호(기본키값)도 함께 넘겨줘야함
				// 해당 tr요소의 자손중 첫번째 td태그 내부의 내용이 필요 ==> 공지사항 번호
				// console.log($(this).children().eq(0).text());
				const nno = $(this).children().eq(0).text();
				
				// 요청할 url경로(detail.no)?키=벨류&키=벨류...
				// ? 뒤의 내용들을 쿼리스트링이라고 부름 =>직접 만들어서 넘겨야함
						
				// /jsp2/detail.no?nno=글번호
				location.href="<%= contextPath %>/detail.no?nno="+nno;
			})	
		})
	</script>

</body>
</html>