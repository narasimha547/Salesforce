import { LightningElement, wire } from 'lwc';
import meth_getAccList from '@salesforce/apex/getAccountsList.getAccList';

export default class Lwc_wire_with_defined_apex extends LightningElement {
    @wire(meth_getAccList) ListAcc;

}