<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="user.UserDAO"/>
<%
   String id=request.getParameter("userId");
   String pw=request.getParameter("userPass");
   
   int res=dao.login(id, pw);
   
   if(res==-1)
   {
%>
     <script>
      alert("ID가 존재하지 않습니다!");
      history.back();
     </script>
<%
   }
   else if(res==0)
   {
%>
     <script>
      alert("비밀번호가 틀립니다!");
      history.back();
     </script>
<%
   }
   else
   {
	  String name = dao.getname(id);
	  session.setAttribute("id",id);
	  session.setAttribute("name", name);
	  
	  response.sendRedirect("../main/main.jsp");
   }
%>





