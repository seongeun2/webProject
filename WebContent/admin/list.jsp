<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="member.memVO"%>
<%@page import="member.memDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" href="/webProject/css/mem.css" rel="stylesheet" />
<link type="text/css" href="/webProject/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="/webProject/css/main.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

<script>
function mem_search(frm){
	//ȸ���˻����
	var frm = document.search;
	frm.submit();
}
function adminwriteForm(){
	//ȸ�����
	location.href = "/webProject/admin/writeForm.jsp";
}

function Popup() {
   window.open('../admin/writeForm.jsp', 'popup01', 'width=770,height=888,scrollbars=0,toolbar=0,menubar=no');
   Window.close();
}
</script>
</head>
<%
//�˻�ó��
String keyField = request.getParameter("keyField");
String keyWord = request.getParameter("keyWord");

//������ó��
int pageSize = 5;
String pageNum = request.getParameter("pageNum");
if(pageNum==null || pageNum==""){
	pageNum="1"; }
int currentPage = Integer.parseInt(pageNum);
int startRow = (currentPage-1) * pageSize;
int endRow = currentPage * pageSize;

memDAO dao = memDAO.getInstance();
int count = 0;
List memList = null;
count = dao.SelectCountMem(startRow, endRow, keyField, keyWord);
if(count>0){
	memList = dao.memList(startRow, endRow, keyField, keyWord);
}


%>

<body>
<div class="leftcolumn">
<div class="card2">
<div class="container" style="margin-top: 30px;">
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css' />
 <div class="mail-box">
 <aside class="lg-side"></aside></div>
 <div style="text-align: center"><h1>Haru ȸ������ (ȸ���� <%=count %> ��)</h1></div>

 <div style="height: 3px; background-color: #00000029;"></div><!-- �� -->
<div class="inbox-body">
	<div class="mail-option">
		<table class="table table-inbox table-hover">
			<tbody>
            	<tr class="unread">
                	<td class="view-message" align="center" width="50">ȸ����ȣ</td>
                    <td class="view-message" align="center" width="50">���̵�</td>
                    <td class="view-message" align="center" width="50">�̸�</td>
                    <td class="view-message" align="center" width="70">�������</td>
                    <td class="view-message" align="center" width="50">�����Ͻ�</td>
                    <td class="view-message" align="center" width="50">ȸ�����</td>
              	</tr>
              	<%
		if(count==0){
		%>
			<tr height="30">
				<td colspan="6" style="text-align: center;">��ϵ� ����ڰ� �����ϴ�.</td>
			</tr>
		<%
		}else{
		%>	
		<%
		for(int i=0; i<memList.size(); i++){
			memVO member = (memVO) memList.get(i);
		%>	
		<tr height="30">
		<!-- �󼼺��� ������ num�� �Ѱ��ش� -->
			<td align="center" width="50"><%=member.getM_num()%></td>
			<td align="center" width="50">
				<a href="/webProject/main/main.jsp?contentPage=/admin/content.jsp?memnum=<%=member.getM_num()%>"><%=member.getM_id() %></a></td>
			<td align="center" width="50"><%=member.getM_name() %> </td>
			<td align="center" width="70"><%=member.getM_birth() %></td>
			<td align="center" width="50"><%=member.getM_reg_date() %></td>
			<td align="center" width="50"><%=member.getM_level() %></td>
		</tr><%} %>
		<%} %>
	</table>
	
	<!-- �ϴ� ������ -->
	<div class="w3-center" style="margin-top: 20px; text-align: center;">
	<%int bottomLine=3;
	if(count>0){int pageCount=count/pageSize+(count%pageSize==0?0:1);
	int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
	int endPage = startPage+bottomLine-1;
	if(endPage>pageCount) endPage=pageCount;
	if(startPage>bottomLine){	%>
	<a href="/webProject/main/main.jsp?contentPage=/admin/list.jsp?pageNum=<%=startPage-bottomLine %>">[����]</a>
	<%} %>
	<%for (int i=startPage; i<=endPage; i++){ %>
	<a href="/webProject/main/main.jsp?contentPage=/admin/list.jsp?pageNum=<%=i%>"><%
		if(i!=currentPage) out.print("["+i+"]");
		else out.print("<font color='red'>["+i+"]</font>");	%></a>
	<%}
		if(endPage<pageCount){ %>
		<a href="/webProject/main/main.jsp?contentPage=/admin/list.jsp?pageNum=<%=startPage+bottomLine%>">[����]</a>
		<%}	} %>
	</div>
	<br>
	<!-- ȸ�� �˻� -->
	<form name ="search" method="post" style="text-align: center;">
		<select name="keyField">
		<option>����</option>
		<option value="m_id">���̵�</option>
		<option value="m_name">�̸�</option>
		<option value="m_level">ȸ�����</option>
		</select>
		<input type="text" size="20" name="keyWord">
		<input type="button" value="�˻�" onclick="mem_search(form)" />&nbsp;
		<input type="button" onclick="Popup()" value="ȸ�����">
	</form>
	</div>
	</div>
	</div>
	</div></div>
	
	
	
</body>
</html>