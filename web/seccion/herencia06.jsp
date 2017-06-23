<section style="padding-top: 6em">
    <header class="main">
        <h1>La Herencia en Java</h1>
        <p>Clase Object y Clases abstractas</p>
    </header>
    <div class="row">
        <div class="6u 12u(medium)">
            <p class="text-justify">En JAVA existe una clase "ra�z" en la jerarqu�a de la cual heredan las dem�s directa o indirectamente. A esta clase se le se conoce como Object, dicha clase incluye las caracter�sticas comunes a todos los objetos y una variable de tipo Object puede apuntar a cualquier tipo de lenguaje, incluido los tipos primitivos.</p>
            <h5>Ejemplo</h5>
            <pre><code>Object obj = 4;
float i = (Float)obj;
</code></pre>
            <dl>
                <dt>M�todos clase Object</dt>
                <dd>
                    <p>Entre los m�todos se encuentran los siguientes:</p>
                </dd>
                <dt>Equals</dt>
                <dd>
                    <p>public boolean equals(Object obj){
                        //Igualdad de objetos
                        }</p>
                </dd>
                <dt>Clone</dt>
                <dd>
                    <p>protected Object clone(){
                        //Clonaci�n de objetos
                        }</p>
                </dd>
                <dt>toString</dt>
                <dd>
                    <p>public String toString(){//Representaci�n textual de un objeto}</p>
                </dd>
                <dt>getClass</dt>
                <dd>
                    <p>public Class getClass(){//Clase a partir de la que ha sido instanciado un
                        objeto.}</p>
                </dd>
            </dl>

        </div>
        <div class="6u 12u(medium)">
            <dl>
                <dt>hasCode</dt>
                <dd>
                    <p>public int hashCode(){//C�digo hash utilizado en las colecciones.}</p>
                </dd> 
            </dl>
            <p class="text-justify">Por otro lado, se considera una clase abstracta toda clase que contenga alg�n m�todo abstracto (heredado o no); Una clase puede ser abstracta y no contener ning�n m�todo abstracto; Las clases abstractas s�lo tienen sentido en un lenguaje con comprobaci�n est�tica de tipos.</p>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/wSt523lfPFY" frameborder="0" allowfullscreen></iframe>
        </div>
        <p class="text-justify"></p>
        <p class="text-justify"></p>
    </div>
</section>
<button id="rem" onclick="redirect('interface00.jsp')" class="pull-right buttons btn btn-primary">Siguiente</button>
<button onclick="redirect('herencia05.jsp')" id="rem" class="pull-left buttons btn btn-primary">Anterior</button>
<div class="text-center">
    <button onclick="redirect('ActH06.jsp')" id="rem" class=" buttons btn btn-primary">Actividad</button>
</div>