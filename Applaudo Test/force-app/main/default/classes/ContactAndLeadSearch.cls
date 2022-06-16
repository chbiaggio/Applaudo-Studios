public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String arg){
        Contact ref1 = new Contact(Lastname='Smith');
        insert ref1;
        lead ref2 = new Lead(lastname='Smith', company = 'company2');
        insert ref2;
        List<List<SObject>> searchList = [FIND :arg in all fields RETURNING Contact(name), Lead(Name)];
       
        return searchList;
    }
}