package gestionBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class Prestamo {
    Connection conexion = null;
    Statement sentencia = null;
    String nombreDB = "biblioteca";
    String url="jdbc:mysql://localhost:3306/" + nombreDB;
    String usuario = "root";
    String contrasenia = "";
    ResultSet resultados = null;
    public void prestarlibros(int cod_lp, int cod_up, String fecha_hp, String fecha_dp  ){
        
         try{
            
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contrasenia);
            
            sentencia=conexion.createStatement();
            String SQL= "insert into prestamo(id_libro,codigo_u,fecha_prestamo,fecha_devuelto)"
                    + "values("+cod_lp+","+cod_up+",'"+fecha_hp+"','"+fecha_dp+"')";
            
            sentencia.executeUpdate(SQL);
            sentencia.close();
            conexion.close();
            JOptionPane.showMessageDialog(null, "Prestamo realizado con exito!!");
            

        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, "Los datos ingresados no son validos!!");
            
        }
    
}
    
}

