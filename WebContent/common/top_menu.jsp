<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = (String) session.getAttribute("id");
	String logJsp = "";
	if (id == null)
		logJsp = "../login/login.jsp";
	else
		logJsp = "../join/welcome.jsp";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>하루쓰임</title>
<style type="text/css">
.header h2{
	height: 70px;
}
.login input{
	height: 50px;
}
</style>
</head>
<body>
<center>
	<div class="header">
	  <h2>하루, 쓰임</h2>
	  <jsp:include page="<%=logJsp %>"></jsp:include>
	</div>
</center>
</body>
</html>