<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link type="text/css" href="/webProject/css/main.css" rel="stylesheet" />
<html>
<head>
</head>
<body>
<% String content = request.getParameter("name"); %>
<%
    String contentPage=request.getParameter("contentPage");
    if(contentPage==null)
        contentPage="../common/body.jsp";
%>

<!-- 탑메뉴 -->
<jsp:include page="../common/top_menu.jsp"></jsp:include>

<!-- 메인 -->
<div class="row">
<jsp:include page="<%=contentPage%>" />
<jsp:include page="../common/sidebar_menu.jsp"></jsp:include>
</div>

<!-- 바텀 -->
<jsp:include page="../common/buttom_menu.jsp"></jsp:include>
</body>
</html>