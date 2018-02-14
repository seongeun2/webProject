<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">

.login input{
	height: 30px;
}
</style>
<!-- <script>
function go() { 
	parent.document.getElementById("jb-content").src = "../join/join.jsp"; 
}
function changeView(value) {
	if(value == "11"){
		location.href="main.jsp?contentPage=/common/NewFile.jsp";
    }
	else if(value == "2") {// test페이지
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
}

</script> -->
<title>Insert title here</title>
</head>
<body>
	<div class="login" style="float: right;">
	  <input type="button" value="로그인" onclick="changeView('6');"> 
	  <input type="button" value="회원가입" onclick="changeView('7');">
  	</div>

</body>
</html>