<%@page import="member.memDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
int num = Integer.parseInt(request.getParameter("num")); //deleteForm ���� �Ѿ�� ������
String passwd = request.getParameter("m_pwd");
memDAO dao = memDAO.getInstance();
int passcheck = dao.deleteMember(num, passwd);
if(passcheck == 1){
	
%><meta http-equiv = "Refresh" content="0;url=list.jsp?">
<%}else{ %>
<script type="text/javascript">
alert("��й�ȣ�� ���� �ʽ��ϴ�");
history.go(-1);
</script><%} %> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>