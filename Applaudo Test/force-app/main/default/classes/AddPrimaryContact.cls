public class AddPrimaryContact implements Queueable{
    
    Contact contacto = new Contact(lastname='test');
    String state;
    
    public AddprimaryContact(Contact contact, String state){
        this.contacto = contact;
        this.state = state;
    }
    public void execute(QueueableContext context) {
        List<Contact> agregar = new List<Contact>();
        List<Account> cuentas = [SELECT id, name from Account where BillingState =: state LIMIT: 200];
        for (Account a: cuentas){
            Contact clon = contacto.clone(false,false,false,false);
            clon.AccountId = a.id;
            agregar.add(clon);
        }
        if(agregar.size() > 0){
            insert(agregar);
        }
    }
    

}