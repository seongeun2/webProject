<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="my.db.BoardDAO"%>
<%@page import="my.db.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
String id = (String) session.getAttribute("id");
BoardDAO dao = BoardDAO.getInstance();
List mainList = null;
int count = 0;

count=dao.mainCount(id);
if(count>0){
mainList = dao.mainList(id);
}
%>
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
		<%
		if(count==0){
		%>
			<tr height="30">
				<td colspan="5" style="text-align: center;">��ϵ� ������ �����ϴ�.</td>
			</tr>
		<%
		}else{
			%>	
			<%
			for(int i=0; i<mainList.size(); i++){
				BoardVO mainboard = (BoardVO) mainList.get(i);
			%>	
		
		<tr>
			
			<td><%=mainboard.getMain_writeday()%></td>	<!-- ��¥ -->
			<td><%=mainboard.getMain_option()%></td>	<!-- �׸�(����, ����) -->
			<td><%=mainboard.getMain_account()%></td>	<!-- ���� -->
			<td><%=mainboard.getMain_content()%></td>	<!-- ���� -->
			<td><%=mainboard.getMain_price()%></td>		<!-- �ݾ� -->
		</tr>
		<%} %>
		<%} %>
	</table>
	</form>
</div>
</div>
</body>
</html>