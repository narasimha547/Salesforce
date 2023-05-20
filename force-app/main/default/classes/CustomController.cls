public class CustomController {
    public Account acct {get;set;}
    public CustomController() {
        String acctId = ApexPages.currentPage().getParameters().get('id');
        //acct = [Select Rating From Account Where Id = :acctId];
        acct = [Select Rating From Account Where Id = '0015j00000VEShq'];
    }
    public PageReference save() {
        update acct;
        return new PageReference('/' + acct.Id);
    }
}