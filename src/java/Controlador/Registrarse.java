/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alumno
 */
public class Registrarse extends Conexion {
    public boolean registrar(String nombre, String nickname, String password ,String email, int telefono ){
        PreparedStatement pst=null;
        try{
            String consulta="insert into usuario(nombre,nickname,password,email,tel,privilegio) values(?,?,?,?,?,1)";
            pst=getConexion().prepareStatement(consulta);
            //pst.setString(1, usuario);
            pst.setString(1,nombre);
            pst.setString(2, nickname);
            pst.setString(3,password);
            pst.setString(4,email);
            pst.setInt(5,telefono);
            if(pst.executeUpdate()==1){
            return true;
        }
        }catch(Exception e){
            System.err.println("Error" + e);
        }finally{
            try{
        if(getConexion() !=null)getConexion().close();
        }catch(Exception e){
                System.err.println("Error" + e);
        }
                
    }
        return false;
    }    
   
}
