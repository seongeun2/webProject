<%@page import="member.memDAO"%>
<%@page import="member.memVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	try{
		memDAO dao = memDAO.getInstance();
		memVO vo = dao.SelectViewMem(num);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
img{
	display : block;
	margin: 0 auto;
}
</style>
<script type="text/javascript">
function update() {
	var v = document.updateForm;
	v.submit();
}
	
function golist(){
	location.href = "/memberboard/list.jsp"; 
	}


</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link type="text/css" href="/memberboard/css/main.css" rel="stylesheet" />
<title>정보수정</title>
</head>
<body>
	
<!--forms-->
<img alt="그림" src="/memberboard/image/ap.png" width="200px">
<div class="space-`medium">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="row">                
	        	</div>
<div class="account-holder">
	<h3 align="center">****Haru 정보수정****</h3><br>
	<form name="updateForm" method="post" action="<%=request.getContextPath() %>/updatePro.jsp">
	<input type="hidden" name="m_num" value="<%=vo.getM_num() %>">
	<div class="form-top">
			<div class="form-group">
				<label class="control-label required" for="phone">아이디<sup style="color:red">*</sup></label>
		        <input id="m_id" name="m_id" type="text" class="form-control" value="<%=vo.getM_id() %>" readonly />
		    </div>
		    <div class="form-group">
                <label class="control-label required" for="password">비밀번호<sup style="color:red">*</sup></label>
                <input id="m_pwd" name="m_pwd" type="password" class="form-control">
            </div>
		    
		    <div class="form-group">
		        <label class="control-label required" for="name">이름<sup style="color:red">*</sup></label>
		        <input id="m_name" name="m_name" type="text" class="form-control" value="<%=vo.getM_name() %>">
		    </div>
            <div class="form-group">
                <label class="control-label required" for="phone">생년월일</label>
               <input id="m_birth" name="m_birth" type="text" class="form-control" value="<%=vo.getM_birth() %>">
            </div>
            <div class="form-group">
                <label class="control-label required" for="email">Email</label>
                <input id="m_email" name="m_email" type="text" class="form-control" value="<%=vo.getM_email() %>">
            </div>
        <div class="form-group">
                <label class="control-label required" for="name">회원등급</label>
                <input id="m_level" name="m_level" type="text" class="form-control" value="<%=vo.getM_level() %>">
        </div>
            
        </div>
        
        <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12" style="text-align: center">
            <input type="button" class="btn btn-primary btn-block" onclick="update();" value="회원등록">
            <input type="button" class="btn btn-primary btn-block" onclick="rewrite();" value="다시작성">
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