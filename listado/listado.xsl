<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/listado">
<html>
    <head>
        <meta charset="utf-8"/>
        <link rel = "stylesheet" href="../css/style.css"/>
    </head>      
<body>
    <header class="sticky">
        <figure> 
            <img alt="Logo de la pagina" src="../Imagenes/Logo-Delicias.png" width="25%" height="25%"/>
        </figure>

        <button class="botonConcurso" id="botonConcurso">
            <p class="block">Nuestro concurso de recetas está a la vuelta de la esquina</p>
            <b class="block">Haz click para más información</b>
        </button>

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
        
        <nav class="paginacion">
            <a class="num_pag" href="#">Anterior</a>
            <a class="num_pag" href="#">1</a>
            <a class="num_pag" href="#">2</a>
            <a class="num_pag" href="#">3</a>
            <a class="num_pag" href="#">4</a>
            <a class="num_pag" href="#">5</a>
            <a class="num_pag" href="#">6</a>
            <a class="num_pag" href="#">Siguiente</a>
        </nav>
    </header>

<div class="clear"/>

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
    <ul class="lista_recetas">
        <li class="ejemplo_receta">
            <a href="../Recetas/receta_pasta.xml"> <h2> <xsl:value-of select="titulo"/> </h2> </a>
            <figure class="foto_ejemplo_receta">
                <a href="../Recetas/receta_pasta.xml">
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="foto/@ruta"/>
                        </xsl:attribute>
                        <xsl:attribute name="width">
                            <xsl:value-of select="foto/@width"/>
                        </xsl:attribute>
                        <xsl:attribute name="height">
                            <xsl:value-of select="foto/@height"/>
                        </xsl:attribute>                        
                        <xsl:attribute name="alt">
                            Foto de la Receta   
                        </xsl:attribute>
                    </xsl:element>
                </a>
            </figure>
            <p>
                <xsl:value-of select="descripcion"/>
            </p>
            <ul>
                <li class="borderbot">
                    Tiempo de preparación:
                    <figure class="icono">
                        <a class="margin20px"> <xsl:value-of select="tiempo"/> </a>
                        <img alt="Icono" src="../Imagenes/reloj.png" width="50px" height="50px"></img>
                    </figure>
                </li>
                <li class="borderbot">
                    Dificultad:
                    <figure class="icono">
                        <a class="margin20px"> <xsl:value-of select="dificultad"/> </a>
                        <img alt="Icono" src="../Imagenes/manos.png" width="50px" height="50px"></img>
                    </figure>
                </li>
                <li class="borderbot">
                    Vegetariana:
                    <figure class="icono">
                        <a class="margin20px"> <xsl:value-of select="vegetariana"/> </a>
                        <img alt="Icono" src="../Imagenes/vegan.png" width="50px" height="50px"></img>
                    </figure>
                </li>
                <li class="borderbot">
                    Autor:
                    <figure class="icono">
                        <a class="margin20px"> <xsl:value-of select="autor"/> </a>
                        <img alt="Icono" src="../Imagenes/autor.png" width="50px" height="50px"></img>
                    </figure>
                </li>
            </ul>
        </li>
    </ul>
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