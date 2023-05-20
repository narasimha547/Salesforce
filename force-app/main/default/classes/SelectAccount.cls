public class SelectAccount {
    public void getAccount(){
        Account a = [Select id,AccountNumber,Name From Account WHERE Id='0015j00000VEO8yAAH'];
        System.debug(' '+a.Name);
    }
    
}