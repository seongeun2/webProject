<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link type="text/css" href="/webProject/css/main.css" rel="stylesheet" />
<html>
<head>
<style type="text/css">
.top_menu{
	text-align: right;
}
input{
	height: 50px;
}
</style>
<script type="text/javascript">
function logout() {
		location.href="/webProject/login/logout.jsp";
    }
function View2(){
        location.href="main.jsp?contentPage=/admin/list2.jsp";
}
function View(value) {
	if(value == "0"){ // HOME ��ư Ŭ���� ùȭ������ �̵�
		location.href="main.jsp";
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
</head>
<body>
<!-- <form action="../login/logout.jsp"> -->
<div class="top_menu" style="background-color: #ff9fa0; height: 40px; text-align: right;">
<!-- <div class="login" style="background-color: #ff9fa0; height: 50px;"> -->
 <div class="loing_btn" style="text-align: right;">
	<b style="font-size: 20px; margin-bottom: 10px;"><%=session.getAttribute("name") %>�� ȯ���մϴ�.</b>
	<button onclick="View('0');"><img src="/webProject/images/home.jpg" alt="Ȩ" style="float: left;"></button>
	<button onclick="View2();"><img src="/webProject/images/mem.jpg" alt="ȸ������" style="float: left;"></button>
	<button onclick="logout();"><img src="/webProject/images/logout.jpg" alt="�α׾ƿ�" ></button>
	</div>
</div>
</body>
</html>