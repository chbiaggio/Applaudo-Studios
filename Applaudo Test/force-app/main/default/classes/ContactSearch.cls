public class ContactSearch {
    public static List<Contact> searchForContacts(String arg1, String arg2){
        List<Contact> rta = [SELECT ID, Name FROM Contact WHERE lastname =: arg1 AND MailingPostalCode =: arg2];
        return rta;
    }
}