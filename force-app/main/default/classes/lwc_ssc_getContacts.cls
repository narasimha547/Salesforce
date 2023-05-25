public with sharing class lwc_ssc_getContacts {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsList(){
            return [SELECT Id,FirstName,LastName FROM Contact  LIMIT 10];        
    }
}