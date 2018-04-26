<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="img/color.css"/>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
        <title>Epr1</title>
    </head>
    <body background="img/fondo.jpg" align="center">
        <div style="color: white" align='center' style='font-family: Arial Rounded MT Bold'>
        <h1>Formulario</h1>
        </div>
        <%
          out.println("<meta charset='utf-8'>");
          
          
          out.println("<div align='center' style='font-family: Arial Rounded MT Bold'>" );
          out.println("<section style='width: 600px'>");
          out.println("<table border='2' class='table table-dark'>");
          out.println("<tr>");
          out.println("<td>");
          out.println("Nombre :");
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("nombre") + " " + request.getParameter("apaterno") + " " + request.getParameter("amaterno"));
          out.println("</td>");
          out.println("</tr>");
          out.println("<br>");
          out.println("<tr>");
          out.println("<td>");
          out.println("RUT :");
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("rut"));
          out.println("</td>");
          out.println("<br>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Fecha de nacimiento :");
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("fnac"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Nacionalidad :");
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("nacionalidad"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Direccion :");
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("direccion"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Telefono fijo :");
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("tfijo"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Telefono celular :");
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("tcel"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("</td>");
          out.println("<td>");
          out.println("Email :");
          out.println("</td>");
          
          out.println("</td>");
          out.println("<td>");
          out.println(request.getParameter("correo"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Sueldo Bruto: ");
          out.println("</td>");
          
          out.println("<td>");
          out.println(request.getParameter("sueldo"));
          out.println("</td>");
          out.println("</tr>");
          
          int sueldo=Integer.parseInt(request.getParameter("sueldo"));
          int dsalud=((sueldo*7)/100);
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Descuento de salud 7% :");
          out.println("</td>");
          out.println("<td>");
          out.println(dsalud);
          out.println("</td>");
          out.println("</tr>");
          
          int dafp=((sueldo*11)/100);
          
          out.println("</tr>");
          out.println("<td>");
          out.println("Descuento de afp 11% :");
          out.println("</td>");

          out.println("<td>");
          out.println(dafp);
          out.println("</td>");
          out.println("</tr>");
          
          int total=(dsalud+dafp);
          
          out.println("</tr>");
          out.println("<td>");
          out.println("Descuento total :");
          out.println("</td>");

          out.println("<td>");
          out.println(total);
          out.println("</td>");
          out.println("</tr>");
          
          int liquido=(sueldo-total);
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Su sueldo liquido es :");
          out.println("</td>");

          out.println("<td>");
          out.println(liquido);
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("N° de Cuenta: ");
          out.println("</td>");

          out.println("<td>");
          out.println(request.getParameter("cuenta"));
          out.println("</td>");
          out.println("</tr>");
          
          String ticuenta=request.getParameter("tcuenta");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Tipo de cuenta :"); 
          out.println("</td>");

          out.println("<td>");
          out.println(ticuenta.toUpperCase());
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Sexo :");; 
          out.println("</td>");

          out.println("<td>");
          out.println(request.getParameter("sexo"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Estado civil :"); 
          out.println("</td>");

          out.println("<td>");
          out.println(request.getParameter("estado_civil"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Cantidad de hijos :"); 
          out.println("</td>");

          out.println("<td>");
          out.println(request.getParameter("cantidad_hijo"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Comuna :"); 
          out.println("</td>");

          out.println("<td>");
          out.println(request.getParameter("comuna"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Tipo de salud :"); 
          out.println("</td>");

          out.println("<td>");
          out.println(request.getParameter("tipo_salud"));
          out.println("</td>");
          out.println("</tr>");
          
          out.println("<tr>");
          out.println("<td>");
          out.println("Banco :"); 
          out.println("</td>");

          out.println("<td>");
          out.println(request.getParameter("banco"));
          out.println("</td>");
          out.println("</tr>");

          out.println("</table>");
          
          out.println("<section>");
          out.println("</div>");
          %>
        
    </body>
</html>
