<!-- Banner -->
<section style="padding-top: 6em">
    <header class="main">
        <h1>JDBC: Bases de Datos desde Java</h1>
        <p>¿Qué es JDBC?</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">JDBC es una API que permite la ejecución de operaciones sobre bases de datos desde 
                el lenguaje de programación Java, independientemente del sistema operativo donde se ejecute o de 
                la base de datos a la cual se accede, utilizando el dialecto SQL del modelo de base de datos que 
                se utilice.</p>
            <p class="text-justify">Para utilizar una base de datos particular, el usuario ejecuta su programa junto con la 
                biblioteca de conexión apropiada al modelo de su base de datos, y accede a ella 
                estableciendo una conexión; para ello provee el localizador a la base de datos y los 
                parámetros de conexión específicos. A partir de allí puede realizar cualquier tipo de 
                tarea con la base de datos a la que tenga permiso: consulta, actualización, creación, 
                modificación y borrado de tablas, ejecución de procedimientos almacenados en la base de 
                datos, etc.</p>
            <p class="text-justify">Las interfaces están integradas en la API estándar de J2SE:</p>
            <ul>
                <li>
                    Paquete java.sql
                </li>
                <li>
                    Paquete javax.sql
                </li>
            </ul>
            <p class="text-justify">Pero se necesita adicionalmente un driver JDBC, que es una implementación de dichas 
                interfaces, cada uno de estos drivers es específico para cada programa gestor de base de datos y en la mayoría 
                de los casos es proporcionado por el proveedor del gestor de bases de datos.</p>

        </div>
        <div class="6u text-center 12u(medium)">
            <span class="image object">
                <img src="../images/herencia.png" alt="" />
            </span> 
        </div>
    </div> 
</section>

<!-- Section -->
<section style="padding-top: 6em">
    <header class="major">
        <h2>Algunas perspectivas</h2>
    </header>
    <div class="features">
        <article>
            <span class="icon fa-book"></span>
            <div class="content">
                <p class="text-justify">"Recuerda: no eres torpe, no importa lo que digan esos libros. Los torpes de verdad son gente que, creyéndose expertos técnicos, no podrían diseñar hardware y software manejable por usuarios normales aunque la vida les fuera en ello"<br>- Walter Mossberg</p>
            </div>
        </article>
        <article>
            <span class="icon fa-flag-o"></span>
            <div class="content">
                <p class="text-justify">"En software, muy raramente partimos de requisitos con sentido. Incluso teniéndolos, la única medida del éxito que importa es si nuestra solución resuelve la cambiante idea que el cliente tiene de lo que es su problema"<br>- Jeff Atwood</p>
            </div>
        </article>
        <article>
            <span class="icon fa-quote-left"></span>
            <div class="content">
                <p class="text-justify">"Codifica siempre como si la persona que finalmente mantendrá tu código fuera un psicópata violento que sabe dónde vives"<br>- Martin Golding</p>
            </div>
        </article>
        <article>
            <span class="icon fa-users"></span>
            <div class="content">
                <p>"No puedes crear un gran software sin un gran equipo, y la mayoría de los equipos de desarrollo se comportan como familias disfuncionales"<br>- Jim McCarthy</p>
            </div>
        </article>
    </div>
</section>  
<button onclick="redirect('jdbc_1.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('interface02.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>