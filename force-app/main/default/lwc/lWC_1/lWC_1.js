import { LightningElement, track } from 'lwc';

export default class LWC_1 extends LightningElement {
    name= "Narasimha";
    phone= 9573188288;
  
    @track a = 10;
    @track b = 20;

    res = 0;
    @track operation;
    @track isShowdSirname = false;

    changesurname(){
        if(!this.isShowdSirname){
            this.name = "Putha "+this.name;
            this.isShowdSirname = true;
        }
    }

    
    aval(e){
        this.a = parseInt(e.target.value);
        console.log('aval = '+this.a);
    }
    bval(e){
        this.b = parseInt(e.target.value);
        console.log('aval = '+this.b);
    }
    

    caluculate(e){
        this.operation =e.target.value;
        console.log('a = '+this.a);
        console.log('b = '+this.b);
        console.log('operation  = '+this.operation);

        switch (this.operation) {
            case '+': this.res = parseInt(this.a)+parseInt(this.b);
                break;
            case '-': this.res = parseInt(this.a)-parseInt(this.b);
                break;
            case '*': this.res = parseInt(this.a)*parseInt(this.b);
                break;
            case '/': this.res = parseInt(this.a)/parseInt(this.b);
                break;
            default: this.res = 0;
                break;
        }
        //this.res = parseInt(this.a)+parseInt(this.b);
        console.log(parseInt(this.a)+parseInt(this.b));
    }
    
}