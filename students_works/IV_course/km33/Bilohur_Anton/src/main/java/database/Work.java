package database;

import java.sql.ResultSet;

/**
 * Created by DELL on 22.01.2017.
 */
public class Work {
    public ResultSet select(){
        String result= "Select * from WORK";
        DBWorker dbWorker = new DBWorker();
        ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
        return resultSet;
    }

    public ResultSet insert(String[] set){
        String result= "Insert into DIVORCE(..) values("+set;
        DBWorker dbWorker = new DBWorker();
        ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
        return resultSet;
    }

    public ResultSet update(String[] set){
        String result= "Update DIVORCE set columnname= "+set ;
        DBWorker dbWorker = new DBWorker();
        ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
        return resultSet;
    }
}
