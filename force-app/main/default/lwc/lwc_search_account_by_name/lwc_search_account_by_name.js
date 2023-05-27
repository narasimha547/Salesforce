
import { LightningElement, track, wire } from 'lwc';
import lwc_account_search_by_name_getAccounts from '@salesforce/apex/lwc_account_search_by_name.getAccountsData';
import getAccounts from '@salesforce/apex/lwc_account_search_by_name.getAccountsData';

export default class Lwc_search_account_by_name extends LightningElement {

    @track searchKey;
    @track searchKey1;
    @track recordsList;
    @track errorMsg;

    getAccountName(e) { this.searchKey = e.target.value; }
    getAccountName1(e) { this.searchKey1 = e.target.value; }
    //wire a property
    @wire(lwc_account_search_by_name_getAccounts, { searchKey: '$searchKey' }) accountList;
    

    //wire a method
    @wire(getAccounts, { searchKey: '$searchKey1' }) accountList1({error,data}){
        if(data){
            this.recordsList = data;
        }else{
            this.errorMsg = error;
        }
    };
    
}