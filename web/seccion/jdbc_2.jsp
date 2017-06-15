<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>Clases y Métodos de JDBC</h1>
        <p>Establecer Conexión</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Las conexiones a base de datos se realizan por medio del DriverManager
                y el Driver (Controlador) específico para conectarnos al motor de base de datos que 
                utilizaremos en nuestro proyecto.</p>
            <p class="text-justify">Como primer paso debemos instanciar el controlador que utilizaremos 
                pasando como parámetro un String con el nombre de dicho controlador, para nuestro 
                ejemplo nos conectaremos a una base de datos MySQL.</p>
            <pre>
                <code>Class.forName("com.mysql.jdbc.Driver").newInstance();</code>
            </pre>
            <p class="text-justify">De esta manera ya queda instanciado nuestro controlador de base de datos,
                luego la clase DriveManager será la encargada de abrir la conexión a base de datos mediante 
                el método getConnection el cual se sobrecarga de tal forma que puede recibir de 3 manera 
                diferentes los parámetros de conexión, veremos el más común por su facilidad de uso, 
                en él debemos especificar el servidor de nuestra base de datos, el usuario y contraseña 
                de nuestra base de datos.</p>
            <p class="text-justify">La url se encuentra formada de la manera "jdbc: subprotocol:subname" donde
                el subprotocolo es el nombre de nuestro gestor de base de datos y el subname el 
                nombre de nuestro servidor junto con el nombre de nuestra base de datos.
            </p>
            <pre><code>String db_url = "jdbc:mysql://localhost/ufps_86";</code>
            </pre>

        </div>
        <div class="6u text-center 12u(medium)">
            <p class="text-justify">Luego de la url de conexión defininimos las credenciales de 
                nuestro usuario de base de datos:</p>
            <pre>
                <code>String db_usuario = "root";
String db_contrasena = "12345";
                </code>
            </pre>
            <p class="text-justify">Por último sólo nos resta llamar al método getConnection para establecer la conexión a 
                nuestra base de datos.</p>
            <pre>
                <code>try {
    Connection conexion = DriverManager.getConnection(db_url, db_usuario, db_contrasena);
    }catch (SQLException e){
         System.out.println( "ERROR: no se ha podido conectar" );
}</code>
            </pre>
            <p class="text-justify">Cabe recordar que se debe capturar una SQLException por si ocurre un error al intentar 
                realizar la conexión, de esta manera quedaría establecida la conexión.</p>
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
            System.out.println( "ERROR: no se encontró el Driver" );
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
