public class ServerCallContactList {
    @AuraEnabled
    public static List<contact> getContactList(){
        List<contact> contactList = new List<contact>([SELECT Name from contact LIMIT 10]);
        return contactList;
    }
}