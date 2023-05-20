({
	doAdd : function(component, event, helper) {
		var arg1 = component.get('v.arg1');
        var arg2 = component.get('v.arg2');
        var total = parseInt(arg1)+parseInt(arg2);
        console.log(total);
        component.set('v.arg3',total);
	},
    doSub : function(component, event, helper) {
        var arg1 = component.get('v.arg1');
        var arg2 = component.get('v.arg2');
        var total = arg1-arg2;
        console.log(total);
        component.set('v.arg3',total);
		
	},
    doMul : function(component, event, helper) {
		var arg1 = component.get('v.arg1');
        var arg2 = component.get('v.arg2');
        var total = arg1*arg2;
        console.log(total);
        component.set('v.arg3',total);
	},
    doDiv : function(component, event, helper) {
		var arg1 = component.get('v.arg1');
        var arg2 = component.get('v.arg2');
        var total = arg1/arg2;
        console.log(total);
        component.set('v.arg3',total);
	}
})