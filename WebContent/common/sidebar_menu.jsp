<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<!-- ���� ���̵�� -->
  <div class="rightcolumn">
    <div class="card">
      <h2>HOME</h2>
      <h2>MENU</h2><br>
	      <div class="fakeimg" onclick="changeView('1');">HARU �Է�</div>
	       <div class="fakeimg" onclick="changeView('2');">HARU ����</div>
	       <div class="fakeimg" onclick="changeView('3');">HARU ���</div>
	       <div class="fakeimg" onclick="changeView('4');">HARU ����</div>
	       <div class="fakeimg" onclick="changeView('5');">HARU ����</div>
	      <div class="fakeimg" onclick="changeView('11');">�޷� ����</div>
      
    </div>
  </div>
</body>
</html>