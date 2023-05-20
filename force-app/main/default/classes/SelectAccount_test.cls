@isTest
public class SelectAccount_test {
    @isTest(seeAllData = false)
    static void insertAccount(){
        for(Integer i=1;i<=2;i++){
            Account a1 = new Account();
            String a='a';
            if(i==2){ a='b'; }
            a1.Name ='Name'+a;
            insert a1;
        }
    }
}