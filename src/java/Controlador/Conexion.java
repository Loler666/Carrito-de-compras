/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Alumno
 */
public class Conexion {
    private String usuario="root";
    private String contraseña="n0m3l0";
    private String host="localhost";
    private String puerto="3306";
    private String database="carritoalexis";
    private String ClassName="com.mysql.jdbc.Driver";
    private final String url ="jdbc:mysql://"+host+":"+puerto+"/"+database;
    private Connection con;
    public Conexion(){
        try{
            Class.forName(ClassName);
            con=DriverManager.getConnection(url,usuario,contraseña);
        }catch(ClassNotFoundException e){
            System.err.println("Error" +e);
        }catch(SQLException e){
            System.err.println("Error" + e);
        }
    }
    public Connection getConexion(){
        return con;
    }
    public static void main(String[] args){
        Conexion con = new Conexion();
    }
            
}
