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
	if(value == "0"){ // HOME ��ư Ŭ���� ùȭ������ �̵�
		location.href="main.jsp";
    }
	else if(value == "1") {// �Է�������
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "2") {// ����������
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "3") {// ���������
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "4") {// ����������
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
	else if(value == "5") {// ����������
        location.href="main.jsp?contentPage=/common/NewFile.jsp";
   }
    else if(value == "11") {// �޷������� �̵�
        location.href="main.jsp?contentPage=/common/calendar.jsp";
    }
    else if(value == "6") {// �α���������
        location.href="main.jsp?contentPage=/join/loginForm.jsp";
   }
    else if(value == "7") {// ȸ������������
        location.href="main.jsp?contentPage=/join/joinForm.jsp";
   }
}
</script>
<body>

</body>
</html>