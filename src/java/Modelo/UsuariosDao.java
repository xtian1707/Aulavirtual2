/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author user
 */
public class UsuariosDao {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public Usuarios validar(String user, String pass) {
        Usuarios  em=new Usuarios();
        String sql="SELECT * FROM usuarios WHERE Usuario=? AND Password=? AND IdRol_FK_1=1 ";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while (rs.next()) {
                
                em.setUsuario(rs.getString("Usuario"));
                em.setPassword(rs.getString("Password"));
                em.setIdusuario(rs.getInt("IdUsuario"));
                em.setNombres(rs.getString("Nombres"));
                em.setApellidos(rs.getString("Apellidos"));
                
            }
        } catch (Exception e) {
        }
   return em;
    }
    public Usuarios validar2(String user, String pass) {
        Usuarios  em2=new Usuarios();
        String sql="SELECT * FROM usuarios WHERE Usuario=? AND Password=? AND IdRol_FK_1=2 ";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while (rs.next()) {
                
                em2.setUsuario(rs.getString("Usuario"));
                em2.setPassword(rs.getString("Password"));
                em2.setIdusuario(rs.getInt("IdUsuario"));
                em2.setNombres(rs.getString("Nombres"));
                em2.setApellidos(rs.getString("Apellidos"));
                
            }
        } catch (Exception e) {
        }
   return em2;
    }
    }

