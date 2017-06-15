<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>Clases y Métodos de JDBC</h1>
        <p>Ejecutar Sentencia.</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Anteriormente declaramos una sentencia que listará los elementos 
                que se encuentran en la tabla Productos. Para ejecutar dicha sentencia haremos 
                uso del método executeQuery() de la clase Connection el cual recibe como 
                parámetro la sentencia a ejecutar y retornará un objeto del tipo ResultSet 
                el cual nos permitirá obtener dichos resultados y trabajar con ellos.</p>
            
            <pre>
                <code>ResultSet resultado = conexión.executeQuery(sentencia);</code>
            </pre>
            <p class="text-justify">Con sólo la línea de código anterior ya hemos ejecutado nuestra 
                sentencia declarada anteriormente, pero, ¿Cómo vemos sus resultados? Lo veremos 
                en al siguiente sección.</p>
        </div>
    </div> 
</section>
<button onclick="redirect('jdbc_5.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('jdbc_3.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
