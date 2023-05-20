public class TeacherController {

    public string sName;
    public string sAddress;
    
    public string getWelcomeMessage(){
        this.setsName('Nara');
        this.setsAddress('HYD');
        return 'Hello! Welcome to Registration Page.';
    }
    
    public void setsName(String Name){ this.sName = Name; } 
    public string getsName(){ return this.sName; } 
    
    public void setsAddress(String add){ this.sAddress = add; } 
    public string getsAddress(){  return this.sAddress; }
}