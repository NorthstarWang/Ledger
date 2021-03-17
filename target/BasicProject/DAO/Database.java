/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database{
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/Web?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
    private String usr = "root";
    private String pwd = "Your Database Password";


    public Connection getCon() throws Exception{
        Class.forName(driver);
        return DriverManager.getConnection(url,usr,pwd);
    }

    public void closeCon(Connection con) throws Exception{
        if(con!=null){
            con.close();
        }
    }
}
