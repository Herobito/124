<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximun-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="estilos.css" />
    <title>AGREGAR VEHÍCULOS</title>
  </head>
  <body>
  <%! 
	Connection con;
	Statement stmt;
	ResultSet rs;
	String dburl="jdbc:postgresql://localhost:5432/chinacar";
	String user="postgres";
	String password=" ";
   %>
   <% 
	Class.forName("org.postgresql.Driver");
	con = DriverManager.getConnection(dburl,user,password);
	stmt = con.createStatement();
	String clave                   ="";
	String modelo                  ="";
	String marca                   ="";
	String precio                  ="";
	String piezasDisponibles       ="";
	String agregar                 ="";
	String cantidad                ="";
	String actualizar              ="";
	
    %>
    <%
	/* recuperando datos del formulario */
	request.setCharacterEncoding("UTF-8");
	clave    = request.getParameter("clave");
	modelo    = request.getParameter("modelo");
	marca    = request.getParameter("marca");
	precio    = request.getParameter("precio");
	piezasDisponibles    = request.getParameter("piezasDisponibles");
        agregar = "insert into catalogo(idcatalogo, modelo, marca, precio, unidades_disponibles) Values("+clave+", "+modelo+", '"+marca+"', "+precio+", "+piezasDisponibles+")";
	cantidad = "select unidades_disponibles from  inventario where idinventario = "+clave+"";        
        ResultSet resultado = stmt.executeQuery(cantidad);

        while (resultado.next()){
                cantidad = resultado.getString("unidades_disponibles");
                }
	int temporal = Integer.parseInt(cantidad) + Integer.parseInt(piezasDisponibles);
	actualizar ="UPDATE inventario set unidades_disponibles = "+temporal+" where idinventario = "+clave+"";
%>
	<%
	stmt.executeUpdate(agregar);
	stmt.executeUpdate(actualizar);
	con.close(); //Cerrando conexión con el servidor de Base de Datos
	%>
    <header>
      <div class="portada">
          <div class="logo">
            <img src=https://drive.google.com/uc?export=view&id=1kFz0W0i9wmMOPP8xNheaqR6ErWyLEMfE alt="logotipo" />
          </div>
      </div>
    </header>
    <section class="galeria-2">
      <h2>VEHÍCULOS AGREGADOS</h2>
      <p>Han sido agregado(s) <%=piezasDisponibles%> vehículo(s) de la marca <%=marca%></p>
      <a href="http://localhost:8080/ProyectoFinal/index.jsp"><button class="boton-enviar">REGRESAR</button></a>
    </section>
  </body>
</html>


