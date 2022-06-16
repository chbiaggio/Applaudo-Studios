trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Opportunity> rta = new List<Opportunity>();
    /*for(Opportunity o: Trigger.old){
        if(o.StageName == 'Is Closed Won'){
            rta.add(o);
        }
    }*/
    List<Task> tsk = new List<Task>();
    for(Opportunity o: Trigger.new){
        Task tk = new Task(Subject = 'Follow Up Test Task', WhatId = o.ID);
        tsk.add(tk);
    }
    if(tsk.size() > 0){
        insert(tsk);
    }
    
   
    
}