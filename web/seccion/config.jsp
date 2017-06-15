<section style="padding-top: 2em">
    <header class="main">
        <h1>Actualización de los datos de usuario </h1>
    </header>
    <form id="actForm" enctype="multipart/form-data">
        <div class="row" style="padding-bottom: 10px">
            <div class="3u 6u(medium) 8u(small) mini-posts">
                <article>
                    <a class="image"><img src="${persona.imagen}" alt="" /></a>
                </article>
                <input href="#" name="file" id="file" type="file" value="Seleccionar foto"/>
            </div>
        </div>

        <div class="row">

            <div class="2u 6u(medium) 12u(small)">
                <label for="codigo">Código</label>
                <input type="text" disabled name="codigo" value="${persona.codigo}" id="codigo" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="nombre">Nombre</label>
                <input type="text" value="${persona.nombre}" name="nombre" id="nombre" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="apellido">Apellido</label>
                <input type="text" value="${persona.apellido}" name="apellido" id="apellido" />
            </div> 
            <div class="2u 6u(medium) 12u(small)">
                <label for="apellido"># Celular</label>
                <input type="text" value="${persona.celular}" name="celular" id="celular" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="correo">Correo electrónico</label>
                <input type="text" disabled name="correo" value="${persona.correo}" id="correo" />
            </div>
            <div class="5u 6u(medium) 12u(small)">
                <label for="tUsuario">Tipo usuario</label>
                <input type="text" value="${persona.tipo.tipo}" disabled id="tUsuario" />
                <input hidden name="sendAct" value="true" />
            </div>
        </div>
        <div class="text-center" style="padding-top:15px">
            <a class="button" onclick="location.reload()">Cancelar</a>
            <button class="button">Actualizar</button>
        </div>
    </form>
</section>