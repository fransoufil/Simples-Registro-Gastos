
package simplesregistrogastos.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexaoMySQL {
    
    public static Connection conector() {
        
        java.sql.Connection conexao;
        
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/db_simples_registro_gastos?useSSL=false";
        String user = "root";
        String password = "root";
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Erro no Login :: " + e);
            return null;
        }
    }
}
