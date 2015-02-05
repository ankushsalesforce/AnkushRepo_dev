trigger LastAttach on Attachment (After insert) {
    list<account> aclist= new  list<Account>() ;
    Account ac= new Account();
    for (attachment a : trigger.new ){
   // id idd=a.parentId;
   // system.debug(idd);
        //if(a.parentId==ac.id){
          //  ac.AnkushTest__last_attachment_added__c=system.now();
          String checkAccountId = a.ParentId;
        if(checkAccountId.startsWith('001')){
          aclist.add( new Account(Id=a.ParentId,AnkushTest__last_attachment_added__c= System.now()));
        }
            }
  //}
    update aclist;
    }