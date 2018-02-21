<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="member.memVO"%>
<%@page import="member.memDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("euc-kr"); %>
<style>
input{
	height: 30px;
}
</style>
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
<!-- ��޼ҽ� -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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
/* int num = Integer.parseInt(request.getParameter("memnum")); */
/* int num = member.getM_num();
memVO vo = dao.ViewMem(num); */
memDAO dao = memDAO.getInstance();


//�˻�ó��
String keyField = request.getParameter("keyField");
String keyWord = request.getParameter("keyWord");

//������ó��
int pageSize = 5;
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
String pageNum = request.getParameter("pageNum");
if(pageNum==null || pageNum==""){
	pageNum="1"; }
int currentPage = Integer.parseInt(pageNum);
int startRow = (currentPage-1) * pageSize+1;
int endRow = currentPage * pageSize;

/* memDAO dao = memDAO.getInstance(); */

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
<%-- 			<a href="/webProject/main/main.jsp?contentPage=/admin/content.jsp?memnum=<%=member.getM_num()%>"><%=member.getM_id() %></a></td>
 --%>			<a href='javascript:void(0);' onclick="document.getElementById('id03').style.display='block'" ><%=member.getM_id() %></a></td>
		
			<td align="center" width="50"><%=member.getM_name() %> </td>
			<td align="center" width="70"><%=member.getM_birth() %></td>
			<td align="center" width="50"><%=sdf.format(member.getM_reg_date()) %></td>
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
		<select name="keyField" style="height: 30px;">
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
	
	
	
	 <!-- ȸ������ ��޼ҽ� -->
 <div class="w3-container">
  <div id="id03" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width:600px">
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey ">
      <b style="font-size: 24px;">ȸ �� �� ��</b>
        <span onclick="document.getElementById('id03').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        </div>
	 <form method="post" action="<%=request.getContextPath() %>/join/joinPro.jsp">
        <div class="w3-container">
        <div class="w3-section">
        	<table>
        	<tr>
        		<td><label><b>ȸ����ȣ</b><sub style="color: red;">*&nbsp;</sub></label></td>
        		<%-- <td><input id="m_num" name="m_num" type="text" class="form-control" value="<%=vo.getM_id() %>" readonly /></td> --%>
				<%-- <td><input id="m_num" name="m_num" type="text" value="<%=vo.getM_num() %>" readonly /></td>     --%>   
        	<%-- 	<td><input id="m_num" name="m_num" type="text" class="form-control" value="<%=vo.getM_num() %>" readonly /></td> --%>
        	</tr>
        	<tr>
        		<td><label><b>���̵�</b><sub style="color: red;">*&nbsp;</sub></label></td>
        		<!-- <td><input class="w3-border w3-margin-bottom" type="text" placeholder="Enter UserID" id="m_id" name="m_id" style="height: 30px;" required>&nbsp;&nbsp; -->
				<%-- <td><input id="m_id" name="m_id" type="text" class="form-control" value="<%=vo.getM_id() %>" readonly /></td> --%>
        	</tr>
        	<tr>	
        		<td><label><b>�̸�</b><sub style="color: red;">*</sub></label></td>&nbsp;
				<%-- <td><input id="m_name" name="m_name" type="text" class="form-control" value="<%=vo.getM_name() %>" readonly /></td> --%>
        	</tr>	
        		<td><label><b>�������</b></label></td>&nbsp;
        		 <td> <input class="w3-border w3-margin-bottom" type="text" placeholder="Enter BirthDay" id="m_birth" name="m_birth" style="height: 30px;"  required></td>
        	</tr>
        	<tr>	
        		<td><label><b>ȸ�����</b></label></td>&nbsp;
        		<td><input class="w3-border w3-margin-bottom" type="text" id="m_level" name="m_level" value="����ȸ��" style="background-color: #d6d9da; height: 30px;" readonly></td>
        	</tr>	
        	<tr>
        		<td><label><b>�̸����ּ�</b></label></td>&nbsp;
        		 <td><input class="w3-border w3-margin-bottom" type="email" placeholder="Enter Email" id="m_email" name="m_email" style="height: 30px;" required></td>
        	</tr>
      		</table>
      		<br>
             <button class="w3-button w3-block w3-section w3-padding" type="submit" style="background-color: #d25a5a; color: white; margin-top: 10px; height: 50px; font-size: 20px;">Join</button>
      </div><!-- w3-section -->
      </div><!-- w3-container -->
      
      </form>
    </div>
  </div>
</div> <!-- ȸ������ �� -->
	
	
	
	
</body>
</html>