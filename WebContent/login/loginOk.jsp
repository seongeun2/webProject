<%@page import="member.memDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- <jsp:useBean id="dao" class="user.UserDAO"/> --%>
<jsp:useBean id="member" class="member.memVO">
	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>

<%
	String id=request.getParameter("m_id");
	String name=request.getParameter("m_name");
	String pass=request.getParameter("m_pwd");
	
	memDAO dao = memDAO.getInstance();
	int pwcheck = dao.login(id, pass);
%>
<%	if(pwcheck == -1){ %>
	<script>
      alert("ID가 존재하지 않습니다!");
      history.back();
    </script>
<%
   }
   else if(pwcheck == 0)
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
	  session.setAttribute("id",id);
	  session.setAttribute("name", name);
	  
	  response.sendRedirect("../main/main.jsp");
   }
%>




<%-- <%
   String id=request.getParameter("m_id");
   String pw=request.getParameter("m_pwd");
   
   int res=member.login(id, pw);
   
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
%> --%>





