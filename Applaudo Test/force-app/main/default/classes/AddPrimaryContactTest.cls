@isTest
public class AddPrimaryContactTest {
    @testSetup 
    static void setup() {
    list<Account> cuentas = new List<Account>();
    for(integer i = 0; i<50;i++){
        Account a = new Account(name= 'Test ' + i, BillingState = 'NY');
        cuentas.add(a);
    }
    for(integer i = 50; i<100;i++){
        Account a = new Account(name= 'Test ' + i, BillingState = 'CA');
        cuentas.add(a);
    }
    insert(cuentas);
    }
    
    @isTest
    static void test() {
		Contact contacto = new Contact(lastname = 'test');        
        Test.startTest();
        AddPrimaryContact uca = new AddPrimaryContact(contacto, 'CA');
		ID jobID = System.enqueueJob(uca);
        Test.stopTest();
        List<Account> prueba = [select id from account where id IN(select accountid from contact where lastname ='test') 
                                and BillingState = 'CA'];
        
        System.assertEquals(50, prueba.size());
    }
}