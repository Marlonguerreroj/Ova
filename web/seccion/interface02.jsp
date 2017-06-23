<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<section style="padding-top: 6em">
    <header class="main">
        <h1>Paquetes e Interfaces en JAVA</h1>
        <p>Aplicación</p>
    </header>
    <div class="row">
        <p class="text-justify">A continuación se realizará un ejemplo de definición y uso de interface en java. Las clases y relaciones que se implementaran se muestran en el siguiente diagrama.</p>
    </div>
    <div class="row">
        <div class="6u 12u(medium)">
            <span class="image object">
                <img src="../images/interface01.png" alt="" />
            </span>

            <h4>Clase <i>Cuadrado</i></h4>
            <pre><code>public class Cuadrado implements Figura {
    private float lado;
    public Cuadrado (float lado) {
        this.lado = lado;
    }
    public float area() {
        return lado*lado;
    }
}

</code></pre>
            <h4>Clase <i>Circulo</i></h4>
            <pre><code>public class Circulo implements Figura {
    private float diametro;
    public Circulo (float diametro) {
        this.diametro = diametro;
    }
    public float area() {
        return (PI*diametro*diametro/4f);
    }
}
</code></pre>
            <h4>Clase <i>Rectangulo</i></h4>
            <pre><code>public class Rectangulo implements Figura {
    private float lado; private float altura;
    public Rectangulo (float lado, float altura) {
        this.lado = lado; this.altura = altura;
    }
    public float area() {
        return lado*altura;
    }
}
</code></pre>

        </div>
        <div class="6u 12u(medium)">

            <h4>Clase <i>Figura</i></h4>
            <pre><code>public interface Figura {
    float PI = 3.1416f;
    float area();
}

</code></pre>
            <h4>Clase <i>Test</i></h4>
            <pre><code>import java.util.List;
import java.util.ArrayList;
public class TestInterface {
    public static void main (String [ ] Args) {
        Figura cuad1 = new Cuadrado (3.5f);
        Figura cuad2 = new Cuadrado (2.2f);
        Figura cuad3 = new Cuadrado (8.9f);
        Figura circ1 = new Circulo (3.5f);
        Figura circ2 = new Circulo (4f);
        Figura rect1 = new Rectangulo (2.25f, 2.55f);
        Figura rect2 = new Rectangulo (12f, 3f);
        List <Figura> serieDeFiguras = new ArrayList <Figura> ();
        serieDeFiguras.add (cuad1);
        serieDeFiguras.add (cuad2);
        serieDeFiguras.add (cuad3);
        serieDeFiguras.add (circ1);
        serieDeFiguras.add (circ2);
        serieDeFiguras.add (rect1);
        serieDeFiguras.add (rect2);
        float areaTotal = 0;
        for (Figura tmp: serieDeFiguras) {
            areaTotal = areaTotal + tmp.area();
        }
        System.out.println ("Tenemos un total de " + serieDeFiguras.size() + " figuras y su área total es de "  +
        areaTotal + " uds cuadradas");  } }
</code></pre>
                            <h3>Resultado obtenido</h3>
                            <p class="text-justify">Tenemos un total de 7 figuras y su área total es de 160.22504 uds cuadradas</p>
                            </div>
                            </div>
                            </section>
                            <button onclick="redirect('jdbc.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
                            <button onclick="redirect('interface01.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
                            <div class="text-center">
                                <button onclick="redirect('ActCru.jsp')" id="rem" class=" buttons btn btn-primary">Actividad</button>    
                                <c:if test = "${persona.examen1 <= 0}">
                                    <button onclick="redirect('Examen00.jsp')" id="rem" class=" buttons btn btn-primary">Examen</button>    
                                </c:if>
                            </div>