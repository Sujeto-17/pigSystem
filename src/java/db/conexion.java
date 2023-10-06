package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class conexion {

    Connection con = null;
    Statement sta = null;
    ResultSet rs = null;

    //Método que establece la conexión con la base de datos MySQL
    public void Conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/porcino", "root", "12345678");
            sta = con.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Método que desconecta la base de datos
    public void Desconectar() {
        try {
            con.close();
            sta.close();
            rs.close();
        } catch (SQLException e) {
        } catch (Exception e) {
        }
    }

    //Método para buscar registros
    public ResultSet Buscar(String cadena) {
        String sql = cadena;
        try {
            Conectar();
            rs = sta.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    //Método para agregar, modificar y eliminar registros
    public void CRUD(String cadena) {
        String sql = cadena;
        try {
            Conectar();
            sta.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Desconectar();
    }
}
