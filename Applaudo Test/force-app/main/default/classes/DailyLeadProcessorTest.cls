@isTest
public class DailyLeadProcessorTest {
    public static string CRON = '0 0 0 15 3 ? 2022';
    @isTest
    public static void test1(){
        List<Lead> leads = new List<Lead>();
        for(integer i =0; i<200; i++){
            Lead lead = new Lead(lastName='test '+i, company='test '+i);
            leads.add(lead);
        }
        insert(leads);
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',
            CRON, 
            new DailyLeadProcessor());         
        Test.stopTest();
        list<Lead> resultado = [select id from Lead where LeadSource = 'Dreamforce' Limit:200];
        System.assertEquals(200,resultado.size());
    }
}