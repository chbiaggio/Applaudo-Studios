public class AccountUtils {
    
    public static List<Account> accountsByState(String state) {
        List<Account> listOfAccounts = [Select Id, name from Account where BillingState =: state];
        return listOfAccounts;
    }
}