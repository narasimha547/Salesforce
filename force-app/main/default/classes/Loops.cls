public class Loops {
    public void forLoop(){
        for(Integer a=0;a<=10;a++){
            System.debug(a);
        }
    }
    public void nonIndexedForLoop(){
        LIST<account> lst = [select Id from account];
        for(Account Items:lst){
            System.debug(lst);
        }
    }
}