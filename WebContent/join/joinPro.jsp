<%@page import="member.memDAO"%>
<%@page import="member.memVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="member.memVO">
	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>

<%
	//페이지처리 xxxx
	/* String pageNum = request.getParameter("pageNum");
	if(pageNum==null || pageNum=="1"){
		pageNum = "1";
	} */
	
	memDAO dao = memDAO.getInstance();
	dao.insert(member);
	
	response.sendRedirect("/webProject/main/main.jsp");
%>
</body>
</html>