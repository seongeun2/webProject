<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 날짜선택 스크립트 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script><!-- 날짜끝 -->
<html>
<style>/*haru_writeForm */
tr{
	text-align: center;
	border: solid 1px;
}
input {
	height: 30px;
}
select {
	height: 30px;
}
.haru_writeForm{
	margin: 0 auto;
}
</style>
<script type="text/javascript">
function doChange(srcE, targetId){
    var val = srcE.options[srcE.selectedIndex].value;
    var targetE = document.getElementById(targetId);
    removeAll(targetE);

    if(val == '1'){	//지출
        addOption('식비', targetE);
        addOption('교통비', targetE);
        addOption('통신비', targetE);
    }
    else if(val == '2'){ //수입
        addOption('급여', targetE);
        addOption('이자수익', targetE);
        addOption('기타', targetE);
    }
}

function addOption(value, e){
    var o = new Option(value);
    try{
        e.add(o);
    }catch(ee){
        e.add(o, null);
    }
}

function removeAll(e){
    for(var i = 0, limit = e.options.length; i < limit - 1; ++i){
        e.remove(1);
    }
}
//날짜선택 자바스크립트
$(function() {
	  $( "#datepicker1" ).datepicker({
	    dateFormat: 'yy-mm-dd'
	  });
	});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="leftcolumn">
<div class="card2">
<form action="/webProject/haru_write/writeForm2.jsp" method="post">
	<table class=haru_writeForm>
		<tr>
			<td>날짜</td>
			<td>항목</td>
			<td>계정</td>
			<td>내용</td>
			<td>금액</td>
		</tr>
		<tr>
			<td><input type="text" id="datepicker1"></td>	<!-- 날짜 -->
			<td>
			    <select name="selOne" id="selOne" onchange="doChange(this, 'selTwo')">
			        <option value="default">---항목선택---</option>
			        <option value="1">지출</option>
			        <option value="2">수입</option>
			    </select>
			</td>
			<td>
			    <select name="selTwo" id="selTwo">
			        <option value="default">---계정 선택---</option>
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