global class ScheduleClass84 implements Schedulable
{
    global void execute(SchedulableContext sc)
    {
        Student__c s = new Student__c();
        s.Name__c='scheduledoctor';
        insert s;
    }
    
}