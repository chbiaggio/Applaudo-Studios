global class LeadProcessor implements Database.Batchable<sObject> {
    global Integer recordsProcessed = 0;
    
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'Select name from Lead'
        );
    }
    global void execute(Database.BatchableContext bc, List<Lead> leads){
        for (Lead l : leads) {
            l.LeadSource = 'Dreamforce';
            recordsProcessed = recordsProcessed + 1;
        }
        update leads;
    }    
    global void finish(Database.BatchableContext bc){
        System.debug(recordsProcessed + ' records processed.');
    }    
}