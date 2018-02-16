<%@page import="my.db.BoardDAO"%>
<%@page import="my.db.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
tr{
	text-align: center;
	border: solid 1px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="leftcolumn">
<div class="card">
<form action="/webProject/haru_write_writeForm2.jsp" method="post">
	<table>
		<tr>
			<td>날짜</td>
			<td>항목</td>
			<td>계정</td>
			<td>내용</td>
			<td>금액</td>
		</tr>
		<tr>
			<td><input type="text" value="<%=request.getParameter("date")%>"></td>
			<td><input type="text" value="<%=request.getParameter("option")%>"></td>
			<td><input type="text" value="<%=request.getParameter("account")%>"></td>
			<td><input type="text" value="<%=request.getParameter("content")%>"></td>
			<td><input type="text" value="<%=request.getParameter("price")%>"></td>
			<td><input type="submit" value="저장"></td>
		</tr>
		
	</table>
	</form>
</div>
</div>
</body>
</html>