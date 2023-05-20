//,after insert,before update,after update,before delete,after delete,after undelete
trigger leadStatusUpdate on Lead (before insert,after insert,before update,after update,before delete,after delete) {
    
    if(Trigger.isInsert && Trigger.isBefore){

        system.debug('--before insert trigger.new--'+trigger.new); // valid when it is inserted
        system.debug('-- before insert trigger.old--'+trigger.old);  // not valid when it is inserted
        system.debug('--before insert trigger.oldMap--'+trigger.oldmap); // not valid when it is inserted
        system.debug('--before insert trigger.newMap--'+trigger.newMap); // not valid when it is inserted
        
        /*for (Lead obj : Trigger.new) {
           System.debug('before insert Company : '+obj.Company); 
        }*/
    }
    
	if(Trigger.isInsert && Trigger.isAfter){
		for (Lead obj : Trigger.new) {
            Lead newlead = new Lead();
            newlead.Status = 'Working - Contacted';
            newlead.Id = obj.Id;
            update newlead;
            
           System.debug('before insert Company : '+obj.Company); 
        }
        
        system.debug('--after insert trigger.new--'+trigger.new); 
        system.debug('-- after insert trigger.old--'+trigger.old);
        system.debug('--after insert trigger.oldMap--'+trigger.oldmap);
        system.debug('--after insert trigger.newMap--'+trigger.newMap);
    }

    if(Trigger.isUpdate && Trigger.isBefore){
        system.debug('--before update trigger.new--'+trigger.new); 
        system.debug('-- before update trigger.old--'+trigger.old);
        system.debug('--before update trigger.oldMap--'+trigger.oldmap);
        system.debug('--before update trigger.newMap--'+trigger.newMap);
	}

    if(Trigger.isUpdate && Trigger.isAfter){
        system.debug('--after update trigger.new--'+trigger.new); 
        system.debug('-- after update trigger.old--'+trigger.old);
        system.debug('--after update trigger.oldMap--'+trigger.oldmap);
        system.debug('--after update trigger.newMap--'+trigger.newMap);
	}
    
      if(trigger.isBefore && trigger.isDelete)
    {
        	system.debug('--Before trigger.new--'+trigger.new); // not valid when it is inserted
            system.debug('--Before trigger.old--'+trigger.old);  // valid when it is inserted
            system.debug('--Before trigger.oldMap--'+trigger.oldmap); // valid when it is inserted
            system.debug('--Before trigger.newMap--'+trigger.newMap); // not valid when it is inserted
    }
    if(trigger.isAfter && trigger.isDelete)
    {
        	system.debug('--after trigger.new--'+trigger.new); // not valid when it is inserted
            system.debug('--after trigger.old--'+trigger.old);  // valid when it is inserted
            system.debug('--after trigger.oldMap--'+trigger.oldmap); // valid when it is inserted
            system.debug('--after trigger.newMap--'+trigger.newMap); // not valid when it is inserted
    }
    
}