@IsTest
private class AccountTriggerTest {
    @IsTest static void TestCreateNewAccountInBulk(){
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + String.valueOf(i));
            acct.BillingState = 'CA';
            accts.add(acct);
        }        
        //perform test
        Test.startTest();
        insert accts;                            
        Test.stopTest();
        //verify
        List<Account> verifyAccts1 = [SELECT Id FROM Account WHERE BillingState = 'CA'];
        System.assertEquals(200, verifyAccts1.size());    
        // Also verify that ShippingState = BiliingState
        List<Account>verifyAccts2 = [SELECT Id FROM Account WHERE ShippingState = 'CA'];
        System.assertEquals(200, verifyAccts2.size());    
    }
}