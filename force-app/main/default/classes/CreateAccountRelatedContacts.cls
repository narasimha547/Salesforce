public class CreateAccountRelatedContacts {
    public Account createAccount(){
        System.debug('step 1');
        Account acc = NULL;
        for(Integer i=1; i<=5; i++) {
            acc = new Account();
            System.debug('step 2_'+i);
            acc.Name='Account_'+i;
            insert acc;
            System.debug(acc.Id);
            Contact con = new Contact();
            con.AccountId = acc.Id;
            con.LastName = 'Contact_'+i;
            insert con;
        }  
        return acc;
    }
    
    
    
}