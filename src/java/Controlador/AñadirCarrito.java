/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;

/**
 *
 * @author Emma
 */
public class AñadirCarrito extends Conexion {
    public boolean añadircarro(String car, int ani){
        PreparedStatement pst=null;
        try{
            String consulta="insert into seleccion(idcar,idani) values((select idcar from carrito inner join usuario on carrito.idusu=usuario.idusu where nickname=?),(select idani from anillo where idani=?))";
            pst=getConexion().prepareStatement(consulta);
            //pst.setString(1, usuario);
            pst.setString(1,car);
            pst.setInt(2, ani);
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
