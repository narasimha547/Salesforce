public with sharing class getAccountsList {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccList(){
            return [SELECT Id,Name FROM Account];
    }
}