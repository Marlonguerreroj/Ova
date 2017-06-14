<section style="padding-top: 6em">
    <header class="main">
        <h1>Paquetes e Interfaces en JAVA</h1>
        <p>Definición e Introducción Interfaces</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Por defecto, toda la definición de una interface es publica y solo contiene definiciones de métodos y constantes (Los métodos son abstractos, no es necesario especificarlo explícitamente). De igual forma, no se puede crear un objeto del tipo de la interface, pero si utilizarlo en la declaración de variables (una interface es un tipo).</p>
            <h4>Ejemplo de Interfaz</h4>
            <p class="text-justify">Se definirá una interfaz Cantante, es una interfaz muy sencilla que sólo posee un método: <i>Cantar</i></p>
            <pre><code>public interface Cantante {
    public void Cantar(String letra);
}
</code></pre>
        </div>
        <div class="6u text-center 12u(medium)">
            <span class="image object">
                <img src="../images/interface00.png" alt="" />
            </span> 
        </div>
    </div> 
</section>
<button onclick="redirect('interface01.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('herencia06.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
<div class="text-center">
<button id="rem" class=" buttons btn btn-primary">Actividad</button>
</div>