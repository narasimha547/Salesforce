@RestResource(urlMapping='/myrestservice/*')
global with sharing class MyRestService {
    
    @HttpGet
    global static List<Account> getRecord() {
        RestRequest ResReq = RestContext.request;
        RestResponse ResRes = RestContext.response;
        String accid = ResReq.requestURI.substring(ResReq.requestURI.lastIndexOf('/')+1);
        //List<Account> acc = [SELECT Name FROM account where Id = '0015j00000wmRy5AAE'];
        List<Account> acc = [SELECT Name FROM account where Id =:accid];
        return acc;
    }
    
    @HttpPost
    global static String createRecord(String name) {
        Account account = new Account(Name = name);
        insert account;
        return 'Record created with Id: ' + account.Id;
    }
}