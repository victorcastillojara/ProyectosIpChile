<%-- 
    Document   : index
    Created on : 08-04-2018, 0:41:19
    Author     : Chronos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<head>
	<title>Epr1</title>
</head>
<body background="img/fondo.jpg">
    
    
    <div align="center">
        
        <section style="width: 600px">
    <div align="center">
        <h1 class="form-signin-heading" style="color: white;">Formulario</h1>
    </div> 
    
    
<form action="recibe.jsp" method="post">
	
    
        
    
	<div class="row" align="center">
		<div class="col" >
		<label style="color: white;" for="name">Nombres:</label><br>
		<input type="text" class="form-control" name="nombre" placeholder="José tomas" required>
	</div>
		<div class="col">
			<label style="color: white;" for="apellido1">Apellido paterno</label><br>
			<input type="text" class="form-control" name="apaterno" placeholder="Castro" required>
		</div>
	</div>
		<div class="row" align="center">
			<div class="col">
			<label style="color: white;" for="apellido2">Apellido materno:</label><br>
			<input type="text" class="form-control"  name="amaterno" placeholder="Nuñez" required>
		</div>
		<div class="col">
			<label style="color: white;" for="rut">RUT</label><br>
			<input type="text" class="form-control"  name="rut" placeholder="12345678-9" required>
		</div>
		</div>
		<div class="row" align="center">
			<div class="col">
				<label style="color: white;" for="fnac">Fecha de naimiento:</label><br>
	<input type="text" class="form-control"  name="fnac" placeholder="dd/mm/aaa" required>
			
		</div>
		<div class="col">
			<label style="color: white;" for="nacionalidad">Nacionalidad</label><br>
	<input type="text" class="form-control"  name="nacionalidad" placeholder="chileno" required>
			
		</div>
		</div>
		<div class="row" align="center">
			<div class="col">
			<label style="color: white;" for="direccion">Direccion</label><br>
	<input type="tex" class="form-control" name="direccion" placeholder="av santa rosa 123">
		</div>
		<div class="col">
			<label style="color: white;" for="tfijo">Telefono fijo</label><br>
	<input type="text" class="form-control" name="tfijo" placeholder="22222222">	
		</div>
		</div>

	<div class="row" align="center">
		<div class="col">
		<label style="color: white;" for="tcel">Telefono celular</label><br>
	<input type="text" class="form-control" name="tcel" placeholder="9-1232131" required>	
		</div>
		<div class="col">
		<label style="color: white;" for="email">E-mail</label><br>
	<input type="email" class="form-control" name="correo" placeholder="ejemplo@ejemplo.com" required>	
		</div>
	</div>
	<div class="row" align="center">
		<div class="col">
		<label style="color: white;" for="sueldo">Sueldo bruto</label><br>
	<input type="text" class="form-control" name="sueldo" placeholder="300000" required>	
		</div>
		<div class="col">
		<label style="color: white;"for="cuenta">N° Cuenta</label><br>
	<input type="text" class="form-control" name="cuenta" placeholder="98376453" required>	
		</div>
	</div>
	<div class="row" align="center">
		<div class="col">
		<label style="color: white;" for="tcuenta">Tipo de cuenta</label><br>
	<input type="text" class="form-control" name="tcuenta" placeholder="vista,cta corriente, etc">	
		</div>
	</div>
	<div align="center">
            <input type="radio" name="sexo" value="masculino" ><label style="color: white;">M</label>
            <input type="radio" name="sexo" value="femenino" ><label style="color: white;">F</label>
	</div>
	
