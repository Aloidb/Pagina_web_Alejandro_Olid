<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/listado">
<html>
    <head>
        <meta charset="utf-8" />
        <link rel = "stylesheet" href="../css/style.css" />
    </head>      
<body>
    <button class="botonConcurso" id="botonConcurso">
        <p class="block">Nuestro concurso de recetas está a la vuelta de la esquina</p>
        <b class="block">Haz click para más información</b>
    </button>

    <header class="sticky">
        <figure> 
            <img alt="Logo de la pagina" src="../Imagenes/Logo-Delicias.png" width="25%" height="25%"/>
        </figure>
          
          <nav>
              <ul class="enlaces">
                  <a href="../index.html">INICIO</a>
                  <a href="../sobre_mi/sobre_mi.html">SOBRE MÍ</a>
                  <a href="../listado/listado.xml">RECETAS</a>
                  <a href="../contacto/contacto.html">CONTACTOS</a>
                  <a href="../otras_cosas/otras_cosas.html">OTRAS COSAS</a>
                  <a href="#" id="concurso">CONCURSO DE RECETAS</a> 
              </ul>
          </nav>
    </header>

<div class="clear"></div>

<div class="overlay1" id="overlay1">
    <div class="popup1" id="popup1">
        <figure class="imagenPopup">
            <img alt="Concurso de receta" src="../Imagenes/Concurs de Receptes.jpg" width="50%" height="50%"/>
        </figure>

        <h1> PARTICIPA EN NUESTRO CONCURSO DE RECETAS </h1>

        <p> Podrás ganar increibles premios.</p>

        <form>
            <div class="inputs">
                <input type="text" placeholder="Nombre"/>
                <input type="email" placeholder="Correo"/>
            </div>
        </form>

        <input type="submit" class="submit" value="Apuntarse"/>

        <p> Más información en tu correo electrónico</p>

        <a href="#" class="exit1" id="exit1">No, gracias</a>
    </div>
</div>

<xsl:for-each select="receta">
    <h1 class="titulo_receta"> 
        <xsl:value-of select="titulo"/>
    </h1>
    <div class="receta_descripcion">
        <xsl:value-of select="descripcion"/>
    </div>
    <div class="marginleft"/>
    <div class="video_receta">
        <h4>
            VISITA NUESTRO CANAL DE YOUTUBE
        </h4>
        <xsl:element name="iframe">
            <xsl:attribute name="src">
                <xsl:value-of select="video/@enlace"/>
            </xsl:attribute>
            <xsl:attribute name="width">
                <xsl:value-of select="650"/>
            </xsl:attribute>
            <xsl:attribute name="height">
                <xsl:value-of select="350"/>
            </xsl:attribute>                        
            <xsl:attribute name="title">
                Video de la Receta   
            </xsl:attribute>
        </xsl:element>
    </div>
    <div class="lista_ingredients1">
        <h2 class="titulo_receta">INGREDIENTES</h2>
        <ol>
            <xsl:for-each select="ingredientes/ingrediente">
                <li class= "margin10" type="disc">
                    <xsl:value-of select="."/>
                </li>    
            </xsl:for-each>
        </ol>
    </div>
    
    <div class="lista_ingredients2">
        <h4 class="titulo_receta">Tiempo estimado de la receta:  </h4>
        <h2 class="titulo_receta"> <xsl:value-of select="tiempo"/> </h2>
    </div>

    <div class="lista_pasos">
        <h2 class="titulo_receta">PASOS A SEGUIR</h2>
        <ol type="1">
            <xsl:for-each select="pasos/paso">
                <li class= "margin10">
                    <xsl:value-of select="."/>
                </li>    
            </xsl:for-each>
        </ol>
    </div>
</xsl:for-each>
<footer class="contacto">
    <ul>
        <a href="https://www.facebook.com/">FACEBOOK</a>
        <a href="https://www.Twitter.com/">TWITTER</a>
        <a href="https://www.Instagram.com/">INSTAGRAM</a>
        <a href="https://www.Pinterest.com/">PINTEREST</a>
        <a href="https://www.gmail.com/">EMAIL</a>
        <a href="#">RSS</a>
    </ul>
</footer>
<script src="../popup.js"></script>
</body>
</html>
</xsl:template>
</xsl:stylesheet>