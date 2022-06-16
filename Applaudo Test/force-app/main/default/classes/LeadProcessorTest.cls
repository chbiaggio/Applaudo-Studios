@isTest
public class LeadProcessorTest {
    @testSetup 
    static void setup() {
    list<Lead> leads = new List<Lead>();
    for(integer i = 0; i<200;i++){
        Lead l = new Lead(company='Test '+ i, lastname ='Test');
        leads.add(l);
    }
    insert(leads);
    }
    
    @isTest
    static void test() {        
        Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from lead where LeadSource = 'DreamForce']);
    }
}