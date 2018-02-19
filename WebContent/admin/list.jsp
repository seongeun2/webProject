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
	//회원검색기능
	var frm = document.search;
	frm.submit();
}
function adminwriteForm(){
	//회원등록
	location.href = "/webProject/admin/writeForm.jsp";
}

function Popup() {
   window.open('../admin/writeForm.jsp', 'popup01', 'width=770,height=888,scrollbars=0,toolbar=0,menubar=no');
   Window.close();
}
</script>
</head>
<%
//검색처리
String keyField = request.getParameter("keyField");
String keyWord = request.getParameter("keyWord");

//페이지처리
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
 <div style="text-align: center"><h1>Haru 회원관리 (회원수 <%=count %> 명)</h1></div>

 <div style="height: 3px; background-color: #00000029;"></div><!-- 선 -->
<div class="inbox-body">
	<div class="mail-option">
		<table class="table table-inbox table-hover">
			<tbody>
            	<tr class="unread">
                	<td class="view-message" align="center" width="50">회원번호</td>
                    <td class="view-message" align="center" width="50">아이디</td>
                    <td class="view-message" align="center" width="50">이름</td>
                    <td class="view-message" align="center" width="70">생년월일</td>
                    <td class="view-message" align="center" width="50">가입일시</td>
                    <td class="view-message" align="center" width="50">회원등급</td>
              	</tr>
              	<%
		if(count==0){
		%>
			<tr height="30">
				<td colspan="6" style="text-align: center;">등록된 사용자가 없습니다.</td>
			</tr>
		<%
		}else{
		%>	
		<%
		for(int i=0; i<memList.size(); i++){
			memVO member = (memVO) memList.get(i);
		%>	
		<tr height="30">
		<!-- 상세보기 페이지 num을 넘겨준다 -->
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
	
	<!-- 하단 페이지 -->
	<div class="w3-center" style="margin-top: 20px; text-align: center;">
	<%int bottomLine=3;
	if(count>0){int pageCount=count/pageSize+(count%pageSize==0?0:1);
	int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
	int endPage = startPage+bottomLine-1;
	if(endPage>pageCount) endPage=pageCount;
	if(startPage>bottomLine){	%>
	<a href="/webProject/main/main.jsp?contentPage=/admin/list.jsp?pageNum=<%=startPage-bottomLine %>">[이전]</a>
	<%} %>
	<%for (int i=startPage; i<=endPage; i++){ %>
	<a href="/webProject/main/main.jsp?contentPage=/admin/list.jsp?pageNum=<%=i%>"><%
		if(i!=currentPage) out.print("["+i+"]");
		else out.print("<font color='red'>["+i+"]</font>");	%></a>
	<%}
		if(endPage<pageCount){ %>
		<a href="/webProject/main/main.jsp?contentPage=/admin/list.jsp?pageNum=<%=startPage+bottomLine%>">[다음]</a>
		<%}	} %>
	</div>
	<br>
	<!-- 회원 검색 -->
	<form name ="search" method="post" style="text-align: center;">
		<select name="keyField">
		<option>선택</option>
		<option value="m_id">아이디</option>
		<option value="m_name">이름</option>
		<option value="m_level">회원등급</option>
		</select>
		<input type="text" size="20" name="keyWord">
		<input type="button" value="검색" onclick="mem_search(form)" />&nbsp;
		<input type="button" onclick="Popup()" value="회원등록">
	</form>
	</div>
	</div>
	</div>
	</div></div>
	
	
	
</body>
</html>