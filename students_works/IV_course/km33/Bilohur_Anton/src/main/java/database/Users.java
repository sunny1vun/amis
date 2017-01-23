package database;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by DELL on 22.01.2017.
 */
public class Users {
    public ResultSet select(){
    String result= "Select * from USERS";
    DBWorker dbWorker = new DBWorker();
    ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
    return resultSet;
}

    public boolean insert(String[] set){
        String result= "Insert into USERS values("+set[0] +","+set[1] +","+set[2] +","+set[3] +","+set[4] +")";
        DBWorker dbWorker = new DBWorker();
        dbWorker.executeQuery(result);
        ResultSet resultSet = dbWorker.executeQuery("Select * from users");
        try {
            while (resultSet.next()) {
                System.out.println(resultSet.getString("ROLE") );
//                passFromDB = resultSet.getString("PASSWORD");
//                role = resultSet.getString("ROLE");
//                System.out.println(passFromDB + " " + role);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //    String columns[] = new String[]();
        return true;
    }

    public ResultSet update(String[] set){
        String result= "Update USERS set columnname= "+set ;
        DBWorker dbWorker = new DBWorker();
        ResultSet resultSet = dbWorker.executeQuery(result);
//    String columns[] = new String[]();
        return resultSet;
    }
}
