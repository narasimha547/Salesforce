({
	doClick : function(component, event, helper) {
		//console.log(component);
        //console.log(event);
        //console.log(helper);
        //console.log(component.get('v.Number'));
        component.set('v.Number',100+component.get('v.Number'));
        var fdC = component.find('PercentageID')
        console.log(fdC.get('v.value'));
        fdC.set('v.value','20');
	}
})