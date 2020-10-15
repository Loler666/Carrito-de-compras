/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.*;
import java.util.Vector;

/**
 *
 * @author Emma
 */
public class Idusu extends Conexion{
    private int idusu;
    public Idusu(){
        
    }
    public  Vector<Idusu> autenticacion( String usuario){
        Vector<Idusu> id= new Vector<Idusu>();
         PreparedStatement pst= null;
        ResultSet rs=null;
        try{
            //Conexion co= new Conexion();
            int a;
           
            String consulta="select idusu from usuario where nickname=?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1,usuario);            
            rs=pst.executeQuery();
            while(rs.next()){                
               Idusu prod;
                prod = new Idusu();
               prod.setIdusu(rs.getInt("idusu"));
               a=rs.getInt("idusu");               
               id.add(prod);               
               
            }
            
        }catch(SQLException e){          
            e.printStackTrace();
            id=null;
        }finally{
            try{
                rs.close();
                pst.close();
            }catch(Exception e){
                        System.err.println("Error" + e);
            }
        }
            return id;
    }

    public int getIdusu() {
        return this.idusu;
    }

    public void setIdusu(int idusu) {
        this.idusu = idusu;
    }
     public static void main(String [] args){         
         Idusu co= new Idusu();
         co.autenticacion("alex123");
         //int a=co.getIdusu();         
         //System.out.println(co);         
//         co.autenticacion("alex123");

     }
}
