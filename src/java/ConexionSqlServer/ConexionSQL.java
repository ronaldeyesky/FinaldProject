/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConexionSqlServer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Eng-Ronald
 */
public class ConexionSQL {
    Connection co;
    Statement stm;
    
    public ConexionSQL(){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost/ventas?user=root&password=root");
        Statement stm = co.createStatement();      
        ResultSet rs = stm.executeQuery("Select * from Clientes");
        
        while(rs.next()){
            System.out.println(rs.getString("nombre"));
            System.out.println(rs.getString("apellido"));
            System.out.println(rs.getString("fecha_nacimiento"));
            System.out.println(rs.getString("direccion"));
        }
        }
        catch(ClassNotFoundException exc){
        exc.printStackTrace();
            }
        catch (SQLException ex) {
        Logger.getLogger(ConexionSQL.class.getName()).log(Level.SEVERE, null, ex);
           }
    }
          
}

