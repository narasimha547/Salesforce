public class ExceptionHandileing 
{
    public static void dmlException()
    {
        Account a = new Account();
        a.name='hello1';
        try
        {
            insert a;
            system.debug('inserted');
        }
        catch(DmlException dm)
        {
            system.debug(dm);
        }
        finally
        {
            system.debug('Final dmlException exectued');
        }
    }
    public static void listExc()
    {
        List<string> lst = new List<String>{'nara','paras','sha'};
            try{
                 system.debug(lst.get(3));
            	}
       			catch(ListException le)
                {
                    system.debug(le.getMessage()+'--------'+le.getCause()+'-------'+le.getLineNumber()+'-----'+le.getStackTraceString());
                }
    }
    public static void nullPointer()
    {
        String s;
            try{
                 Boolean b = s.contains('j');
            	}
       			catch(Exception le)
                {
                    system.debug(le.getMessage()+'--------'+le.getCause()+'-------'+le.getLineNumber()+'-----'+le.getStackTraceString());
                }
    }
    public static void queryExc()
    {
        //Account[] aLst = [SELECT name FROM Account WHERE name Like 'United%'];
        try
        {
            Account aLst = [SELECT name FROM Account WHERE name Like 'United%'];
        }
        catch(Exception le)
                {
                    system.debug(le.getMessage()+'--------'+le.getCause()+'-------'+le.getLineNumber()+'-----'+le.getStackTraceString());
                }
    }
    public static void sObjectExc()
    {
        Account a = [SELECT Id,name FROM Account WHERE name='Burlington Textiles Corp of America']; 
        try{
        string s = a.phone;
        //string s = a.id;
            system.debug(s);
        }catch(sObjectException SE){
            System.debug('---'+SE.getLineNumber()+'---------'+SE.getCause()+'------------'+SE.getMessage()+'-------'+SE.getStackTraceString()+'----'+SE.getTypeName()); 
        }
    }
}