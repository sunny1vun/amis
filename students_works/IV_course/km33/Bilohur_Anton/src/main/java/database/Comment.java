package database;

import java.sql.*;

/**
 * Created by DELL on 22.01.2017.
 */

public class Comment {
    public ResultSet select(){
        String result= "Select * from USERS";
        DBWorker dbWorker = new DBWorker();
        ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
        return resultSet;
    }

    public ResultSet insert(String[] set){
        String result= "Insert into USERS(..) values("+set[0]+",...)";
        DBWorker dbWorker = new DBWorker();
        ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
        return resultSet;
    }

    public ResultSet update(String[] set){
        String result= "Update USERS set columnname= "+set ;
        DBWorker dbWorker = new DBWorker();
        ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
        return resultSet;
    }
}
