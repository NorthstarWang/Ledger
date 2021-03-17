/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package DAO;

import com.google.gson.JsonArray;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Arrays;

public class DataTableDAO {
    Database database = new Database();

    public boolean CreateCategory(Integer UserID){//Create a category list for new user
        try{
            Connection con = database.getCon();//Connect Database
                try{
                    String sql;
                    sql = "insert into datatable_category(UserID,Category_List) values (?,?)";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    //Set parameter
                    stmt.setInt(1, UserID);
                    stmt.setString(2, "Default");
                    int res=stmt.executeUpdate();//Execute SQL
                    stmt.close();
                    database.closeCon(con);//Close Database connection
                    return res > 0;//Return Result
                }catch (Exception e){
                    con.rollback();
                    database.closeCon(con);//Close Database connection
                    return false;
                }
        }catch (Exception e){
            System.out.println(e);
            return false;
        }
    }

    public int InsertDataTable(Integer UserID,String Name,String Category,String header,String unit){
        try{
            Connection con = database.getCon();//Connect Database
            try{
                if(SelectDataTable(UserID,Name,"isExist")=="false"){//still no same name datatable under this user file
                    String sql;
                    sql = "insert into datatable(TableName,UserID,Category,Header,Unit) values (?,?,?,?,?)";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    //Set parameter
                    stmt.setString(1, Name);
                    stmt.setInt(2, UserID);
                    stmt.setString(3,Category);
                    stmt.setString(4,header);
                    stmt.setString(5,unit);
                    int res=stmt.executeUpdate();//Execute SQL
                    stmt.close();
                    database.closeCon(con);//Close Database connection
                    return 0;//Return Result
                }else{
                    return 2;//already have same name datatable
                }


            }catch (Exception e){
                con.rollback();
                database.closeCon(con);//Close Database connection
                return 1;
            }
        }catch (Exception e){
            System.out.println(e);
            return 1;
        }
    }
    public String SelectDataTableData(Integer UserID, String TableName){
        try{
            Connection con = database.getCon();
            String sql = "SELECT * FROM datatable WHERE UserID = ? AND TableName = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, UserID);
            ps.setString(2, TableName);
            ResultSet rs = ps.executeQuery();//Execute SQL
            if(!rs.first()){
                return null;
            }else{
                return rs.getString("Data");
            }
        }catch (Exception e){
            System.out.println(e);
            return null;
        }
    }

    public String SelectDataTable(Integer UserID,String TableName,String column){
        try{
            Connection con = database.getCon();
            String sql = "SELECT * FROM datatable WHERE UserID = ? AND TableName = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, UserID);
            ps.setString(2, TableName);
            ResultSet rs = ps.executeQuery();//Execute SQL
            rs.next();
            if(column=="isExist" && rs.first()){
                return "true";
            }else if(column=="isExist" && !rs.first()){
                return "false";//not exist
            }else{
                return rs.getString(column);
            }
        }catch (Exception e){
            System.out.println(e);
            return null;
        }
    }

    public String[] SelectDataTableByCategory(Integer UserID,String Category){
        try{
            Connection con = database.getCon();
            String sql = "SELECT TableName FROM datatable WHERE UserID = ? AND Category = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, UserID);
            ps.setString(2, Category);
            ResultSet rs = ps.executeQuery();//Execute SQL
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            String arrayStr ="";
            while (rs.next()){
                for (int i = 1; i <= columnCount; i++) {
                    String value = rs.getString("TableName");
                    arrayStr+=value+",";
                }
            }
            if(!arrayStr.isEmpty()){
                String array[] = arrayStr.split(",");
                return array;
            }else {
                return null;
            }


        }catch (Exception e){
            System.out.println(e);
            return null;
        }
    }

    public String SelectCategory(Integer UserID){
        try{
            Connection con = database.getCon();
            String sql = "SELECT Category_List FROM datatable_category WHERE UserID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, UserID);
            ResultSet rs = ps.executeQuery();//Execute SQL
            rs.next();//if exist
            return rs.getString("Category_List");
        }catch (Exception e){
            System.out.println(e);
            return null;
        }
    }

    public int UpdateCategory(Integer ID,String name){
        String category_list = SelectCategory(ID);
        if(category_list!=null){
            String Array[] = category_list.split(",");
            Integer resultForArray = Arrays.binarySearch(Array,name);//if name already in array will return -1
            if(resultForArray<0){
                try{
                    category_list+=","+name;
                    Connection con = database.getCon();//Connect Database
                    String sql = "UPDATE datatable_category SET Category_List = ? WHERE UserID = ?";
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, category_list);
                    ps.setInt(2, ID);
                    int result = ps.executeUpdate();//Execute SQL
                    if(result>0){
                        ps.close();
                        database.closeCon(con);
                        return 0;
                    }else {
                        ps.close();
                        database.closeCon(con);
                        return 1;
                    }
                }catch (Exception e){
                    System.out.println(e);
                    return 1;//failure
                }
            }else{
                return 2;//the name is already inside, dont add again or change name
            }

        }else{
            return 1;//failure due to null in category_list
        }
    }

    public int UpdateData(Integer ID,String name,JsonArray json) {
        try {
            Connection con = database.getCon();//Connect Database
            String sql = "UPDATE datatable SET Data = ? WHERE UserID = ? AND TableName = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, json.toString());
            ps.setInt(2, ID);
            ps.setString(3,name);
            int result = ps.executeUpdate();//Execute SQL
            if (result > 0) {
                ps.close();
                database.closeCon(con);
                return 0;
            } else {
                ps.close();
                database.closeCon(con);
                return 1;
            }
        } catch (Exception e) {
            System.out.println(e);
            return 1;//failure
        }
    }

    public String SelectDatatableUnit(Integer UserID,String TableName){
        try{
            Connection con = database.getCon();
            String sql = "SELECT Unit FROM datatable WHERE UserID = ? AND TableName = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, UserID);
            ps.setString(2, TableName);
            ResultSet rs = ps.executeQuery();//Execute SQL
            rs.next();//if exist
            return rs.getString("Unit");
        }catch (Exception e){
            System.out.println(e);
            return null;
        }
    }
}
