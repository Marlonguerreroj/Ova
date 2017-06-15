<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>Clases y Métodos de JDBC:</h1>
        <p>Procesar Resultados</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">La interface ResultSet posee un método llamado next() el cual 
                retornará true mientras haya filas por recorrer (Recuerda que el ResultSet 
                contiene todas las filas que retorna nuestra consulta declarada anteriormente), 
                luego con éste método podremos iterar hasta que nuestro ResultSet no contenga más 
                filas. Así mismo dicho método cada que es invocado mueve su cursor a la siguiente fila. </p>
            <p class="text-justify">La forma de obtener los valores de cada campo de las filas en nuestro 
                ResultSet es por medio de los métodos get que dicha interface nos ofrece, cada método 
                get nos permite llamarlo pasando como parámetro el número de la columna en la tabla o 
                el nombre de dicha columna.</p>
            <p class="text-justify">Veamos su uso en el siguiente ejemplo donde guardaremos en un ArrayList
                el listado de Productos de nuestra Base de Datos. La clase Producto cuenta con los siguientes atributos:</p>
            
            <pre>
                <code>public class Producto{
    private long id;
    private String nombreProducto;
    private int cantidadDisponible;
    private double precioUnitario;
    private boolean estado;
    private Date fechaRegistro;
    
    public Producto(long id, String nombre, int cantidadDisponible, double precioUnitario, boolean estado, Date fechaRegistro){
        this.id = id;
        this.nombre = nombre;
        this.cantidadDisponible = cantidadDisponible;
        this.preciounitario = precioUnitario;
        this.estado = estado;
        this.fechaRegistro = fechaRegistro;
    }
}</code>
            </pre>

        </div>
        <div class="6u text-center 12u(medium)">
            <p class="text-justify">Recordando que anteriormente habíamos ejecutado nuestra sentencia y 
                asignado el valor retornado a nuestro ResultSet resultado:</p>
            <pre>
                <code>ResultSet resultado = conexión.executeQuery(sentencia);</code>
            </pre>
            <p class="text-justify">Procedemos a procesarlo y a almacenarlo en nuestro Arraylist:</p>
            <pre>
                <code>ArrayList&lt;Producto&gt; listadoDeProductos = new ArrayList&lt;&gt;(0);
Producto producto;
while(resultado.next()){
	producto = new Producto( resultado.getLong(1), resultado.getString(2), 
        resultado.getInt(3), resultado.getDouble(4), resultado.getBoolean(5), resultado.getDate(6));
        listadoDeProductos.add(producto);
    }
</code>
            </pre>
        </div>
    </div> 
</section>

<!-- Section -->
<section style="padding-top: 6em">
    <header class="major">
        <h2>Otra manera de procesar los resultados.</h2>
    </header>
    <div class="6u 12u(medium)">
            <p class="text-justify">En el ejemplo anterior obtuvimos los resultados de nuestra
                consulta por medio de los índices de las columnas de nuestra tabla Productos, 
                también lo hubiéramos podido hacer por medio del nombre de las columnas de 
                la siguiente manera:</p>
            
            <pre>
                <code>ArrayList&lt;Producto&gt; listadoDeProductos = new ArrayList&lt;&gt;(0);
Producto producto;

while(resultado.next()){
    producto = new Producto( resultado.getLong("id"), 
    resultado.getString("nombreProducto"), 
    resultado.getInt("cantidadDisponible"), 
    resultado.getDouble("preciounitario"), resultado.getBoolean("estado"), resultado.getDate("fechaRegistro"));
    listadoDeProductos.add(producto);
}
</code>
            </pre>
        </div>
</section>  
<button onclick="redirect('jdbc_6.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('jdbc_4.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
