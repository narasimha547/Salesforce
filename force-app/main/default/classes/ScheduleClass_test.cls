global class ScheduleClass_test  implements Schedulable{
     global void execute(SchedulableContext sc)
    {
        testObject__c doc = [SELECT Id,Name FROM testObject__c WHERE Name='Account_1'];
        doc.Name='schedule '+doc.Name;
        update doc;
    }
}