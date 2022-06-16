global class DailyLeadProcessor implements Schedulable {
    global void execute(SchedulableContext ctx) {
        List<Lead> leads = [select id from lead where LeadSource ='' limit: 200];
        for(lead l: leads){
            l.LeadSource = 'Dreamforce';
        }
        if(leads.size()>0){
            update(leads);
        }
    }
}