import { LightningElement, track } from 'lwc';

export default class Nara547_sumof2numbers extends LightningElement {

    @track aval='0';
    @track bval='0';
    @track sumValue='0';
    handleAvalChange(event){
        this.aval = event.target.value;
    }
    handleBvalChange(event){
        this.bval = event.target.value;
    }
    addSum(){
        const a = parseInt(this.aval);
        const b = parseInt(this.bval);
        this.sumValue = a+b;
    }
}