package gestionBD;

import static formularios.Menu.lb_nom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class Modificar {
    
    Connection conexion = null;
    Statement sentencias = null;
    String nombreDB = "biblioteca";
    String url="jdbc:mysql://localhost:3306/" + nombreDB;
    String usuario = "root";
    String contraseña = "";
    ResultSet resultados = null;
    
    public void modificarCliente(int rut,String nombre,String apellido,String direccion,String t_usuario,int pass,String codigo){
        
       try{
            
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            
            sentencias=conexion.createStatement();
            String SQL= "update usuario set rut = '"+rut+"',nombre = '"+nombre+"',apellido = '"+apellido+"',direccion = '"
                    +direccion+"',tipo_usuario = '"+t_usuario+"',pass = '"+pass+"' where codigo_u = " + codigo;
            JOptionPane.showMessageDialog(null, "Actualizacion exitosa!!");
            
            sentencias.executeUpdate(SQL);
            sentencias.close();
 
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, "Error: " + e);
        }
    }
    
    public void modificarLibros(int id,String titulo,String editorial,String seccion,int cantidad){
        
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            
            sentencias=conexion.createStatement();
            String SQL= "update libro set titulo = '"+titulo+"',editorial = '"+editorial+"',seccion = '"+seccion+"',cantidad = '"
                    +cantidad+"' where id_libro = " + id;
            JOptionPane.showMessageDialog(null, "Actualizacion exitosa!!");
            sentencias.executeUpdate(SQL);
            sentencias.close();
 
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, "Error: " + e);
        }
        
    }
    
}
