<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>Clases y Métodos de JDBC</h1>
        <p>Crear Sentencia.</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Crear una sentencia por medio de JDBC es muy sencillo, basta con 
                declarar la consulta en una cadena y pasarla como parámetro al método 
                prepareStatement(String consulta) de la clase Connection el cual retorna un objeto 
                del tipo PreparedStatement para su posterior ejecución.</p>
            <p class="text-justify">A continuación realizaremos una búsqueda en una tabla llamada Productos que almacena
                la información del stock de productos de una empresa</p>
            
            <table class="table table-responsive text-center">
                <thead>
                    <tr>
                        <th class="text-center" colspan="6">PRODUCTOS</th>
                    </tr>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>CANT_DISPONIBLE</th>
                        <th>PRECIO</th>
                        <th>ESTADO</th>
                        <th>FECHA_REGISTRO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Computadora Portátil Lenovo</td>
                        <td>0</td>
                        <td>1800000</td>
                        <td>0</td>
                        <td>16/02/2015</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Televisor Samsung 42"</td>
                        <td>30</td>
                        <td>1800000</td>
                        <td>1</td>
                        <td>15/03/2017</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Computadora Portátil Dell Inspiron</td>
                        <td>50</td>
                        <td>20000000</td>
                        <td>1</td>
                        <td>20/03/2017</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="6u text-center 12u(medium)">
            <p class="text-justify">Declaramos la consulta:</p>
            <pre>
                <code>String consulta = "SELECT * FROM Productos";</code>
            </pre>
            <p class="text-justify">Declaramos el objeto PreparedStatement que recibirá lo que retorne 
                el método prepareStatement() de la Clase Connection:</p>
            <pre><code>PreparedStatement sentencia = con.prepareStatement(consulta);</code>
            </pre>
            <p class="text-justify">De  ésta manera ya quedó creada nuestra sentencia ahora procederemos
                a ejecutarla.</p>
        </div>
    </div> 
</section>
<button onclick="redirect('jdbc_4.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('jdbc_2.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>

