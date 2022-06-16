public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer n, String last){
        List<Contact> rta = new List<Contact>();
        for(Integer i=0; i<n ;i++){
        	Contact ct = new Contact(FirstName= 'Test ' + i,Lastname= last + '' + i);
            rta.add(ct);
        }
        System.debug('asd');
        System.debug(rta[n-1].LastName);
        return rta;
    }
}