
package gestionBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class Eliminar {
    
Connection conexion=null;
    Statement sentencias=null;
    String Basedatos="biblioteca";
    String url = "jdbc:mysql://localhost:3306/"+Basedatos;
    String usuario="root";
    String contraseña="";
    
     public void eliminar(int id){
         
          int op = JOptionPane.showConfirmDialog(null, "¿Esta seguro que desea eliminar este cliente?","Eliminar Cliente",
                    JOptionPane.YES_NO_OPTION,JOptionPane.INFORMATION_MESSAGE);
         
        if(op==0){
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            
            sentencias=conexion.createStatement();
            String SQL= "delete from usuario where codigo_u = "+ id;
            JOptionPane.showMessageDialog(null, "Cliente borrado con exito!!");
            
            sentencias.executeUpdate(SQL);
            sentencias.close();
            conexion.close();
 
        }catch(ClassNotFoundException | SQLException e){
            System.err.println("Error: " + e);
        }
                
            }
        else{
            
        }
    }
     
     public void eliminarRegistro(int id,int usuarios){
         
         int op = JOptionPane.showConfirmDialog(null, "¿Esta seguro que desea eliminar este registro?","Eliminar registro",
            JOptionPane.YES_NO_OPTION,JOptionPane.INFORMATION_MESSAGE);
         
        if(op==0){
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            
            sentencias=conexion.createStatement();
            String SQL= "delete from prestamo where id_libro="+id+" and codigo_u = "+usuarios;
            JOptionPane.showMessageDialog(null, "Libro borrado con exito!!");
            
            sentencias.executeUpdate(SQL);
            sentencias.close();
            conexion.close();
 
        }catch(ClassNotFoundException | SQLException e){
            System.err.println("Error: " + e);
        }
                
            }
        else{

        }
     }
     
     public void eliminarLibro(int id){
         
            int op = JOptionPane.showConfirmDialog(null, "¿Esta seguro que desea eliminar este libro?","Eliminar Libro",
            JOptionPane.YES_NO_OPTION,JOptionPane.INFORMATION_MESSAGE);
         
        if(op==0){
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            
            sentencias=conexion.createStatement();
            String SQL= "delete from libro where id_libro="+id;
            JOptionPane.showMessageDialog(null, "Libro borrado con exito!!");
            
            sentencias.executeUpdate(SQL);
            sentencias.close();
            conexion.close();
 
        }catch(ClassNotFoundException | SQLException e){
            System.err.println("Error: " + e);
        }
                
            }
        else{

        }
     }
}
