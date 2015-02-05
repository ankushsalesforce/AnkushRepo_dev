trigger populateCompany on Friend__c (before insert,Before update) {
    list<Friend__c> lst = [Select id, name ,AnkushTest__Company__c ,AnkushTest__Pare__c from Friend__c ];
    system.debug('====='+lst);
    For(Friend__c  fi: trigger.new){
        if(fi.AnkushTest__Company__c == null){
            fi.AnkushTest__Pare__c = fi.Name;     
            system.debug('====='+lst);
        }
    }
    //Update lst;
}