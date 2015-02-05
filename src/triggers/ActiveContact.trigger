Trigger ActiveContact on User (After Insert, Before Update) {
    
    list<TestConatct__c> tcList = [select id,Email__c from TestConatct__c limit 50000];

    for(user u: trigger.new){
        for(TestConatct__c cObj : tcList )
            if(u.Email==cObj.Email__c){
                u.IsActive=false; 
            }
       }
}