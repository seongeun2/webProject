<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form >
<div class="leftcolumn">
<div class="card">
<input type="text" value="날짜">
	<select name="m_select">
		<option selected="selected">==항목선택==</option>
		<option value="revenue">수입</option>
		<option value="expenditure">지출</option>
	</select>
	<select name="m_select">
		<option selected="selected">==지출선택==</option>
  		<option value="10">식비</option>
  		<option value="11">교통비</option>
  		<option value="12">통신비</option>
	</select>
	<select name="m_select">
		<option selected="selected">==수입선택==</option>
  		<option value="10">급여</option>
  		<option value="11">이자</option>
	</select>
	
	
	
<input type="text" value="details">
<input type="text" value="Price">
<input type="submit" value="저장">
</div>
</div>
</form>
</body>
</html>