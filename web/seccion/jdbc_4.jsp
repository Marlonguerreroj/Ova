<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>Clases y M�todos de JDBC</h1>
        <p>Ejecutar Sentencia.</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Anteriormente declaramos una sentencia que listar� los elementos 
                que se encuentran en la tabla Productos. Para ejecutar dicha sentencia haremos 
                uso del m�todo executeQuery() de la clase Connection el cual recibe como 
                par�metro la sentencia a ejecutar y retornar� un objeto del tipo ResultSet 
                el cual nos permitir� obtener dichos resultados y trabajar con ellos.</p>
            
            <pre>
                <code>ResultSet resultado = conexi�n.executeQuery(sentencia);</code>
            </pre>
            <p class="text-justify">Con s�lo la l�nea de c�digo anterior ya hemos ejecutado nuestra 
                sentencia declarada anteriormente, pero, �C�mo vemos sus resultados? Lo veremos 
                en al siguiente secci�n.</p>
        </div>
    </div> 
</section>
<button onclick="redirect('jdbc_5.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('jdbc_3.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
