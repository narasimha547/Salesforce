public class Apex2FlowMultipleParams {
    @InvocableMethod(label='Flow2Apex : Apex2FlowMultipleParams')
    public static void updateTitleInContact(List<inputVariables> input){
        System.debug(input);
        //input[0].
        /*List<Contact> objContact = [SELECT ID,LastName,FirstName,Title FROM Contact WHERE Id IN :ContactIds];
        for(Contact c: objContact){
            c.Title = c.FirstName+ ' ' +c.LastName;
            System.debug('Test : '+c.FirstName+ ' ' +c.LastName);
            update c;
        }*/
    }
    
    public class inputVariables{
        @InvocableVariable(label='Contact ID' required=true)
        public Id ContactId;
        
        @InvocableVariable(label='Lead Source')
        public String LeadSource;
    }
    
}