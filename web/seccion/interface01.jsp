<section style="padding-top: 6em">
    <header class="main">
        <h1>Paquetes e Interfaces en JAVA</h1>
        <p>Implementación de Interface</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Cuando una clase implementa una interface, esta clase debe implementar los métodos definidos en la interfaz y si la clase no implementa todos los métodos de una interface debe declararse como abstracta.</p>
            <p class="text-justify">Una interface es útil para dar soporte a la herencia múltiple en JAVA, ya que una clase puede heredar de una única clase, puede implementar más de una interface y una interface puede extender más de una interface.</p>
            <h4>Ejemplo</h4>
            <h5>Clase <i>Persona</i></h5>
            <pre><code>public class Persona implements Cantante {
    private String nombre;
    private String apellidos;
    private int edad;
    private String descripcion;
    
    public Persona (String nombre, String apellidos, int edad) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
    }

    public void Cantar(String letra){
        System.out.println(letra);
    }
}               
</code></pre>
        </div>
        <div class="6u 12u(medium)">
            <h5>Clase <i>Test</i></h5>
            <pre><code>public class Test{
    public static void main(String arg[]){
        Persona p = new Persona();
        hacerCantar(p);
    }

    public static void hacerCantar(Cantante c){
        c.Cantar("LALALALALALA");
    }
}         
</code></pre>
            <a data-toggle="modal" data-target="#myModal" class="button special fit small">Video complementario</a>
        </div>
    </div>
</section>
<button onclick="redirect('interface02.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('interface00.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
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
                <iframe width="560" height="315" src="https://www.youtube.com/embed/7MlB-K9AMxY" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>