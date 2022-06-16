public class AccountHandler {
    public static Account insertNewAccount(String arg) {
        Account rta = new Account(Name=arg);
        try{
            insert rta;
            return rta;
        }
        catch (DmlException e) {
    			System.debug('A DML exception has occurred: ' +
                e.getMessage());
            return null;
        }
    }
}