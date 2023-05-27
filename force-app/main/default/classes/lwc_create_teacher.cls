public with sharing class lwc_create_teacher {
    @AuraEnabled
    public static Id createTeacher(String address){
        try {
            Teacher__c t = new Teacher__c();
            t.Address__c = address;
            insert t;
            return t.Id;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}