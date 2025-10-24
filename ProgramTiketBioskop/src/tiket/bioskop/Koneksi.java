/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author BEELZEBUB
 */
package tiket.bioskop;

import java.sql.*;
import javax.swing.JOptionPane;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Koneksi {
    private static java.sql.Connection koneksi;
    
    public static java.sql.Connection getKoneksi(){
        if (koneksi == null ){
            try {
                String url = "jdbc:mysql://localhost:3306/db_bioskop";
                String user = "root";
                String password = "";
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                koneksi = DriverManager.getConnection(url, user, password);
                System.out.println ("Connection Successfully");
            }catch(SQLException e){
                System.out.println ("Error");
            }
        }
        return koneksi;
    }
    public static void main (String args[]){
        getKoneksi();
    }
}
