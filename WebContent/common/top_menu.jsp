<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%
	String id = (String) session.getAttribute("id");
	String logJsp = "";
	if (id == null){ /*�α��� ��Ͼ�����*/
		logJsp = "../login/login.jsp"; }
	else if(id.equals("admin")){ /*������ �α��ν�*/
		logJsp = "../login/welcome_ad.jsp";	}
	else	/*�Ϲݻ���� �α��ν�*/
		logJsp = "../login/welcome.jsp";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Ϸ羲��</title>
<style type="text/css">
.header h2{
	height: 70px;
}
.login input{
	height: 50px;
}
a:link{ color: black; text-decoration: none;}
a:visited { color: black; text-decoration: none;}

}

</style>
</head>
<body>
<center>
	<!-- <div class="header"> -->
	 <!--  <h2><a href="/webProject/main/main.jsp">�Ϸ�, ����</h2></a> -->
	<div>
	  <img alt="top" src="/webProject/images/main_top.jpg" style="height: 260px; width: 100%;">
	  <jsp:include page="<%=logJsp %>"></jsp:include>
	  
	</div>
</center>
</body>
</html>