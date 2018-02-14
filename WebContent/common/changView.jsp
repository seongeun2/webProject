<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function changeView(value) {
	if(value == "0"){ // HOME 버튼 클릭시 첫화면으로 이동
		location.href="main.jsp";
    }
	else if(value == "1") {// 입력페이지
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "2") {// 보기페이지
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "3") {// 통계페이지
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "4") {// 설정페이지
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "5") {// 공지페이지
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
    else if(value == "11") {// 달력페이지 이동
        location.href="main.jsp?contentPage=/common/calendar.jsp";
    }
    else if(value == "6") {// 로그인페이지
        location.href="main.jsp?contentPage=/join/loginForm.jsp";
   }
    else if(value == "7") {// 회원가입페이지
        location.href="main.jsp?contentPage=/join/joinForm.jsp";
   }
}
</script>
<body>

</body>
</html>