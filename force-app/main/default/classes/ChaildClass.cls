public class ChaildClass extends ParentClass{
 	public ChaildClass()
    {
        this.m1();
        super.m1();
    }
	public override void m1()
    {
        system.debug('this is child m1 method s');
    }
}