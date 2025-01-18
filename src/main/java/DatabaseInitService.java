import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DatabaseInitService {
    private static final Logger logger = LoggerFactory.getLogger(DatabaseInitService.class);

    public static void main(String[] args) {
        String connectionURL = "jdbc:h2:./test";

        try (Connection connection = DriverManager.getConnection(connectionURL);
             Statement statement = connection.createStatement()) {

            statement.executeUpdate("CREATE TABLE IF NOT EXISTS example (id INT PRIMARY KEY, name VARCHAR(255))");
            System.out.println("Table created successfully!");

        } catch (SQLException e) {
            logger.error("Database operation failed: ", e);
        }
    }
}