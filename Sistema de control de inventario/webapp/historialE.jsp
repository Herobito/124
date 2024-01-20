<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximun-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="estilos.css" />
    <title>HISTORIAL EMPRESAS</title>
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
	String nombreEmpresa           ="";
	String marca                   ="";
	String unidadesVendidas        ="";
	String fecha                   ="";
	String total                   ="";
	String cantidad                ="";
	String actualizar              ="";
	String ventas                  ="";
        String empresas                ="select * from ventasempresa";
      %>

    <header>
      <div class="portada">
          <div class="logo">
            <img src=https://drive.google.com/uc?export=view&id=1kFz0W0i9wmMOPP8xNheaqR6ErWyLEMfE alt="logotipo" />
          </div>
      </div>
    </header>

    <section class="galeria-2">
      <h2>HISTORIAL DE VENTAS</h2>
      <p>Aquí podras encontrar el historial con todas las ventas realizadas a empresas</p>
      <br>
      <% ResultSet resultado = stmt.executeQuery(empresas); 
	while (resultado.next()){
                clave  = resultado.getString("idventa");
		nombreEmpresa  = resultado.getString("nom_empresa");
		marca  = resultado.getString("marca");
		unidadesVendidas  = resultado.getString("autos_vendidos");
		fecha  = resultado.getString("fecha_compra");
		total  = resultado.getString("pago_total");
	%>
        <p>Clave: <%=clave%> - Nombre de la empresa: <%=nombreEmpresa%> - Marca: <%=marca%> - Unidad(es) comprada(s): <%=unidadesVendidas%> - Fecha de compra: <%=fecha%> - Precio total: <%=total%> </p><br>
	<%}%>

      <a href="http://localhost:8080/ProyectoFinal/index.jsp"><button class="boton-enviar">REGRESAR</button></a>
    </section>
  </body>
</html>
