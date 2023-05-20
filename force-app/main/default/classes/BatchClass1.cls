global class BatchClass1 implements Database.Batchable<sObject>
{
    global List<Teacher__c> doc = new List<Teacher__c>();
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('select id,name from account');
    }
    global void execute(Database.BatchableContext bc, List<Account> l)
    {
        
        for(Account a:l)
        {
            Teacher__c s = new Teacher__c();
            s.Name__c=a.name;
            s.Address__c = '10002';
            doc.add(s);
        }
        Database.insert(doc,false);
    }
    global void finish(Database.BatchableContext bc)
    {
        System.debug('this is finish');
    }
}
//Database.executeBatch(new BatchClass1(), 200);