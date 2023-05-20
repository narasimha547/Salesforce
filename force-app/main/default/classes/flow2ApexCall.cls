public class flow2ApexCall {
    @InvocableMethod(label='Flow2Apex : Update FN & LN 2 Title')
    public static void updateTitleInContact(List<Id> ContactIds){
        List<Contact> objContact = [SELECT ID,LastName,FirstName,Title FROM Contact WHERE Id IN :ContactIds];
        for(Contact c: objContact){
            c.Title = c.FirstName+ ' ' +c.LastName;
            System.debug('Test : '+c.FirstName+ ' ' +c.LastName);
            update c;
        }
    }
}