<div class="dropdown" align="center">
	<select name="estado_civil"  class="btn btn-secondary dropdown-toggle" id="estado_civil">
		<option style="color: white;" name="estado_civil" value="" disabled selected>--Estado civil--</option>
		<option name="estado_civil" value="Soltero(a)">Soltero(a)</option>
		<option name="estado_civil" value="Casado(a)">Casado(a)</option>
		<option name="estado_civil" value="Viudo(a)">Viudo(a)</option>
		<option name="estado_civil" value="Divorciado(a)">Divorciado(a)</option>
		<option name="estado_civil" value="Conviviente civil">Conviviente civil</option>

	</select>

	
	<select name="cantidad_hijo" class="btn btn-secondary dropdown-toggle" id="cantidad_hijo">
		<option style="color: white;" name="cantidad_hijo" value="" disabled selected>--Cantidad de hijos</option>
		<option value="0">0</option>
		<option value="entre 1 y 2">entre 1 y 2</option>
		<option value="entre 3 y 4">entre 3 y 4</option>
		<option value="5 o mas">5 o mas</option>

	</select>
	<select name="comuna" class="btn btn-secondary dropdown-toggle" id="comuna">
		<option style="color: white;" value="" disabled selected>--Comuna--</option>
		<option value="Santiago">Santiago</option>
		<option value="Cerrillos">Cerrillos</option>
		<option value="Cerro Navia">Cerro Navia</option>
		<option value="Conchalí">Conchalí</option>
		<option value="Bosque">El Bosque</option>
		<option value="Estación">Estación Central</option>
		<option value="Huechuraba">Huechuraba</option>
		<option value="Independencia">Independencia</option>
		<option value="La Cisterna">La Cisterna</option>
		<option value="La Florida">La Florida</option>
		<option value="La Granja">La Granja</option>
		<option value="La Pintana">La Pintana</option>
		<option value="La Reina">La Reina</option>
		<option value="Las Condes">Las Condes</option>
		<option value="Lo Barnechea">Lo Barnechea</option>
		<option value="Lo Espejo">Lo Espejo</option>
		<option value="Lo Prado">Lo Prado</option>
		<option value="Macul">Macul</option>
		<option value="Maipú">Maipú</option>
		<option value="Ñuñoa">Ñuñoa</option>
		<option value="Pedro Aguirre Cerda">Pedro Aguirre Cerda</option>
		<option value="Peñalolén">Peñalolén</option>
		<option value="Providencia">Providencia</option>
		<option value="Pudahuel">Pudahuel</option>
		<option value="Quilicura">Quilicura</option>
		<option value="Quinta Normal">Quinta Normal</option>
		<option value="Recoleta">Recoleta</option>
		<option value="Renca">Renca</option>
		<option value="San Joaquín">San Joaquín</option>
		<option value="San Miguel">San Miguel</option>
		<option value="San Ramon">San Ramon</option>
		<option value="Vitacura">Vitacura</option>
	</select>
	<select name="tipo_salud" class="btn btn-secondary dropdown-toggle" id="tipo_salud">
		<option value="" style="color: white;" disabled selected>--Fondo de salud--</option>
		<option value="Fonasa">Fonasa</option>
		<optgroup label="Isapre">
			<option value="Chuquicamata Ltda.">Chuquicamata Ltda.</option>
			<option value="Colmena Golden Cross S.A.">Colmena Golden Cross S.A.</option>
			<option value="Consalud S.A.">Consalud S.A.</option>
			<option value="Cruz Blanca S.A.">Cruz Blanca S.A.</option>
			<option value="Cruz del Norte Ltda.">Cruz del Norte Ltda.</option>
			<option value="Nueva Masvida S.A.">Nueva Masvida S.A.</option>
			<option value="Fundación Ltda.">Fundación Ltda.</option>
			<option value="Fusat Ltda.">Fusat Ltda.</option>
			<option value="Río Blanco Ltda.">Río Blanco Ltda.</option>
			<option value="Vida Tres S.A.">Vida Tres S.A.</option>
			<option value="Banmédica">Banmédica</option>
		</optgroup>
	</select>
	<select name="banco" class="btn btn-secondary dropdown-toggle" id="banco">
		<option value="" disabled selected>--Bancos--</option>
		<option value="BCI">BCI</option>
		<option value="Banco de chile">Banco de chile</option>
		<option value="Banco estado">Banco estado</option>
		<option value="Banco santander">Banco santander</option>
		<option value="BBVA">BBVA</option>
		<option value="BICE">BICE</option>
		<option value="Condell">Condell</option>
		<option value="Credi chile">Credi chile</option>
		<option value="Edwards citi">Edwards citi</option>
		<option value="Banco Falabella">Banco Falabella</option>
		<option value="Internacional">Internacional</option>
		<option value="Itaú">Itaú</option>
		<option value="Banco ripley">Banco ripley</option>
		<option value="Security">Security</option>
		<option value="Corpbanca">Corpbanca</option>
		<option value="Banefe">Banefe</option>
		<option value="Scotiabank">Scotiabank</option>
	</select>
	</div>
    
    <div align="center">
	<button class="btn btn-primary" type="submit">Enviar</button>

    </div>
</form>
            </section>
        </div>

</body>
</html>
