<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="my.db.BoardDAO"%>
<%@page import="my.db.BoardVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="mainboard" class="my.db.BoardVO">
	<jsp:setProperty name="mainboard" property="*"/>
</jsp:useBean>

<%
	BoardDAO dao = BoardDAO.getInstance();
	System.out.println("날짜 값 들어오나"+mainboard.getMain_writeday());
	System.out.println("항목 값 들어오나"+mainboard.getMain_account());
	
	dao.insert(mainboard);
	
	response.sendRedirect("/admin/list.jsp");
%>
</body>
</html>