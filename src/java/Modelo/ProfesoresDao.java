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
public class ProfesoresDao {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public Profesores validar(String user, String dni) {
        Profesores  em=new Profesores();
        String sql="Select * from profesores where User=? and Dni=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dni);
            rs=ps.executeQuery();
            while (rs.next()) {
                em.setId(rs.getInt("IdProfesor"));
                em.setUser(rs.getString("User"));
                em.setDni(rs.getString("Dni"));
                em.setNombres(rs.getString("Nombres"));
                
            }
        } catch (Exception e) {
        }
   return em;
    }
    }

