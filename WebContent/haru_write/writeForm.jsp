<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
tr{
	text-align: center;
	border: solid 1px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="leftcolumn">
<div class="card">
<form action="/webProject/haru_write/writeForm2.jsp" method="post">
	<table>
		<tr>
			<td>��¥</td>
			<td>�׸�</td>
			<td>����</td>
			<td>����</td>
			<td>�ݾ�</td>
		</tr>
		<tr>
			<td><input type="text" name="date"></td>	<!-- ��¥ -->
			<td>
				<select name="option">
					<option>==����==</option>
					<option value="1">����</option>
					<option value="2">����</option>
				</select>
			</td>
			<td>
				<select name="account">
					<option>==�����׸�==</option>
					<option value="10">�ĺ�</option>
					<option value="11">�����</option>
					<option value="12">��ź�</option>
				</select>
			</td>
			<td><input type="text" name="content"></td>
			<td><input type="text" name="price"></td>
			<td><input type="submit" value="����"></td>
		</tr>
		
	</table>
	</form>
</div>
</div>
</body>
</html>