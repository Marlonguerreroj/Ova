<section style="padding-top: 6em">
    <header class="main">
        <h1>La Herencia en Java</h1>
        <p>Ligadura dinámica</p>
    </header>
    <div class="row">      
        <div class="6u 12u(medium)">
            <p class="text-justify">La ligadura dinámica cuenta con una regla la cual expresa que la forma dinámica del objeto determina la versión de la operación que se aplicará. La versión de una rutina en una clase es la introducida por la clase (redefinición u original) o la heredada.</p>
            <h4>Ejemplo 1</h4>
            <pre><code>Persona persona = new Persona(...);
Docente docente = new Docente(..);

persona.getDescripcion(); //Versión Persona
docente.getDescripcion(); //Versión de Docente

persona = docente;

persona.getDescripcion(); //Versión de Docente
</code></pre>
        </div>
        <div class="6u 12u(medium)">
            <h4>Ejemplo 2</h4>
            <pre><code>class Uno {
public int test(){return 1;} 
public int result1(){return this.test();}
}
class Dos extends Uno { 
public int test(){return 2;}
}
class Tres extends Dos {
public int result2(){return this.result1();}
public int result3(){return super.test();} 
}
class Cuatro extends Tres {
public int test(){return 4;}
}
</code></pre>
        </div>
    </div>
    <div class="row">
        <div class="12u">
            <h4>Ejecución de Ejemplo 2</h4>
            <pre><code>public class PruebaSuperThis{
public static void main (String args[]){
Uno ob1 = new Uno();
Dos ob2 = new Dos();
Tres ob3 = new Tres();
Cuatro ob4 = new Cuatro();

System.out.println("ob1.test = "+ ob1.test());          //->1
System.out.println("ob1.result1 = " + ob1.result1());   //->1
System.out.println("ob2.test = " + ob2.test());         //->2
System.out.println("ob2.result1 = " + ob2.result1());   //->2
System.out.println("ob3.test = " + ob3.test());         //->2
System.out.println("ob4.result1 = " + ob4.result1());   //->4
System.out.println("ob3.result2 = " + ob3.result2());   //->2
System.out.println("ob4.result2 = " + ob4.result2());   //->4
System.out.println("ob3.result3 = " + ob3.result3());   //->2
System.out.println("ob4.result3 = " + ob4.result3());   //->2
}
}              
</code></pre>
        </div>
    </div>
</section>
<button id="rem" onclick="redirect('herencia06.jsp')" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('herencia04.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
<div class="text-center">
    <button onclick="redirect('ActH05.jsp')" id="rem" class=" buttons btn btn-primary">Actividad</button>
</div>