<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
.join_form{
	background-color: pink;
	width: 25%;
}
tr{

	height: 30px;
}

</style>
<script>
function hohoho(){
	var f = document.frm;
	if(f.id.value==""){
		alert("���̵� �Է��ϼ���");
		f.id.focus();
		return;
	}
}

function cancle(){
 location.href = "../main/main.jsp";
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="frm" method=post action="../join/join_ok.jsp">
<table width="700" >
	<tr>
		<td class=join_form>���̵�</td>
		<td>
			&nbsp;&nbsp;<input type="text" name="id" width="75%" size="20">
			<input type="button" value="�ߺ�üũ">
		</td>
	</tr>
	<tr>
		<td class=join_form>�н�����</td>
		<td>
		&nbsp;&nbsp;<input type="text" name="pass1" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>�н����� Ȯ��</td>
		<td>
		&nbsp;&nbsp;<input type="text" name="pass2" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>�̸�</td>
		<td>
		&nbsp;&nbsp;<input type="text" name="name" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>����</td>
		<td>
		&nbsp;&nbsp;<input type="text" name="re_name" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>E-mail</td>
		<td>
		&nbsp;&nbsp;<input type="text" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>����</td>
		<td>&nbsp;&nbsp;
		<input type=radio name=sex value="1" >����
		<input type=radio name=sex value="2">����	
		</td>
	</tr>
	<tr>
		<td class=join_form>�ּ�</td>
		<td>&nbsp;&nbsp;
			<input type="text" name="post1" size="7" readonly> - 
		    <input type="text" name="post2" size="7" readonly>
		    <input type="button" value="�˻�" onclick="postfind()">
		</td>
	</tr>
	<tr>
		<td class=join_form>���ּ�</td>
		<td>&nbsp;&nbsp;
			<input type="text" name="post1" size="7" readonly> - 
		    <input type="text" name="post2" size="7" readonly>
		    <input type="button" value="�˻�" onclick="postfind()">
		</td>
	</tr>
	<tr>
		<td class=join_form>��ȭ��ȣ</td>
		<td>&nbsp;&nbsp;
			<input type="text" name="post1" size="7" readonly> - 
		    <input type="text" name="post2" size="7" readonly>
		    <input type="button" value="�˻�" onclick="postfind()">
		</td>
	</tr>
	<tr>
		<td class=join_form>���� ����</td>
		<td>&nbsp;&nbsp;
			<input type="checkbox" name="introduce" checked><font size="2">���� ������ �ްڽ��ϴ�.</font>
		</td>
	</tr>
	<tr>
		<td class=join_form>SMS ���ſ���</td>
		<td>&nbsp;&nbsp;
			<input type="checkbox" name="mservice" checked><font size="2">�ڵ��� ���ڸ޼����� �ްڽ��ϴ�.</font>
		</td>
	</tr>
</table>
<table border="0" bgcolor="#ebeeee" cellpadding="1" cellspacing="1" width="700">
	<tr>
		<td align="center" colspan=2>
			<input type=button value="ȸ������" onclick="hohoho()">
		   	<input type=button value="���" onclick="cancle()" >
		</td> 
	</tr>
</table>
</form>
</body>
</html>