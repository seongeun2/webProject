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
	height: 30px;
}
</style>
<script type="text/javascript">
function logout() {
		location.href="/webProject/login/logout.jsp";
    }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
</head>
<body>
<!-- <form action="../login/logout.jsp"> -->
<div class="top_menu" style="background-color: #ff9fa0; height: 50px; text-align: right;">
<!-- <div class="login" style="background-color: #ff9fa0; height: 50px;"> -->
 <div class="loing_btn" style="text-align: right;">
	<b style="font-size: 28px; margin-bottom: 10px;"><%=session.getAttribute("name") %>�� ȯ���մϴ�.</b>
	
	<button onclick="changeView('0');"><img src="/webProject/images/myhome.jpg" alt="����Ȩ" style="float: left;"></button>
	<!-- <input type="button" value="����Ȩ" >  -->
	<button onclick="logout();"><img src="/webProject/images/logout.jpg" alt="�α׾ƿ�" ></button>
	<!-- <input type="submit" value="�α׾ƿ�" >  -->
	</div>
</div>
<!-- </form> -->
</body>
</html>