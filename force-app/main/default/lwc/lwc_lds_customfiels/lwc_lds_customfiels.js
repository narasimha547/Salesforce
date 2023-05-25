import { LightningElement, track } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import UPSELLOPPORTUNITY_FIELD from '@salesforce/schema/Account.UpsellOpportunity__c';




export default class Lwc_lds_customfiels extends LightningElement {
    changedbatchclass = ACCOUNT_OBJECT;
    changedfields = [NAME_FIELD,PHONE_FIELD,UPSELLOPPORTUNITY_FIELD];

}