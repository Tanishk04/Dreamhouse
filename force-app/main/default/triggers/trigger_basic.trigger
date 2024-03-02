trigger trigger_basic on Opportunity (before insert) {
    for (Opportunity a : Trigger.new){
        if (a.amount < 501 ){
            a.addError('Amount value should be greater than 500');
        }
    }
}