<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css" href="/webProject/css/main.css" rel="stylesheet" />
<title>Insert title here</title>
<script>
function View(value) {
	if(value == "0"){ // HOME 버튼 클릭시 첫화면으로 이동
		location.href="main.jsp";
	}else if(value == "6") {// 로그인페이지
        location.href="main.jsp?contentPage=/test/modal_login.jsp";
    }else if(value == "7") {// 회원가입페이지
        location.href="main.jsp?contentPage=/join/joinForm.jsp";
    }
}
</script>
</head>
<body>
	<div class="login" style="background-color: #ff9fa0; height: 50px;">
	  <div class="loing_btn" style="text-align: right;">
	  <button onclick="View('0');"><img src="/webProject/images/home.jpg" alt="홈" ></button>
	  <button onclick="View('6');"><img src="/webProject/images/login.jpg" alt="로그인" ></button>
	  <button onclick="View('7');"><img src="/webProject/images/join.jpg" alt="회원가입"></button>
  		</div>
  	</div>
  	
</body>
</html>