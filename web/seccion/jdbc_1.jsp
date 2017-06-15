<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>JDBC VS ODBC</h1>
        <p>¿Qué es ODBC?</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">ODBC  es una estándar que no depende de un lenguaje de programación específico
                o de un sistema de base de datos o de un sistema operativo. Se puede utilizar para escribir 
                aplicaciones que pueden consultar datos de cualquier base de datos, independientemente del entorno
                en el que se esté ejecutando o del tipo de DBMS que utilice.</p>
            <p class="text-justify">Podemos ver que JDBC y ODBC son muy similares la diferencia radica en que 
                JDBC es una API de datos sólo para el lenguaje de programación Java además de que JDBC soporta 
                las funciones de Database Toolbox mientras que ODBC no.</p>
        </div>
        <div class="6u 12u(medium)">
            <p class="text-justify">Dado que el controlador ODBC actúa como un traductor entre la aplicación y la base de 
                datos, ODBC es capaz de lograr la independencia de la plataforma y del idioma. Esto 
                significa que la aplicación se libera de la carga de conocer el lenguaje específico 
                de la base de datos. En su lugar, sólo conocerá y utilizará la sintaxis ODBS y el 
                controlador traducirá la consulta a la base de datos en un idioma que pueda entender. 
                A continuación, los resultados se devuelven en un formato que puede ser entendido por 
                la aplicación. La API de software ODBC se puede utilizar tanto con sistemas de base 
                de datos relacionales como no relacionales.</p>
        </div>
    </div> 
</section>

<!-- Section -->
<section style="padding-top: 6em">
    <header class="major">
        <h2>ENTONCES, POR QUÉ NO USAR SIMPLEMENTE ODBC DESDE JAVA?</h2>
    </header>
    <div class="features">
        <article>
            <span class="icon fa-key"></span>
            <div class="content">
                <p class="text-justify">ODBC no es apropiado para su uso directo desde Java porque usa una interface en C. 
                    Las llamadas desde Java a código C nativo tienen un número de inconvenientes en la 
                    seguridad, implementación, robustez y portabilidad de las aplicaciones.</p>
            </div>
        </article>
        <article>
            <span class="icon fa-flag-o"></span>
            <div class="content">
                <p class="text-justify">Una traducción literal de la OBDC API en C a una API en Java no sería deseable. 
                    Por ejemplo, Java no tiene punteros y ODBC hace un copioso uso de ellos.</p>
            </div>
        </article>
        <article>
            <span class="icon fa-book"></span>
            <div class="content">
                <p class="text-justify">ODBC mezcla características elementales con otras más avanzadas 
                    y tiene complejas opciones incluso para las consultas más simples las cuáles JDBC
                    lleva a cabo de una manera más fácil.</p>
            </div>
        </article>
        <article>
            <span class="icon fa-users"></span>
            <div class="content">
                <p>Una API en Java como JDBC es necesaria para conseguir una solución "puramente Java",
                    el driver JDBC está escrito totalmente en Java, el código JDBC es 
                    automáticamente instalable, portable y seguro en todas las plataformas Java 
                    desde computadoras en red hasta mainframes. </p>
            </div>
        </article>
    </div>
</section>  
<button onclick="redirect('jdbc_2.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('jdbc.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>