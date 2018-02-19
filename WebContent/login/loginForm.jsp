<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
img{
	display : block;
	margin: 0 auto;
}
</style>
<head>
<link type="text/css" href="/webProject/css/form.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="leftcolumn">
<div class="card2">
<div class="account-holder" style="margin-top: 100px;">
	<img alt="그림" src="/webProject/images/ap.png" width="200px">
	<h3 align="center">****Haru 로그인****</h3><br>
<form name="loginForm" method="post" action="<%=request.getContextPath() %>/login/loginOk.jsp">

	<div class="form-top">
			<div class="form-group">
				<label class="control-label required" for="phone">아이디: <sup style="color:red">*</sup></label>
		        <input id="m_id" name="m_id" type="text" class="form-control" placeholder="Enter ID">
		    </div>
			<div class="form-group">
				<label class="control-label required" for="phone">비밀번호: <sup style="color:red">*</sup></label>
		        <input id="m_pwd" name="m_pwd" type="text" class="form-control" placeholder="Enter Password">
		    </div>
	
     </div>
        <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12" style="text-align: center">
            <input type="submit" class="btn btn-primary btn-block" value="로그인">
            <input type="button" class="btn btn-primary btn-block" value="아이디찾기">
            <input type="button" class="btn btn-primary btn-block" value="비밀번호찾기">
        </div>
       <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
       </div>
</form>
</div>
</div>
</div>
</body>
</html>