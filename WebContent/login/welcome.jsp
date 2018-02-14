<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.top_menu{
	text-align: right;
	margin-right: 15px;
	margin-top: 40px;
	font-size: 20px;
}
input{
	height: 30px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="../login/logout.jsp">
<div class="top_menu">
	<%=session.getAttribute("name") %>님 환영합니다.
	<input type="button" value="마이홈" > 
	<input type="submit" value="로그아웃" > 
	
	
</div>
</form>
</body>
</html>