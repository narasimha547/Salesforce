public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        List<account> acc = [SELECT Id,Name,Industry,Phone FROM Account LIMIT 10];
        return acc;
    }
}