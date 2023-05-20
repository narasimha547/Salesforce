@isTest
private class CustomObjectTest {

    @testSetup
    static void setupTestData() {
        // Create a test record for Account
        Account testRecord = new Account(
            Name = 'Test Record'
        );
        insert testRecord;
    }
    
    @isTest
    static void testMethod1() {
        // Retrieve the test record created in setupTestData()
        Account testRecord = [SELECT Id, Name FROM Account LIMIT 1];
        
        // Perform some assertions on the test record
        System.assertEquals('Test Record', testRecord.Name);
    }
    
    @isTest
    static void testMethod2() {
        // Retrieve the test record created in setupTestData()
        Account testRecord = [SELECT Id, Name FROM Account LIMIT 1];
        
        // Perform some assertions on the test record
        System.assertEquals('Test Record', testRecord.Name);
    }
}