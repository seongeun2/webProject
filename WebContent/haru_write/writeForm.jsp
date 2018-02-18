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
<script type="text/javascript">
function doChange(srcE, targetId){
    var val = srcE.options[srcE.selectedIndex].value;
    var targetE = document.getElementById(targetId);
    removeAll(targetE);

    if(val == '1'){	//����
        addOption('�ĺ�', targetE);
        addOption('�����', targetE);
        addOption('��ź�', targetE);
    }
    else if(val == '2'){ //����
        addOption('�޿�', targetE);
        addOption('���ڼ���', targetE);
        addOption('��Ÿ', targetE);
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
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="leftcolumn">
<div class="card2">
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
			    <select name="selOne" id="selOne" onchange="doChange(this, 'selTwo')">
			        <option value="default">---�׸���---</option>
			        <option value="1">����</option>
			        <option value="2">����</option>
			    </select>
			</td>
			<td>
			    <select name="selTwo" id="selTwo">
			        <option value="default">---���� ����---</option>
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