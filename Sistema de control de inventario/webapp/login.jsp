<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <title>Login</title>
  </head>
  <body>
  <%! 
        Connection con;
        Statement stmt;
        ResultSet rs;
        String dburl="jdbc:postgresql://localhost:5432/usuarios"; 
        String user="postgres";
        String password=" ";
  %>
  <% 
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(dburl,user,password);
        stmt = con.createStatement();
        String usuario     ="";
        String password    ="";
        Statement st = con.createStatement();
        ResultSet rs;
  %>
  
  <%
        /* recuperando datos del formulario */
        request.setCharacterEncoding("UTF-8");
        usuario    = request.getParameter("nombre");
        password   = request.getParameter("clave");
        
        /* Consulta a la base de datos para evaluar si los datos ingresados en el formulario coniciden con los registrados en la base */
        rs = st.executeQuery("select * from usuario Where nombre_usuario = '"+usuario+"' and password = '"+password+"'");
        
        if (rs.next()) {
        session.setAttribute("usuario", usuario);
        session.setAttribute("password", password);
        response.sendRedirect("index.jsp");
        }else {
        out.println("<script>alert('Usuario o contraseña incorrecta');</script>");
        }
  %>
  
  <%    
        con.close(); //Cerrando conexión con el servidor de Base de Datos
  %>
    
  </body>
</html>
