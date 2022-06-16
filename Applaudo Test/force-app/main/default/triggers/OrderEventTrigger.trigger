trigger OrderEventTrigger on Order_Event__e (after insert) {
	List<Task> tsks = new List<Task>();
    for(Order_Event__e event: Trigger.new){
        if(event.Has_Shipped__C == true){
            Task tsk = new Task(Subject = 'Follow up on shipped order ' + event.Order_Number__c, Priority = 'Medium', OwnerId = event.CreatedById);
        	tsks.add(tsk);
       }
    }
    if(tsks.size() > 0){
        insert(tsks);
    }
}