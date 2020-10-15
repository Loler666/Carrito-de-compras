package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class InicioSesion extends Conexion{
    private int idusu;
	private String nombre;
	private String nickname;
	private String password;
	private String email;
	private int tel;
        private int Privilegio;
         public InicioSesion(){

        }
        
     public InicioSesion autenticaciones( String usuario,String contraseña){
        InicioSesion u=null;
         PreparedStatement pst= null;
        ResultSet rs=null;
        try{
            String consulta="select * from usuario where nickname= ? and password = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1,usuario);
            pst.setString(2,contraseña);
            rs=pst.executeQuery();
            while(rs.next()){
               u= new InicioSesion();
               u.setIdusu(rs.getInt("idusu"));
               u.setNombre(rs.getString("nombre"));
               u.setNickname(rs.getString("nickname"));
               u.setPassword(rs.getString("password"));
               u.setEmail(rs.getString("email"));
               u.setTel(rs.getInt("tel"));
               u.setPrivilegio(rs.getInt("privilegio"));
                break;
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
            return u;
    }
     
     public static void main(String [] args){         
         InicioSesion co= new InicioSesion();
         //co.autenticacion("alex123");
         //String a= co.getPassword();
         //System.out.println(a);
         
//         co.autenticacion("alex123");

     }

    public int getIdusu() {
        return this.idusu;
    }

    public String getNombre() {
        return this.nombre;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPassword() {
        return this.password;
    }

    public String getEmail() {
        return this.email;
    }

    public int getTel() {
        return this.tel;
    }

    public int getPrivilegio() {
        return this.Privilegio;
    }

    public void setIdusu(int idusu) {
        this.idusu = idusu;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public void setPrivilegio(int Privilegio) {
        this.Privilegio = Privilegio;
    }



    
}
     