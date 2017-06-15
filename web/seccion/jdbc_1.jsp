<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>JDBC VS ODBC</h1>
        <p>�Qu� es ODBC?</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">ODBC  es una est�ndar que no depende de un lenguaje de programaci�n espec�fico
                o de un sistema de base de datos o de un sistema operativo. Se puede utilizar para escribir 
                aplicaciones que pueden consultar datos de cualquier base de datos, independientemente del entorno
                en el que se est� ejecutando o del tipo de DBMS que utilice.</p>
            <p class="text-justify">Podemos ver que JDBC y ODBC son muy similares la diferencia radica en que 
                JDBC es una API de datos s�lo para el lenguaje de programaci�n Java adem�s de que JDBC soporta 
                las funciones de Database Toolbox mientras que ODBC no.</p>
        </div>
        <div class="6u 12u(medium)">
            <p class="text-justify">Dado que el controlador ODBC act�a como un traductor entre la aplicaci�n y la base de 
                datos, ODBC es capaz de lograr la independencia de la plataforma y del idioma. Esto 
                significa que la aplicaci�n se libera de la carga de conocer el lenguaje espec�fico 
                de la base de datos. En su lugar, s�lo conocer� y utilizar� la sintaxis ODBS y el 
                controlador traducir� la consulta a la base de datos en un idioma que pueda entender. 
                A continuaci�n, los resultados se devuelven en un formato que puede ser entendido por 
                la aplicaci�n. La API de software ODBC se puede utilizar tanto con sistemas de base 
                de datos relacionales como no relacionales.</p>
        </div>
    </div> 
</section>

<!-- Section -->
<section style="padding-top: 6em">
    <header class="major">
        <h2>ENTONCES, POR QU� NO USAR SIMPLEMENTE ODBC DESDE JAVA?</h2>
    </header>
    <div class="features">
        <article>
            <span class="icon fa-key"></span>
            <div class="content">
                <p class="text-justify">ODBC no es apropiado para su uso directo desde Java porque usa una interface en C. 
                    Las llamadas desde Java a c�digo C nativo tienen un n�mero de inconvenientes en la 
                    seguridad, implementaci�n, robustez y portabilidad de las aplicaciones.</p>
            </div>
        </article>
        <article>
            <span class="icon fa-flag-o"></span>
            <div class="content">
                <p class="text-justify">Una traducci�n literal de la OBDC API en C a una API en Java no ser�a deseable. 
                    Por ejemplo, Java no tiene punteros y ODBC hace un copioso uso de ellos.</p>
            </div>
        </article>
        <article>
            <span class="icon fa-book"></span>
            <div class="content">
                <p class="text-justify">ODBC mezcla caracter�sticas elementales con otras m�s avanzadas 
                    y tiene complejas opciones incluso para las consultas m�s simples las cu�les JDBC
                    lleva a cabo de una manera m�s f�cil.</p>
            </div>
        </article>
        <article>
            <span class="icon fa-users"></span>
            <div class="content">
                <p>Una API en Java como JDBC es necesaria para conseguir una soluci�n "puramente Java",
                    el driver JDBC est� escrito totalmente en Java, el c�digo JDBC es 
                    autom�ticamente instalable, portable y seguro en todas las plataformas Java 
                    desde computadoras en red hasta mainframes. </p>
            </div>
        </article>
    </div>
</section>  
<button onclick="redirect('jdbc_2.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('jdbc.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>