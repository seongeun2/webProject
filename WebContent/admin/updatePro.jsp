<%@page import="member.memDAO"%>
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
	memDAO dao = memDAO.getInstance();
	int pwdcheck = dao.updateMember(member);
%>
<%	if(pwdcheck==1){ %>
    <META http-equiv=refresh content="0;url=list.jsp">


<%	}else{ %>


<script type="text/javascript">
alert("비밀번호가 맞지 않습니다.");
history.go(-1);
</script>
<% } %>
</body>
</html>