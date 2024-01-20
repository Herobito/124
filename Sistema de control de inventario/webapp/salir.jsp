
  <%
      HttpSession newsession = request.getSession(false);
      if (newsession != null){
         newsession.invalidate();
      } 
      response.sendRedirect("principal.jsp");    
  %>
