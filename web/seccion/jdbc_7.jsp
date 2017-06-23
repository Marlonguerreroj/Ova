<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!-- Banner -->
<section id="jdSec" style="padding-top: 6em">
    <header class="main">
        <h1>Clases y M�todos de JDBC</h1>
        <p>Cerrar Conexi�n</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">De la misma manera en que cerramos nuestros recursos 
                PreparedStatement y ResultSet, la clase Connection cuenta con un m�todo close() 
                que cierra la conexi�n a nuestro servidor de base de datos.
            </p>
            <pre>
                <code>if(conexi�n �= null){
		conexi�n.close();
	  }
</code>
            </pre>
            <p class="text-justify">
                Cabe recalcar que tanto el cierre de recursos como de conexi�n se debe realizar bajo 
                cualquier resultado al intentar realizar un acceso a la base de datos. �A que nos 
                referimos con esto? A que si el m�todo debe cerrar los recursos y la conexi�n tanto 
                como si se ejecuta normalmente como si se lanza una excepci�n de cualquier tipo. 
            </p>
            <p class="text-justify">Esto se logra mediante el bloque finally.</p>
            <pre>
                <code>finally{
	if (sentencia != null) {
                sentencia.close();
            }
            if (resultado != null) {
                resultado.close();
            }
		if(conexi�n �= null){
		conexi�n.close();
		  }
}</code>
            </pre>
        </div>
        <div class="6u text-center 12u(medium)">
            <p class="text-justify">A continuaci�n dejaremos el c�digo completo para una mejor apreciaci�n.</p>
            <pre>
                <code>public ArrayList&lt;Producto&gt; listarProductos(){
String consulta = "SELECT * FROM Productos";
PreparedStatement sentencia;
ResultSet resultado;
Connection conexion;

try{
conexion = getConnection();
sentencia = con.prepareStatement(consulta);
resultado = conexi�n.executeQuery(sentencia);

ArrayList&lt;Producto&gt; listadoDeProductos = new ArrayList&lt;&gt;(0);
Producto producto;

while(resultado.next()){
    producto = new Producto( resultado.getLong(1), resultado.getString(2), 
    resultado.getInt(3), resultado.getDouble(4), resultado.getBoolean(5), resultado.getDate(6));
    listadoDeProductos.add(producto);
} catch(SQLException e){
    System.out.println("Error al intentar realizar la consulta");
} finally{
    if (sentencia != null) {
        sentencia.close();
    }
    if (resultado != null) {
        resultado.close();
    }
    if(conexi�n �= null){
        conexi�n.close();
    }
}</code>
            </pre>
        </div>
    </div> 
</section>
<button onclick="redirect('jdbc_6.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
<div class="text-center">
    <button onclick="redirect('ActJdbc_7.jsp')" id="rem" class=" buttons btn btn-primary">Actividad</button>
    <c:if test = "${persona.examen2 <= 0}">
        <button onclick="redirect('Examen01.jsp')" id="rem" class=" buttons btn btn-primary">Examen</button>    
    </c:if>
</div>
