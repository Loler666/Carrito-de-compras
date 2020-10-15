package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SesionAdmon extends Conexion {
 public boolean autenticaciona(String usuario,String contraseña){
        PreparedStatement pst= null;
        ResultSet rs=null;
        try{
            String consulta="select * from usuario where nickname= ? and password = ? and privilegio=2";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1,usuario);
            pst.setString(2,contraseña);
            rs=pst.executeQuery();
            if(rs.absolute(1)){
                return true;
            }
        }catch(Exception e){
            System.err.println("error"+e);
        }finally{
            try{
                if(getConexion() != null) getConexion().close();
                if(pst !=null) pst.close();
                if(rs!=null) rs.close();
            }catch(Exception e){
                        System.err.println("Error" + e);
            }
        }
        return false;
    }    
}
