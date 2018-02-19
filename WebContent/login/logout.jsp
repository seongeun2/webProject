<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%session.invalidate();%>  //설정된 세션 값 사라짐

<script type="text/javascript">
alert("로그아웃 되었습니다.")
location.href="/webProject/main/main.jsp";
</script>    

</body>
</html>