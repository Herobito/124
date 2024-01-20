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
      <h2>MARCAS MÁS VENDIDAS</h2>
      <div class="linea-galeria"></div>
      <div class="cuadros">
        <div class="carro">
          <img src=https://drive.google.com/uc?export=view&id=1UQjXNGZ5kJJMPNTNKI5o7Hz0982q1WhX alt="carro negro" />
          <div class="linea-carro"></div>
          <h3>MG</h3>
	       <br>
        </div>
        <div class="carro">
          <img src=https://drive.google.com/uc?export=view&id=112WRq_hnOEaLfFL1aTgwZ9tVYy7dHd0A alt="carro rojo" />
          <div class="linea-carro"></div>
          <h3>BAIC</h3>
          <br>
        </div>
        <div class="carro">
          <img src=https://drive.google.com/uc?export=view&id=10IDK3_NkCEcIMXCzdL_XNTRPD-XyMFSq alt="carro azul" />
          <div class="linea-carro"></div>
          <h3>JAC</h3>
	        <br>
        </div>
        <div class="carro">
          <img src=https://drive.google.com/uc?export=view&id=1z2XsHo_XvTL3KmhkHms5q9rGcz_ljUEc alt="carro blanco" />
          <div class="linea-carro">
          </div>
          <h3>FAW</h3>
          <br>
        </div>
      </div>
      </div>
      <h2>QUIÉNES SOMOS</h2>
      <div class="linea-galeria"></div>
      <div class="quienes-somos">
        <p>Chinacars es una agencia de autos multi-marcas que ofrece la mejor experiencia a sus clientes en la venta del auto de sus sueños.
          Nuestra misión es: "Ofrecer seguridad, calidad, profesionalismos, y los mejores precios a nuestros clientes". 
          Nuestra visión es ser el líder nacional en la venta de vehículos chinos; ofrecer seguridad y profesionalismo en todas nuestras operaciones;
          vender autos de primera calidad al mejor precio, dando siempre el mejor servicio, para que nuestros clientes tengan la mejor experiencia,
          que resulte en clientes satisfechos que nos recomienden y seamos la agencia de su preferencia.
       </p>
      </div>
    </section>
    <!-- Termina la galeria -->

    <!-- Inicia seccion de Login-->
    <section>
    <div class="formulario">
            <div class="contenedor">
              <div class="texto-formulario">
                <h2>INGRESA AL INVENTARIOS</h2>
                <p>Solo el personal autorizado de Chinacars tiene acceso a esta área</p>
                <br>
                <form action="login.jsp" method="get">
                  <input type="text" name="nombre" value="" placeholder="Nombre de usuario" class="ventas"/>
                  <input type="password" name="clave" value="" placeholder="Contraseña" class="ventas"/>
                  <input type="submit" value="INGRESAR" class="boton-enviar" />
                </form>
              </div>
    </section>
    <!-- Termina seccion de Login-->

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
