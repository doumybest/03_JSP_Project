<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.notice.model.vo.Notice"%>
<%
	Notice n = (Notice)request.getAttribute("n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer {
		height:550px;
	}
	#detail-area {border:1px solid white;}
</style>
</head>
<body>

	<%@ include file="/views/common/menubar.jsp" %>
	
	<div class="outer">
		<br>
		<h2 align="center">공지사항 상세보기</h2>
		<br>
		
		<table id="detail-area" align="center" border="1">
			<tr>
				<th width="70">제목</th>
				<!-- <td width="350" colspan="3">공지사항 제목입니다.</td> -->
				<td width="350" colspan="3"><%= n.getNoticeTitle() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<!-- <th>admin</th> -->
				<td><%= n.getNoticeWriter() %></td>
				<th>작성일</th>
				<!-- <th>2023-06-29</th> -->
				<td><%= n.getCreateDate() %></td>
			</tr>
			<tr>
				<th>내용</th>
				<th colspan="3">
					<!-- <p style="height:150px;">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p> -->
					<p style="height:150px;"><%= n.getNoticeContent() %></p>
				</th>
			</tr>		
		</table>
		<br><br>
		
		<div align="center">
			<a href="<%=contextPath %>/list.no" class="btn btn-secondary btn-sm">목록으로</a>
			
			<% if(loginUser != null && loginUser.getUserId().equals(n.getNoticeWriter())) { %>
					<a href="<%= contextPath %>/update.no?nno=<%= n.getNoticeNo() %>" class="btn btn-warning btn-small">수정하기</a>
					<a href="<%= contextPath %>/delete.no?nno=<%= n.getNoticeNo() %>" class="btn btn-danger btn-small">삭제하기</a>
			<% } %>			
			
		</div>
		
	</div>

</body>
</html>