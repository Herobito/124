<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximun-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="estilos.css" />
    <title>VENTAS A EMPRESAS</title>
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
	String nombreEmpresa           ="";
	String marca                   ="";
	String unidadesVendidas        ="";
	String fecha                   ="";
	String total                   ="";
	String cantidad                ="";
	String actualizar              ="";
	String ventas                  ="";
	 %>
	<%
	/* recuperando datos del formulario */
	request.setCharacterEncoding("UTF-8");
	clave               = request.getParameter("clave");
	nombreEmpresa       = request.getParameter("nombreEmpresa");
	marca               = request.getParameter("marca");
	unidadesVendidas    = request.getParameter("unidadesVendidas");
	fecha               = request.getParameter("fecha");
	total               = request.getParameter("total");
	cantidad = "select unidades_disponibles from  inventario where idinventario = "+clave+"";
	ventas = "insert into ventasempresa(idventa, nom_empresa, autos_vendidos, marca, fecha_compra, pago_total) Values("+clave+", '"+nombreEmpresa+"', "+unidadesVendidas+", '"+marca+"', '"+fecha+"', "+total+")";        
        ResultSet resultado = stmt.executeQuery(cantidad);

        while (resultado.next()){
                cantidad = resultado.getString("unidades_disponibles");
                }
	int temporal = Integer.parseInt(cantidad) - Integer.parseInt(unidadesVendidas);
	actualizar ="UPDATE inventario set unidades_disponibles = "+temporal+" where idinventario = "+clave+"";
	%>
	<%
	stmt.executeUpdate(ventas);
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
      <h2>VENTAS A EMPRESAS</h2>
      <p>Han sido vendidao(s) <%=unidadesVendidas%> vehículo(s) de la marca <%=marca%> a la empresa <%=nombreEmpresa%> por un total de $<%=total%></p>
      <a href="http://localhost:8080/ProyectoFinal/index.jsp"><button class="boton-enviar">REGRESAR</button></a>
    </section>
  </body>
