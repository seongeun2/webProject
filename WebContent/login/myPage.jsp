<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%
	int num = 0;
	if(request.getParameter("num")!=null){
		num = Integer.parseInt(request.getParameter("num"));
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link type="text/css" href="/webProject/css/form.css" rel="stylesheet" />
<html>
<head>
<style type="text/css">
img{
	display : block;
	margin: 0 auto;
}
</style>
<script type="text/javascript">																				

	
function golist(){
	location.href = "/memberboard/list.jsp"; 
	}
	
<%-- function update(){
	location.href = "updateForm.jsp?num=<%=vo.getM_num()%>";
}
function m_delete(){
	location.href = "deleteForm.jsp?num=<%=vo.getM_num()%>";
} --%>

</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link type="text/css" href="/webProject/css/form.css" rel="stylesheet" />
<title>회원등록</title>
</head>
<body>
<div class="leftcolumn">
<div class="card">	
<!--forms-->
<img alt="그림" src="/webProject/images/ap.png" width="200px">
<div class="space-`medium">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="row">                
	        	</div>
<div class="account-holder">
	<h3 align="center">****Haru 회원등록****</h3><br>
	<form name="writeForm" method="post" action="<%=request.getContextPath() %>/writePro.jsp">
	<div class="form-top">
			<div class="form-group">
				<label class="control-label required" for="phone">아이디<sup style="color:red">*</sup></label>
		        <input id="m_id" name="m_id" type="text" class="form-control" placeholder="Enter ID">
		    </div>
		    <div class="form-group">
                <label class="control-label required" for="password">비밀번호<sup style="color:red">*</sup></label>
                <input id="m_pwd" name="m_pwd" type="password" class="form-control" placeholder="Enter password">
            </div>
		    
		    <div class="form-group">
		        <label class="control-label required" for="name">이름<sup style="color:red">*</sup></label>
		        <input id="m_name" name="m_name" type="text" class="form-control" placeholder="Enter Name">
		    </div>
            <div class="form-group">
                <label class="control-label required" for="phone">생년월일</label>
                <input id="m_birth" name="m_birth" type="text" class="form-control" placeholder="Enter BirthDay">
            </div>
            <div class="form-group">
                <label class="control-label required" for="email">Email</label>
                <input id="m_email" name="m_email" type="text" class="form-control" placeholder="Enter Email Address">
            </div>
        <div class="form-group">
                <label class="control-label required" for="name">회원등급</label>
                <select name="m_level">
                	<option value="">=회원등급선택=</option>
			        <option value="새싹회원">새싹회원</option>
			        <option value="정회원">정회원</option>
			        <option value="우수회원">우수회원</option>
			        <option value="관리자">관리자</option>
			   </select>
        </div>
            
        </div>
        
        
        <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12" style="text-align: center">
            <input type="button" class="btn btn-primary btn-block" onclick="update();" value="정보수정">
            <input type="button" class="btn btn-primary btn-block" onclick="m_delete();" value="회원탈퇴">
            <input type="button" class="btn btn-primary btn-block" onclick="golist();" value="회원목록">
        </div>
        
       <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
       </div>
	</form>
</div></div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>