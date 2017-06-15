<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>Clases y M�todos de JDBC</h1>
        <p>Establecer Conexi�n</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Las conexiones a base de datos se realizan por medio del DriverManager
                y el Driver (Controlador) espec�fico para conectarnos al motor de base de datos que 
                utilizaremos en nuestro proyecto.</p>
            <p class="text-justify">Como primer paso debemos instanciar el controlador que utilizaremos 
                pasando como par�metro un String con el nombre de dicho controlador, para nuestro 
                ejemplo nos conectaremos a una base de datos MySQL.</p>
            <pre>
                <code>Class.forName("com.mysql.jdbc.Driver").newInstance();</code>
            </pre>
            <p class="text-justify">De esta manera ya queda instanciado nuestro controlador de base de datos,
                luego la clase DriveManager ser� la encargada de abrir la conexi�n a base de datos mediante 
                el m�todo getConnection el cual se sobrecarga de tal forma que puede recibir de 3 manera 
                diferentes los par�metros de conexi�n, veremos el m�s com�n por su facilidad de uso, 
                en �l debemos especificar el servidor de nuestra base de datos, el usuario y contrase�a 
                de nuestra base de datos.</p>
            <p class="text-justify">La url se encuentra formada de la manera "jdbc: subprotocol:subname" donde
                el subprotocolo es el nombre de nuestro gestor de base de datos y el subname el 
                nombre de nuestro servidor junto con el nombre de nuestra base de datos.
            </p>
            <pre><code>String db_url = "jdbc:mysql://localhost/ufps_86";</code>
            </pre>

        </div>
        <div class="6u text-center 12u(medium)">
            <p class="text-justify">Luego de la url de conexi�n defininimos las credenciales de 
                nuestro usuario de base de datos:</p>
            <pre>
                <code>String db_usuario = "root";
String db_contrasena = "12345";
                </code>
            </pre>
            <p class="text-justify">Por �ltimo s�lo nos resta llamar al m�todo getConnection para establecer la conexi�n a 
                nuestra base de datos.</p>
            <pre>
                <code>try {
    Connection conexion = DriverManager.getConnection(db_url, db_usuario, db_contrasena);
    }catch (SQLException e){
         System.out.println( "ERROR: no se ha podido conectar" );
}</code>
            </pre>
            <p class="text-justify">Cabe recordar que se debe capturar una SQLException por si ocurre un error al intentar 
                realizar la conexi�n, de esta manera quedar�a establecida la conexi�n.</p>
        </div>
    </div> 
</section>

<!-- Section -->
<section style="padding-top: 6em">
    <header class="major">
        <h2>Ejemplo Completo:</h2>
    </header>
    <div class="row">
        <div class="12u 12u(medium)">
            <pre>
                <code>Connection conexion;
String db_url = "jdbc:mysql://localhost/miBD";
String db_driver = "com.mysql.jdbc.Driver";
String db_usuario = "root";
String db_contrasena = "12345";

try {
            Class.forName(db_driver).newInstance();
            conexion = DriverManager.getConnection(db_url, db_usuario, db_contrasena);
        } catch (SQLException e) {
            System.out.println( "ERROR: no se ha podido conectar" );
        } catch (ClassNotFoundException e1) {
            System.out.println( "ERROR: no se encontr� el Driver" );
        } catch (InstantiationException ex) {
            System.out.println( "ERROR: error al instanciar el Driver" );
        } catch (IllegalAccessException ex) {
            System.out.println( "ERROR: Acceso ilegal al Driver" );
        }

</code>
            </pre>
        </div>
    </div>
</section>  
<button onclick="redirect('herencia01.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
