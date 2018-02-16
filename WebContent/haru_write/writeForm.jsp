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
			<td>날짜</td>
			<td>항목</td>
			<td>계정</td>
			<td>내용</td>
			<td>금액</td>
		</tr>
		<tr>
			<td><input type="text" name="date"></td>	<!-- 날짜 -->
			<td>
				<select name="option">
					<option>==선택==</option>
					<option value="1">지출</option>
					<option value="2">수입</option>
				</select>
			</td>
			<td>
				<select name="account">
					<option>==상위항목==</option>
					<option value="10">식비</option>
					<option value="11">교통비</option>
					<option value="12">통신비</option>
				</select>
			</td>
			<td><input type="text" name="content"></td>
			<td><input type="text" name="price"></td>
			<td><input type="submit" value="저장"></td>
		</tr>
		
	</table>
	</form>
</div>
</div>
</body>
</html>