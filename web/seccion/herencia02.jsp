<section style="padding-top: 6em">
    <header class="main">
        <h1>La Herencia en Java</h1>
        <p>Redefinición o sobre escritura de características</p>
    </header>

    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Al heredar es posible redefinir los comportamientos (métodos) para adaptarlos a la semántica de la nueva clase (clase descendiente), esta redefinición reconcilia la reutilización con la extensibilidad. Es inusual reutilizar una clase sin la necesidad de hacer cambios.</p>
            <p class="text-justify">La estructura de una clase (atributos) no pueden ser redefinidos, solo se ocultan. Por ejemplo, si la clase descendiente define un atributo con el mismo nombre de un atributo de la clase padre, este no está accesible. Aunque el campo de la superclase aún existe, no se puede acceder a ella.</p>
            <p class="text-justify">Por otro lado, los comportamientos (métodos) de la clase descendiente con el mismo nombre y atributos pueden ser redefinidos. Este proceso puede ser por dos motivos:</p>

        </div>
        <div class="6u 12u(medium)">
            <dl>
                <dt>A.	Reemplazo</dt>
                <dd>
                    <p>Se sustituye toda la implementación del comportamiento heredado manteniendo la semántica.</p>
                </dd>
                <dt>B.	Refinamiento</dt>
                <dd>
                    <p>Se añade nueva funcionalidad al comportamiento heredado. La palabra reservada Super se debe utilizar para el refinamiento de métodos.</p>
                </dd>
            </dl>
            <a data-toggle="modal" data-target="#myModal" class="button special fit small">Video complementario</a>
        </div>
    </div>
    <div class="row">
        <div class="6u 12u(medium)">
            <h4>Ejemplo clase <i>Persona</i></h4>
            <pre>
                <code>public class Persona {
    private String nombre;
    private String apellidos;
    private int edad;
    private String descripcion;
    
    public Persona (String nombre, String apellidos, int edad) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;                   }
    
    public String getNombre () { return nombre;  }
    public String getApellidos () { return apellidos;  }
    public int getEdad () { return edad;   }
    public String getDescripcion(){return descripcion;}
}</code>
            </pre>
        </div>
        <div class="6u 12u(medium)">
            <h4>Ejemplo clase <i>Profesor</i></h4>
            <pre>
                <code>public class Profesor extends Persona {
    private String IdProfesor;

    public Profesor (String nombre, String apellidos, int edad) {
        super(nombre, apellidos, edad);
        IdProfesor = "Desconocido";   } 

    public void setIdProfesor (String IdProfesor) { this.IdProfesor = IdProfesor;   }
    public String getIdProfesor () { return IdProfesor;   }
    public void mostrarNombreApellidosYCarnet() {
        System.out.println ("Profesor de nombre: " + getNombre() + " " +  getApellidos() +
         " con Id de profesor: " + getIdProfesor() ); }
} 

</code>
            </pre>
        </div>
    </div>
</section>
<button id="rem" onclick="redirect('herencia03.jsp')" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('herencia01.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
<div class="text-center">
    <button id="rem" class=" buttons btn btn-primary">Actividad</button>
</div>


<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Video complementario</h4>
            </div>
            <div class="modal-body">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/CYNLhg42O9c" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>