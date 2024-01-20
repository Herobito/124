<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, maximun-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="estilos.css" />
    <title>CHINACARS</title>
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

    <!-- Inicia el header-->

    <header>
      <div class="portada">
          <div>
            <img src=https://drive.google.com/uc?export=view&id=1kFz0W0i9wmMOPP8xNheaqR6ErWyLEMfE alt="logotipo" />
          </div>
      </div>
    </header>
    <!-- Termina el header -->

    <!-- Inicia inventario -->
    <section class="galeria">
      <h2>INVENTARIO</h2>
      <div class="linea-galeria"></div>
      <div class="cuadros">
        <div class="carro">

	<% cantidad = "select unidades_disponibles from  inventario where idinventario = 100"; %>
        <%
           ResultSet r = stmt.executeQuery(cantidad);

           while (r.next()){
                cantidad = r.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1UQjXNGZ5kJJMPNTNKI5o7Hz0982q1WhX alt="carro negro" />
          <div class="linea-carro"></div>
          <h3>MG</h3>
	 <br>
         <h3>Precio: $150,000.00</h3>
	 <h3>Unidades disponibles: <%=cantidad%> </h3>
        </div>
        <div class="carro">
	<% cantidad = "select unidades_disponibles from  inventario where idinventario = 101"; %>
	<%
           ResultSet re = stmt.executeQuery(cantidad);

           while (re.next()){
                cantidad = re.getString("unidades_disponibles");
                }
        %>          
          <img src=https://drive.google.com/uc?export=view&id=112WRq_hnOEaLfFL1aTgwZ9tVYy7dHd0A alt="carro rojo" />
          <div class="linea-carro"></div>
          <h3>BAIC</h3>
          <br>
          <h3>Precio: $190,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
	  <% cantidad = "select unidades_disponibles from  inventario where idinventario = 102"; %>
        <%
           ResultSet res = stmt.executeQuery(cantidad);

           while (res.next()){
                cantidad = res.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=10IDK3_NkCEcIMXCzdL_XNTRPD-XyMFSq alt="carro azul" />
          <div class="linea-carro"></div>
          <h3>JAC</h3>
	  <br>
          <h3>Precio: $170,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
	
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 103"; %>
        <%
           ResultSet resu = stmt.executeQuery(cantidad);

           while (resu.next()){
                cantidad = resu.getString("unidades_disponibles");
                }
         %>
          <img src=https://drive.google.com/uc?export=view&id=1z2XsHo_XvTL3KmhkHms5q9rGcz_ljUEc alt="carro blanco" />
          <div class="linea-carro"></div>
          <h3>FAW</h3>
          <br>
          <h3>Precio: $120,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 104"; %>
        <%
           ResultSet resul = stmt.executeQuery(cantidad);

           while (resul.next()){
                cantidad = resul.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1dLblnu7iupwBnmwbCgzrtIeJqW0aB5k1 alt="carro azul" />
          <div class="linea-carro"></div>
          <h3>GMC</h3>
	  <br>
          <h3>Precio: $130,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 105"; %>
        <%
           ResultSet result = stmt.executeQuery(cantidad);

           while (result.next()){
                cantidad = result.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1JXD0UBK02G9jLDulLRmRVN2se_xVf9cj alt="camioneta gris" />
          <div class="linea-carro"></div>
          <h3>CHANGAN</h3>
          <br>
          <h3>Precio: $129,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 106"; %>
        <%
           ResultSet resulta = stmt.executeQuery(cantidad);

           while (resulta.next()){
                cantidad = resulta.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1i2mS6BCZhrTIrR1AWjOxElNUxlh1IxR- alt="carro gris" />
          <div class="linea-carro"></div>
          <h3>BYD</h3>
          <br>
          <h3>Precio: $1, 450,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
        <% cantidad = "select unidades_disponibles from  inventario where idinventario = 107"; %>
        <%
           ResultSet resultad = stmt.executeQuery(cantidad);

           while (resultad.next()){
                cantidad = resultad.getString("unidades_disponibles");
                }
        %>      
          <img src=https://drive.google.com/uc?export=view&id=1VZoyfrNg_gW3K0j8ltXHDH-sJihXPP3l alt="carro rojo" />
          <div class="linea-carro"></div>
          <h3>BRILLANCE</h3>
          <br>
          <h3>Precio: $164,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 108"; %>
        <%
           ResultSet resultado = stmt.executeQuery(cantidad);

           while (resultado.next()){
                cantidad = resultado.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1JT3veKQcdtq15T2vJIkULEHlDrwqdkEA alt="carro blanco" />
          <div class="linea-carro"></div>
          <h3>CHANGHE</h3>
          <br>
          <h3>Precio: $110,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 109"; %>
        <%
           ResultSet esultado = stmt.executeQuery(cantidad);

           while (esultado.next()){
                cantidad = esultado.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1BUsARxnNU1y39I3XNtOdBRhSGxKoSh0i alt="carro negro" />
          <div class="linea-carro"></div>
          <h3>CHERY</h3>
          <br>
          <h3>Precio: $105,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 110"; %>
        <%
           ResultSet sultado = stmt.executeQuery(cantidad);

           while (sultado.next()){
                cantidad = sultado.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1sV9FgF4q4kueTYGCUVDfRkEPJ0KfW2DT alt="carro anarillo" />
          <div class="linea-carro"></div>
          <h3>DFM</h3>
          <br>
          <h3>Precio: $95,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 111"; %>
        <%
           ResultSet ultado = stmt.executeQuery(cantidad);

           while (ultado.next()){
                cantidad = ultado.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1pXdYn206RulQIgtjGOU54runn-xRtrCJ alt="carro negro" />
          <div class="linea-carro"></div>
          <h3>GEELY</h3>
          <br>
          <h3>Precio: $113,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 112"; %>
        <%
           ResultSet ltado = stmt.executeQuery(cantidad);

           while (ltado.next()){
                cantidad = ltado.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=15Yv4Yv7g_2qZXqSx3VzdT6m4BB9e_oX4 alt="carro negro" />
          <div class="linea-carro"></div>
          <h3>GAC</h3>
          <br>
          <h3>Precio: $89,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 113"; %>
        <%
           ResultSet tado = stmt.executeQuery(cantidad);

           while (tado.next()){
                cantidad = tado.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=1HvpK1fH-JXjEmMcyWh-EwA_UWProzq2i alt="carro negro" />
          <div class="linea-carro"></div>
          <h3>QOROS</h3>
	  <br>
          <h3>Precio: $124,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
        <div class="carro">
          <% cantidad = "select unidades_disponibles from  inventario where idinventario = 114"; %>
        <%
           ResultSet ado = stmt.executeQuery(cantidad);

           while (ado.next()){
                cantidad = ado.getString("unidades_disponibles");
                }
        %>
          <img src=https://drive.google.com/uc?export=view&id=14eSgXI0tseljj1u_cV09ZLw621Ip-lPz alt="camioneta blanca" />
          <div class="linea-carro"></div>
          <h3>HAFEI</h3>
	  <br>
          <h3>Precio: $250,000.00</h3>
          <h3>Unidades disponibles: <%=cantidad%></h3>
        </div>
      </div>
    </section>
    <!-- Termina la galeria -->

    <!-- Inician los formularios -->

    <!-- Formulario para agregar -->
    <section>
          <div class="formulario">
            <div class="contenedor">
              <div class="texto-formulario">
                <h2>AGREGAR VEHÍCULOS</h2>
                <h3>Aquí podrás introducir los vehículos disponibles</h3>
                <form action="agregaV.jsp" method="get"" method="get">
                  <input type="text" name="clave" value="" placeholder="Clave del vehículo: 100" required="required" class="ventas">
               	 <input type="text" name="marca" value="" placeholder="Marca: MG" required="required" class="ventas">
                  <input type="text" name="modelo" value="" placeholder="Modelo: 2021" required="required" class="ventas"/> 
                  <input type="text" name="precio" value="" placeholder="Precio: $150,000" required="required" class="ventas"/> 
                  <input type="number" name="piezasDisponibles" value="" placeholder="Unidades disponibles: 5" required="required" class="ventas"/>
                  <input type="submit" value="AGREGAR" class="boton-enviar" />
                </form>
              </div>
              <div class="texto-formulario">
                <!-- Formulario para borrar -->
                <h2>ELIMINAR VEHÍCULOS</h2>
                <h3>Aquí podrás eliminar los vehículos agotados</h3>
                <form action="eliminarV.jsp" method="get">
                  <input type="text" name="clave" value="" placeholder="Clave del vehículo: 100" required="required" class="ventas">
                  <input type="text" name="marca" value="" placeholder="Marca: MG" required="required" class="ventas">
                  <input type="text" name="modelo" value="" placeholder="Modelo: 2021" required="required" class="ventas"/> 
                  <input type="number" name="piezasDisponibles" value="" placeholder="Unidades a eliminar: 3" required="required" class="ventas"/> 
                  <input type="submit" value="BORRAR" class="boton-enviar" />
                </form>
              </div>
            </div>
          </div>
    <section>

    <!-- Ventas a particulares -->
    <section>
          <div class="formulario">
            <div class="contenedor">
              <div class="texto-formulario">
                <h2>VENTAS A PARTICULARES</h2>
                <h3>Aquí podrás registrar las ventas a particulares</h3>
                <form action="ventasP.jsp" method="get">
                  <input type="text" name="clave" value="" placeholder="Clave del vehículo: 100" required="required" class="ventas"/>
                  <input type="text" name="nombre" value="" placeholder="Cliente: Maria Díaz" required="required" class="ventas"/>
                  <input type="text" name="marca" value="" placeholder="Marca: MG" required="required" class="ventas"/> 
                  <input type="text" name="modelo" value="" placeholder="Modelo: 2021" required="required" class="ventas"/>  
                  <input type="date" name="fecha" class="ventas">
                  <input type="text" name="total" value="" placeholder="Total a pagar: $150,000" required="required" class="ventas"/> 
                  <input type="submit" value="ENVIAR" class="boton-enviar" />
                </form>
              </div>
              <!-- Ventas a empresas -->
              <div class="texto-formulario">
                <h2>VENTAS A EMPRESAS</h2>
                <h3>Aquí podrás registrar las ventas a empresas</h3>
                <form action="ventasE.jsp" method="get">
                  <input type="text" name="clave" value="" placeholder="Clave del vehículo: 100" required="required" class="ventas"/>
                  <input type="text" name="nombreEmpresa" value="" placeholder="Empresa: Pemex " required="required" class="ventas"/> 
                  <input type="text" name="marca" value="" placeholder="Marca: MG" required="required" class="ventas"/> 
                  <input type="number" name="unidadesVendidas" value="" placeholder="Unidades vendidad: 5 " required="required" class="ventas"/>
                  <input type="date" name="fecha" class="ventas">
                  <input type="text" name="total" value="" placeholder="Total a pagar: $750,000" required="required" class="ventas"/> 
                  <input type="submit" value="ENVIAR" class="boton-enviar" />
                </form>
              </div>
            </div>
          </div>
    <section>
    <!-- Historial de ventas -->

    <section class="historial">
      <div>
          <div class="container-historial">
            <h2>HISTORIAL DE VENTAS</h2>
            <h3>Consulta el historial de ventas a particulares </h3>
            <form action="historialP.jsp">
              <input type="submit" value="VER HISTORIAL" class="boton-enviar" />
            </form>
            <br><br><br>
            <h2>HISTORIAL DE VENTAS</h2>
            <h3>Consultar el historial de ventas a epresas</h3>
            <form action="historialE.jsp">
              <input type="submit" value="VER HISTORIAL" class="boton-enviar" />
            </form>
          </div>
      </div>

    </section>

    <!-- Terminan los formularios -->

    <!-- Inicia pie de página-->
    <footer>
    <div class="derechos">
        <div class="container-derechos">
          <p>© Todos los derechos reservados.</p>
        </div>
        <div class="container-redes">
          <div class="redes">
            <a href="https://es-la.facebook.com/"><img src=https://drive.google.com/uc?export=view&id=1A7EIB_l-gIfa1MujXOrg5v-yndxPS-JE alt="Facebook" /></a>
          </div>
          <div class="redes">
            <a href="https://www.youtube.com/"><img src=https://drive.google.com/uc?export=view&id=1UoGocBjNjZ4TxmufX2WY_hvTr8eLkU-T alt="Youtube" /></a>
          </div>
          <div class="redes">
            <a href="https://www.tiktok.com/es/"><img src=https://drive.google.com/uc?export=view&id=1DM86MPOAqgFDFRUagEN_b52P14Cj17PZ alt="Tiktok"/></a>
          </div>
          <div class="redes">
            <a href="https://www.pinterest.com.mx/"><img src=https://drive.google.com/uc?export=view&id=1aBsubiUT2ofXm6PNMcPKbrdCOAnhemLP alt="Pinterest" /></a>
          </div>
        </div>
      </div>
    </footer>

    <!-- Termina pie de página-->

  </body>
</html>
