public class DatabasePopulateService {
    public void populate(){
      Database.getInstance().executeSqlStatement(Database.POPULATE_SQL);
    }
}
