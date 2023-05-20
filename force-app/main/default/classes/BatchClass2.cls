global class BatchClass2 implements Database.Batchable<sObject>
{
    global List<testObject__c> doc = new List<testObject__c>();
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('select id,name from account');
    }
    
    global void execute(Database.BatchableContext bc, List<Account> l){
        
        for(Account a:l)
        {
            testObject__c d = new testObject__c();
            d.Name=a.name;
            doc.add(d);
        }
        Database.insert(doc,false);
    }
    
    global void finish(Database.BatchableContext bc)
    {
        System.debug('this is finish');
    }
}