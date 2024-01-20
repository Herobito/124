<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximun-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="estilos.css" />
    <title>VENTAS A PARTICULARES</title>
  </head>
  <body>
    <header>
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
	
    %>
	<%
	/* recuperando datos del formulario */
	request.setCharacterEncoding("UTF-8");
	clave    = request.getParameter("clave");
	nombre    = request.getParameter("nombre");
	marca    = request.getParameter("marca");
	modelo    = request.getParameter("modelo");
	fecha    = request.getParameter("fecha");
	precio    = request.getParameter("total");
	cantidad = "select unidades_disponibles from  inventario where idinventario = "+clave+"";
	venta = "insert into ventasparticulares(idauto, nom_cliente, marca, modelo, fecha_compra, precio) Values("+clave+", '"+nombre+"', '"+marca+"', "+modelo+",'"+fecha+"', "+precio+")";        
        ResultSet resultado = stmt.executeQuery(cantidad);

        while (resultado.next()){
                cantidad = resultado.getString("unidades_disponibles");
                }
	int temporal = Integer.parseInt(cantidad) - 1;
	actualizar ="UPDATE inventario set unidades_disponibles = "+temporal+" where idinventario = "+clave+"";
	%>
	<%
	stmt.executeUpdate(venta);
	stmt.executeUpdate(actualizar);
	con.close(); //Cerrando conexión con el servidor de Base de Datos
	%>


      <div class="portada">
          <div class="logo">
            <img src=https://drive.google.com/uc?export=view&id=1kFz0W0i9wmMOPP8xNheaqR6ErWyLEMfE alt="logotipo" />
          </div>
      </div>
    </header>

    <section class="galeria-2">
      <h2>VENTAS A PARTICULARES</h2>
      <p>El vehículo de la marca <%=marca%> ha sido vendido a <%=nombre%> por un total de $<%=precio%> </p>
      <a href="http://localhost:8080/ProyectoFinal/index.jsp"><button class="boton-enviar">REGRESAR</button></a>
    </section>
  </body>
</html>
