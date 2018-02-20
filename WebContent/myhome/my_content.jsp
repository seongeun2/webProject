<%@page import="member.memDAO"%>
<%@page import="member.memVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
//세션에 저장된 아이디를 가져와 회원 정보를 가져온다
	
	String id = session.getAttribute("id").toString();
	System.out.println("세션아이디?"+id);
	/* int num = Integer.parseInt(request.getParameter("memnum")); */
	memDAO dao = memDAO.getInstance();
	memVO vo = dao.myhomeView(id);
%>

<style type="text/css">
img{
	display : block;
	margin: 0 auto;
}
</style>
<script type="text/javascript">

	
function golist(){
	location.href = "/webProject/main/main.jsp?contentPage=/admin/list.jsp"; 
	
	}
	
function update(){
	location.href = "/webProject/main/main.jsp?contentPage=/myhome/updateForm.jsp?num=<%=vo.getM_num()%>";
}

function m_delete(){
	location.href = "/webProject/main/main.jsp?contentPage=/myhome/deleteForm.jsp?num=<%=vo.getM_num()%>";
}


</script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link type="text/css" href="/webProject/css/form.css" rel="stylesheet" />
<title>회원등록</title>
</head>

<body>
<div class="leftcolumn">
<div class="card2">	
<!--forms-->
<img alt="그림" src="/webProject/images/ap.png" width="200px">
<div class="space-`medium">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="row">                
	        	</div>
<div class="account-holder">
	<h3 align="center">****Haru 회원정보****</h3><br>
	<form name="writeForm" method="post" action="<%=request.getContextPath() %>/writePro.jsp">
	<div class="form-top">
			<div class="form-group">
				<label class="control-label required" for="phone">회원번호<sup style="color:red">*</sup></label>
		        <input id="m_num" name="m_num" type="text" class="form-control" value="<%=vo.getM_num() %>" readonly />
		    </div>
			<div class="form-group">
				<label class="control-label required" for="phone">아이디<sup style="color:red">*</sup></label>
		        <input id="m_id" name="m_id" type="text" class="form-control" value="<%=vo.getM_id() %>" readonly />
		    </div>
		    
		    <div class="form-group">
		        <label class="control-label required" for="name">이름<sup style="color:red">*</sup></label>
		        <input id="m_id" name="m_id" type="text" class="form-control" value="<%=vo.getM_name() %>" readonly />
		    </div>
            <div class="form-group">
                <label class="control-label required" for="phone">생년월일</label>
                <input id="m_brith" name="m_brith" type="text" class="form-control" value="<%=vo.getM_birth() %>" readonly />
            </div>
            <div class="form-group">
                <label class="control-label required" for="email">Email</label>
                <input id="m_email" name="m_email" type="text" class="form-control" value="<%=vo.getM_email() %>" readonly />
            </div>
        <div class="form-group">
                <label class="control-label required" for="name">회원등급</label>
                <input id="m_email" name="m_email" type="text" class="form-control" value="<%=vo.getM_level() %>" readonly />
        </div>
            
        </div>
        
        <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12" style="text-align: center">
            <input type="button" class="btn btn-primary btn-block" onclick="update();" value="정보수정">
            <input type="button" class="btn btn-primary btn-block" onclick="m_delete();" value="회원탈퇴">
            
        </div>
       <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
       </div>
	</form>
</div></div>
</div>
</div>
</div>
</div></div>
</body>
</html>