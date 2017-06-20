<section style="padding-top: 6em">
    <header class="main">
        <h1>La Herencia en Java</h1>
        <p>Herencia y Ocultamiento de la Información</p>
    </header>

    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">La herencia organiza las clases en una estructura jerárquicas formando jerarquías de clases. Por ejemplo:</p>
            <p class="text-justify">Si una clase <i>Estudiante</i> hereda de otra clase <i>Persona</i> entonces la clase estudiante incorpora la estructura (atributos) y comportamiento (métodos) de la clase <i>Persona</i>. De igual forma, la clase <i>Estudiante</i> puede incluir nuevos atributos, métodos y redefinir los métodos que hereda de la clase <i>Persona</i>. </p>

        </div>
        <div class="6u text-center 12u(medium)">
            <span class="image object">
                <img src="../images/herencia01.png" alt="" />
            </span>
        </div>
    </div>
    <p class="text-justify">El proceso de la herencia es transitivo, esto quiere decir que la clase <i>Docente</i> hereda de <i>Persona</i> (<i>Persona</i> es la súper clase y <i>Docente</i> la subclase) y <i>Docente_planta</i> hereda de <i>Docente</i> y de <i>Persona</i>. A nivel jerárquico <i>Docente</i> y <i>Docente_planta</i> son subclases de <i>Persona</i>; <i>Docente</i> es un descendiente directo de <i>Persona</i> y <i>Docente_planta</i> es un descendiente indirecto de <i>Persona</i>.</p>
    <p class="text-justify">Si los atributos de la clase <i>Persona</i> se definen como privados, todos sus descendientes heredarán todos los atributos, aunque no los vean. A esto se le conoce como Principio de ocultamiento de la información el cual hace referencia a que los atributos privados de un objeto no pueden ser modificados ni obtenidos a no ser que se haga a través de una invocación de un método.</p>
</section>
<button onclick="redirect('herencia02.jsp')" id="rem" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('herencia00.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
<div class="text-center">
<button onclick="redirect('ActH01.jsp')" id="rem" class=" buttons btn btn-primary">Actividad</button>
</div>


