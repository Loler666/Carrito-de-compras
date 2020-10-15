/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author Emma
 */
public class ConsultarCarrito extends Conexion{
    private int idcar;
    private String metal;
    private String piedra;
    private String precio;
   public  Vector<ConsultarCarrito> autenticacion(String nickname){
        Vector<ConsultarCarrito> idas= new Vector<ConsultarCarrito>();
         PreparedStatement pst= null;
        ResultSet rs=null;
        try{                     
            String consulta="SELECT metal,piedra,precio FROM SELECCION inner join anillo on SELECCION.idani=anillo.idani "
                    + "WHERE idcar = (SELECT idcar from carrito inner join usuario "
                    + "on carrito.idusu=usuario.idusu where"
                    + " nickname=?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1,nickname);            
            rs=pst.executeQuery();
            while(rs.next()){                
               ConsultarCarrito prod = new ConsultarCarrito();             
               prod.setMetal(rs.getString("metal"));
               prod.setPiedra(rs.getString("piedra"));
               prod.setPrecio(rs.getString("precio"));                              
               idas.add(prod);               
               
            }
            
        }catch(Exception e){          
            e.printStackTrace();
            idas=null;
        }finally{
            try{
                rs.close();
                pst.close();
            }catch(Exception e){
                        System.err.println("Error" + e);
            }
        }
            return idas;
    } 

    public int getIdcar() {
        return this.idcar;
    }

    public void setIdcar(int idcar) {
        this.idcar = idcar;
    }

    public String getMetal() {
        return this.metal;
    }

    public void setMetal(String metal) {
        this.metal = metal;
    }

    public String getPiedra() {
        return piedra;
    }

    public void setPiedra(String piedra) {
        this.piedra = piedra;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }
   public static void main(String [] args){
       ConsultarCarrito co= new ConsultarCarrito();
       co.autenticacion("alex123");
       System.out.println(co.getMetal());
       System.out.println(co.getPiedra());
       System.out.println(co.getPrecio());
       
   }
}
