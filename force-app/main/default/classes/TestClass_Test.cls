@isTest
public class TestClass_Test {
    
    @isTest
    static void test1(){
        string name ='Nara';
        TestClass a = new TestClass();
        a.setName(name);
        System.assertEquals(name, a.getName());
    }
    @isTest
    static void test2(){
        string name ='Jai 1';
        TestClass a = new TestClass();
        a.setName(name);
        System.assertEquals(name, a.getName());
    }
}