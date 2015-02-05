trigger Formulafield on Opportunity (Before update) {
    for(Opportunity opp : Trigger.new){
        if(opp.RecordTypeId == '012i00000015qIbAAI'){
        	opp.AnkushTest__Opp_Amt__c  += opp.AnkushTest__Opp_Amt__c;
        }
    }

}