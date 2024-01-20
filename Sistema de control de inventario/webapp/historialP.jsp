<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximun-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="estilos.css" />
    <title>HISTORIAL PARTICULARES</title>
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
	String nombre                  ="";
	String marca                   ="";
	String modelo                  ="";
	String fecha                   ="";
	String precio                  ="";
	String cantidad                ="";
	String actualizar              ="";
	String venta                   ="";
        String particulares            ="select * from ventasparticulares";	
    %>
    <header>
      <div class="portada">
          <div class="logo">
            <img src=https://drive.google.com/uc?export=view&id=1kFz0W0i9wmMOPP8xNheaqR6ErWyLEMfE alt="logotipo" />
          </div>
      </div>
    </header>

    <section class="galeria-2">
      <h2>HISTORIAL DE VENTAS </h2>
      <p>Aquí podras encontrar el historial con todas las ventas realizadas particulares</p>
      <br>
      <% ResultSet resultado = stmt.executeQuery(particulares); 
	while (resultado.next()){
                clave  = resultado.getString("idauto");
		nombre  = resultado.getString("nom_cliente");
		marca  = resultado.getString("marca");
		modelo  = resultado.getString("modelo");
		fecha  = resultado.getString("fecha_compra");
		precio  = resultado.getString("precio");
	%>
       <p>Clave: <%=clave%> - Nombre del cliente:  <%=nombre%> - Marca:  <%=marca%> - Modelo:  <%=modelo%> - Fecha de compra:  <%=fecha%> - Total a pagar:  <%=precio%> </p> <br>
	<%}%>

      <a href="http://localhost:8080/ProyectoFinal/index.jsp"><button class="boton-enviar">REGRESAR</button></a>
    </section>
  </body>
</html>
