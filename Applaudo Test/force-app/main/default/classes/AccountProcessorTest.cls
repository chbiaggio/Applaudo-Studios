@isTest
public class AccountProcessorTest {
    @isTest public static void test1(){
        Account a = new Account();
        a.Name = 'Test Account';
        Insert a;
        
        Contact cont = New Contact();
        cont.FirstName ='Bob';
        cont.LastName ='Masters';
        cont.AccountId = a.Id;
        Insert cont;

		List<Id> setAccId = new List<ID>();
        setAccId.add(a.id);
        
        Test.startTest();
        AccountProcessor.countContacts(setAccId);
        Test.stopTest();
    }
}