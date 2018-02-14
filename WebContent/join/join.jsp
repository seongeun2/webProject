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
		alert("아이디를 입력하세요");
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
		<td class=join_form>아이디</td>
		<td>
			&nbsp;&nbsp;<input type="text" name="id" width="75%" size="20">
			<input type="button" value="중복체크">
		</td>
	</tr>
	<tr>
		<td class=join_form>패스워드</td>
		<td>
		&nbsp;&nbsp;<input type="text" name="pass1" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>패스워드 확인</td>
		<td>
		&nbsp;&nbsp;<input type="text" name="pass2" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>이름</td>
		<td>
		&nbsp;&nbsp;<input type="text" name="name" width="75%" size="20">
		</td>
	</tr>
	<tr>
		<td class=join_form>별명</td>
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
		<td class=join_form>성별</td>
		<td>&nbsp;&nbsp;
		<input type=radio name=sex value="1" >남자
		<input type=radio name=sex value="2">여자	
		</td>
	</tr>
	<tr>
		<td class=join_form>주소</td>
		<td>&nbsp;&nbsp;
			<input type="text" name="post1" size="7" readonly> - 
		    <input type="text" name="post2" size="7" readonly>
		    <input type="button" value="검색" onclick="postfind()">
		</td>
	</tr>
	<tr>
		<td class=join_form>상세주소</td>
		<td>&nbsp;&nbsp;
			<input type="text" name="post1" size="7" readonly> - 
		    <input type="text" name="post2" size="7" readonly>
		    <input type="button" value="검색" onclick="postfind()">
		</td>
	</tr>
	<tr>
		<td class=join_form>전화번호</td>
		<td>&nbsp;&nbsp;
			<input type="text" name="post1" size="7" readonly> - 
		    <input type="text" name="post2" size="7" readonly>
		    <input type="button" value="검색" onclick="postfind()">
		</td>
	</tr>
	<tr>
		<td class=join_form>메일 서비스</td>
		<td>&nbsp;&nbsp;
			<input type="checkbox" name="introduce" checked><font size="2">정보 메일을 받겠습니다.</font>
		</td>
	</tr>
	<tr>
		<td class=join_form>SMS 수신여부</td>
		<td>&nbsp;&nbsp;
			<input type="checkbox" name="mservice" checked><font size="2">핸드폰 문자메세지를 받겠습니다.</font>
		</td>
	</tr>
</table>
<table border="0" bgcolor="#ebeeee" cellpadding="1" cellspacing="1" width="700">
	<tr>
		<td align="center" colspan=2>
			<input type=button value="회원가입" onclick="hohoho()">
		   	<input type=button value="취소" onclick="cancle()" >
		</td> 
	</tr>
</table>
</form>
</body>
</html>