<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>Clases y Métodos de JDBC</h1>
        <p>Finalizar Sentencia</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Al finalizar la ejecución y el procesado de nuestros resultados debemos 
                cerrar todos nuestros recursos (Objetos del tipo PreparedStatement, 
                ResultSet y Connection). A continuación de indicamos como:
            </p>
            <p class="text-justify">
                Primero debemos validar que ninguno de nuestos objetos a cerrar se encuentre en null para 
                evitar errores del tipo NullPointerException, luego dichos recursos cuentan con el 
                método close() que se encargará del cierre.</p>
        </div>
        <div class="6u text-center 12u(medium)">
            <pre>
                <code>if (sentencia != null) {
                sentencia.close();
            }
            if (resultado != null) {
                resultado.close();
            }
</code>
            </pre>
        </div>
    </div> 
</section>
<button onclick="redirect('jdbc_7.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('jdbc_5.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
