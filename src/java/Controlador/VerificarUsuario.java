package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VerificarUsuario extends Conexion{
    public boolean verificar(String usuario){
        
        PreparedStatement pst= null;
        ResultSet rs=null;
        try{
            String consulta="select nickname from usuario where nickname= ? and privilegio=1";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1,usuario);            
            rs=pst.executeQuery();
            if(rs.absolute(1)){
                return true;
            }
        }catch(Exception e){
            System.out.println("Algo Salio mal");
            System.err.println("error"+e);
        }finally{
            try{
                if(getConexion() != null) getConexion().close();
                if(pst !=null) pst.close();
                if(rs!=null) rs.close();
            }catch(Exception e){
                        System.err.println("Error" + e);
            }
        return false;
    }
    }
}
