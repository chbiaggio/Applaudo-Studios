public with sharing class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> cuentas) {
        for(Account a: cuentas){
            a.ShippingState = a.BillingState;
        }
    }
}