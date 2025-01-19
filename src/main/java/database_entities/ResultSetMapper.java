package database_entities;

import java.sql.ResultSet;
import java.sql.SQLException;

@FunctionalInterface
public interface ResultSetMapper<E extends DataBaseEntity> {
    E map(ResultSet resultSet) throws SQLException;
}