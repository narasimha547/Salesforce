public class Class_BatchTestClass implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([select id,name from BatchTestClass__c]);
    }
    public void execute(Database.BatchableContext bc, List<BatchTestClass__c> records){
        for(BatchTestClass__c rec_btc:records)
        {
            //BatchTestClass__c tmp_btc = new BatchTestClass__c();
            rec_btc.Name = 'Batch_'+rec_btc.name;
            Database.update(rec_btc);
        }
    }
    public void finish(Database.BatchableContext bc){
        
    }
}