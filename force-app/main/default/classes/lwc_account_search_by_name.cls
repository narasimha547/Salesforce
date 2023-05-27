public with sharing class lwc_account_search_by_name {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsData(String searchKey){
        
            system.debug('Apex Triggered searchKey='+searchKey);
            String filertKey = '%'+searchKey+'%';
            List<Account> accounts = [SELECT Id, Name FROM Account WHERE Name LIKE :filertKey];
            for(Account acc : accounts){
                system.debug(acc);
            }
            return accounts;
    }
    /*
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsData(){
        try {
            List<Account> accounts = [SELECT Id, Name FROM Account];
            system.debug(accounts);
            return accounts;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    */
}