package DAO;

import BLL.Encryption;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */

public class UserDAO {

    Database database = new Database();
    Encryption encryption = new Encryption();
    DataTableDAO dataTableDAO = new DataTableDAO();

    public boolean InsertUser(String usr,String pwd,String FName, String LName, String Gender,String Email,String Description){
            int ID = SelectLastUserID();
            try{
                Connection con = database.getCon();//Connect Database
                if(ID!=-1){
                    try{
                        String password = encryption.SHA(pwd);//Encrypt password
                        String sql;
                        sql = "insert into user(ID,Username,Password,FName,LName,Gender,Email,Description,Role) values (?,?,?,?,?,?,?,?,?)";
                        PreparedStatement stmt = con.prepareStatement(sql);
                        //Set parameter
                        stmt.setInt(1, ID);
                        stmt.setString(2, usr);
                        stmt.setString(3, password);
                        stmt.setString(4, FName);//Set parameter
                        stmt.setString(5, LName);
                        stmt.setString(6, Gender);
                        stmt.setString(7, Email);
                        stmt.setString(8, Description);
                        stmt.setString(9, "User");
                        int res=stmt.executeUpdate();//Execute SQL
                        stmt.close();
                        database.closeCon(con);//Close Database connection

                        dataTableDAO.CreateCategory(ID);

                        return res > 0;//Return Registration Result
                    }catch (Exception e){
                        con.rollback();
                        database.closeCon(con);//Close Database connection
                        return false;
                    }

                }else {
                    database.closeCon(con);//Close Database connection
                    return false;
                }
            }catch (Exception e){
                System.out.println(e);
                return false;
            }
    }

    public int SelectLastUserID(){
        try{
            Connection con = database.getCon();//Connect Database
            String sql = "SELECT * FROM user ORDER BY ID DESC LIMIT 1";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(sql);//Execute SQL
            if(rs.first()){
                int i = rs.getInt("ID");
                ps.close();
                database.closeCon(con);//Close Database connection
                return i+1;
            }else{
                ps.close();
                database.closeCon(con);//Close Database connection
                return 1;
            }

        } catch (Exception e) {
            System.out.println(e);
            return -1;
        }
    }

    public boolean VerifyUsername(String username){//Verify if username is available
        try{
            Connection con = database.getCon();
            String sql1 = "SELECT * FROM user WHERE Username = ?";
            PreparedStatement stmt = con.prepareStatement(sql1);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();//Execute SQL
            if(!rs.first()){//Username available, No user use yet
                stmt.close();
                database.closeCon(con);//Close Database connection
                return true;
            }else{
                stmt.close();
                database.closeCon(con);//Close Database connection
                return false;
            }
        }catch (Exception e){
            System.out.println(e);
            return false;
        }
    }

    public boolean SelectUser(String usr,String pwd){//See if Password matches Username
        try{
            String password = encryption.SHA(pwd);//Encrypt password
            Connection con = database.getCon();//Connect Database
            String sql = "SELECT * FROM user WHERE Username = ? and Password = ?";
            PreparedStatement ps1 = con.prepareStatement(sql);
            ps1.setString(1, usr);
            ps1.setString(2, password);
            ResultSet rs = ps1.executeQuery();//Execute SQL

            Boolean state;
            if(rs.first()){//if result set has the record, the password matches
                state = true;
                ps1.close();
            }else{
                state = false;
                ps1.close();
            }
            rs.close();
            database.closeCon(con);//Close Database connection
            return state;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public String SelectUserIcon(String usr){
        try{
            Connection con = database.getCon();
            String sql = "SELECT * FROM user WHERE Username = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usr);
            ResultSet rs = ps.executeQuery();//Execute SQL
            rs.next();
            String icon = rs.getString("Icon");
                if(icon==null){
                    ps.close();
                    rs.close();
                    database.closeCon(con);
                    return "default.jpg";
                }else{
                    ps.close();
                    rs.close();
                    database.closeCon(con);
                    return icon;
                }
        }catch (Exception e){
            System.out.println(e);
            return "default.jpg";
        }
    }

    public String SelectUserInfo(String usr,String Column){//All Basic Info that evolve varchar or nvarchar except icon(it left null if default)
        try{
            Connection con = database.getCon();
            String sql = "SELECT " + Column + " FROM user WHERE Username = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usr);
            ResultSet rs = ps.executeQuery();//Execute SQL
            rs.next();
            return rs.getString(Column);
        }catch (Exception e){
            return "";
        }
    }

    public String SelectUserInfoByID(String ID,String Column){//All Basic Info that evolve varchar or nvarchar except icon(it left null if default)
        try{
            Connection con = database.getCon();
            String sql = "SELECT " + Column + " FROM user WHERE ID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ID);
            ResultSet rs = ps.executeQuery();//Execute SQL
            rs.next();
            return rs.getString(Column);
        }catch (Exception e){
            System.out.println(e);
            return "";
        }
    }

    public boolean UpdateUserInfoString(Integer ID,String Column,String Data){
        try{
            Connection con = database.getCon();//Connect Database
            String sql = "UPDATE user SET " + Column + " = ? WHERE ID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, Data);
            ps.setInt(2, ID);
            int result = ps.executeUpdate();//Execute SQL
            if(result>0){
                ps.close();
                database.closeCon(con);
                return true;
            }else {
                ps.close();
                database.closeCon(con);
                return false;
            }
        }catch (Exception e){
            System.out.println(e);
            return false;//failure
        }
    }
    public boolean UpdateUserInfoLong(Integer ID,String Column,Long Data){
        try {

            Connection con = database.getCon();//Connect Database
            try {
                String sql = "UPDATE user SET " + Column + " = ? WHERE ID = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setLong(1, Data);
                ps.setInt(2, ID);
                int result = ps.executeUpdate();//Execute SQL
                if(result>0){
                    ps.close();
                    database.closeCon(con);
                    return true;
                }else {
                    ps.close();
                    database.closeCon(con);
                    return false;
                }
            } catch (Exception e) {
                con.rollback();
                database.closeCon(con);
                System.out.println(e);
                return false;//failure
            }
        }catch (Exception e){
            System.out.println(e);
            return false;//failure
        }
    }

    public boolean UpdateUserInfoInt(Integer ID,String Column,Integer Data){
        try {

            Connection con = database.getCon();//Connect Database
            try {
                String sql = "UPDATE user SET " + Column + " = ? WHERE ID = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, Data);
                ps.setInt(2, ID);
                int result = ps.executeUpdate();//Execute SQL
                if(result>0){
                    ps.close();
                    database.closeCon(con);
                    return true;
                }else {
                    ps.close();
                    database.closeCon(con);
                    return false;
                }
            } catch (Exception e) {
                con.rollback();
                database.closeCon(con);
                System.out.println(e);
                return false;//failure
            }
        }catch (Exception e){
            System.out.println(e);
            return false;//failure
        }
    }

}
