package gestionBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class Agregar {
    Connection conexion = null;
    Statement sentencia = null;
    String nombreDB = "biblioteca";
    String url="jdbc:mysql://localhost:3306/" + nombreDB;
    String usuario = "root";
    String contrasenia = "";
    
    
    public void agregarLibro(String titulo,String editorial, String seccion, int cantidad,boolean estado){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, 
                    usuario, contrasenia);
            String sql = "insert into libro(titulo,editorial,seccion,cantidad)"
                    + "values('"+titulo+"','"+editorial+"','"+seccion+"','"+cantidad+"')";
             JOptionPane.showMessageDialog(null,"Registro con exito!!");
            sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            conexion.close();
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, 
                    "Error:"+e.getMessage(), "Error!!", 
                    JOptionPane.ERROR_MESSAGE, null);
        }//fin catch 
    }
    public void agregarCliente (int rut, String nombre, String apellido, String direccion,String tipo,int pass){
         try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, 
                    usuario, contrasenia);
            String sql = "insert into usuario(rut,nombre,apellido,direccion,tipo_usuario,pass)"
                    + "values("+rut+",'"+nombre+"','"+apellido+"','"+direccion+"','"+tipo+"',"+pass+")";
            sentencia = conexion.createStatement();
            sentencia.executeUpdate(sql);
            sentencia.close();
            conexion.close();
            JOptionPane.showMessageDialog(null,"Registro con exito!!");
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, 
                    "Error:"+e.getMessage(), "Error!!", 
                    JOptionPane.ERROR_MESSAGE, null);
        }//fin catch 
    }
}
