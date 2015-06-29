package Factory;

import java.sql.Connection;
import java.sql.DriverManager;


public final class MysqlConnectionFactory extends ConnectionDB{

    public MysqlConnectionFactory(String[] params) {
    this.params=params;
    this.open();
    }
    
    
    @Override
    public Connection open() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            this.connection= DriverManager.getConnection("jdbc:mysql://localhost/"+this.params[0],this.params[1],this.params[2]);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.connection;
    }
    
}
