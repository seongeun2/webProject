<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="my.db.BoardDAO"%>
<%@page import="my.db.BoardVO"%>
<%request.setCharacterEncoding("euc-kr"); %>
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
String id=request.getParameter("m_id");
%>
<%
	BoardDAO dao = BoardDAO.getInstance();
	System.out.println("��¥ �� ������"+mainboard.getMain_writeday());
	System.out.println("�׸� �� ������"+mainboard.getMain_account());
	System.out.println("�̸� �� ������"+mainboard.getM_id());
	System.out.println("���̵� �� ������"+id);
	
	dao.insert(mainboard);
	%>

	<script>
      alert("����Ǿ����ϴ�.");
      history.back();
    </script>
	
	
	<!-- response.sendRedirect("/haru_write/writeForm.jsp"); -->

</body>
</html>