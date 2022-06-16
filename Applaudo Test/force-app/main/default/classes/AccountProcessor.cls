public class AccountProcessor {
    @future
    public static void countContacts(List<ID> ids){
        List<Account> ctas = new List<Account>();
        for(id a: ids){
            Account cta = [SELECT Id, name from Account where Id =: a];
            List<Contact> contactos = [Select name From Contact where Account.ID =: a];
            cta.Number_of_contacts__c = contactos.size();
            ctas.add(cta);
        }
        if(ctas.size() > 0){
            update(ctas);
        }
    }
}