<section style="padding-top: 6em">
    <header class="main">
        <h1>La Herencia en Java</h1>
        <p>Herencia y Sistema de tipos</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">Un lenguaje orientado a objetos tiene comprobaci�n est�tica de tipos si est� equipado con un conjunto de reglas de consistencia, cuyo cumplimiento es controlado por los compiladores, y que si el c�digo de un sistema las cumple se garantiza que ninguna ejecuci�n de dicho sistema puede provocar una violaci�n de tipos.</p>
            <p class="text-justify">Algunas reglas b�sicas son las de compatibilidad de tipos la cual comprueba si las asignaciones son v�lidas, y por otro lado est� la regla de validez de mensajes que como dice su nombre, requiere mensajes v�lidos. Los beneficios esperados de estas reglas son la fiabilidad, la legibilidad y la eficiencia.</p>
            <p class="text-justify">Un tipo B es compatible con un tipo A s�lo si la clase B es descendiente de la clase A y el paso de par�metros es v�lido solo si el tipo de par�metro real es compatible con el tipo del par�metro formal.</p>
        </div>
        <div class="6u 12u(medium)">
            <h4>Ejemplo</h4>
            <pre>
                <code>int x; 
double y;
x = y; // Funciona
y = x; //No funciona

Persona persona = new Docente(); //Es valido
Estudiante estudiante = new Estudiante(); //Es valido
persona = estudiante; //Es valido
DocenteCatedra docenteCatedra = estudiante; //No es valido

</code>
            </pre>
        </div>
    </div>
</section>
<button id="rem" onclick="redirect('herencia05.jsp')" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('herencia03.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
<div class="text-center">
    <button id="rem" class=" buttons btn btn-primary">Actividad</button>
</div>
