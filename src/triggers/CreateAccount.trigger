trigger CreateAccount on EmailMessage (After insert, After Update){
    string []  emails ;
    Map<String,Domain__c> domMap = Domain__c.getAll();// 
    system.debug('===getall'+Domain__c.getAll());
    system.debug('===dommap'+dommap);
    set<id> sid = new set<id>();
    Domain__c ccd = new Domain__c();// *************
    For(EmailMessage em : trigger.new){
        if(em.Incoming == True ){
            emails =  em.FromAddress.split('@'); // emails.add(em.FromAddress.subStringAfter('@'));           
            system.debug('===Emails'+emails);
            system.debug('===dommap.containsKey(emails)'+dommap.containsKey(emails[1]));
            if(dommap.containsKey(emails[1])){
              sid.add(em.ParentId); 
            }
            system.debug('\nsid'+sid); 
        }
    }
     
    List<Case> lst = new List<Case>();
    List<Case> lstAfterAdding = new List<Case>();
    lst = [Select id , Accountid from case where id in : sid];
    system.debug('==lst'+lst);
    for(case cs : lst){
        //lst = new List<Case>();
        system.debug('==lst1'+lst);
        if(cs.Accountid == Null){
            system.debug(string.valueof(dommap.get(emails[1])));
            system.debug(dommap.get(emails[1]).AnkushTest__Account__c);
            string st =string.valueof(dommap.get(emails[1]).AnkushTest__Account__c);
            system.debug(st);
            Account acctt = [Select id , name from Account where name = :st];
            system.debug(acctt);
            cs.Accountid = acctt.id ;
            lstAfterAdding.add(cs);
            system.debug('==lstAfterAdding'+lst);
                }
        else{ 
            lstAfterAdding.add(cs);
            system.debug('==inelse');
        }

    update lstAfterAdding;
    system.debug('==lstAfterAdding'+lstAfterAdding);
}
}