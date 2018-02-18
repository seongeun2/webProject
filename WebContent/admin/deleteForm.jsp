<%@page import="member.memVO"%>
<%@page import="member.memDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	int num = Integer.parseInt(request.getParameter("num"));
	try{
		memDAO dao = memDAO.getInstance();
		memVO vo = dao.SelectViewMem(num);
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link type="text/css" href="/memberboard/css/main.css" rel="stylesheet" />
<title>Insert title here</title>
<style type="text/css">
img{
	display : block;
	margin: 0 auto;
}
</style>

<script type="text/javascript">
function memberdelete() {
	var v = document.deleteForm;
	v.submit();
}
function golist(){
	location.href = "/memberboard/list.jsp"; 
}
</script>
</head>
<body>
<img alt="그림" src="/memberboard/image/ap.png" width="200px">
<div class="space-`medium">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="row">                
	        	</div>
<div class="account-holder">
	<h3 align="center">****Haru 회원탈퇴****</h3><br>
<form name="deleteForm" method="post" action="<%=request.getContextPath() %>/deletePro.jsp">
	<div class="form-top">
		<p align=center><b>비밀번호를 입력해주세요</b></p>
			<div class="form-group">
				<label class="control-label required" for="phone">비밀번호: <sup style="color:red">*</sup></label>
		        <input id="m_pwd" name="m_pwd" type="text" class="form-control" placeholder="Enter Password">
		        <input type="hidden" name="num" value="<%=vo.getM_num() %>">
		    </div>
	
     </div>
        <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12" style="text-align: center">
            <input type="button" class="btn btn-primary btn-block" onclick="memberdelete();" value="회원탈퇴">
            <input type="button" class="btn btn-primary btn-block" onclick="golist();" value="회원목록">
        </div>
       <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
       </div>
</form>
</div></div>
</div>
</div>
</div>
<%
	}catch(Exception e){}
%>
</body>
</html>