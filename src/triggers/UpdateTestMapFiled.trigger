trigger UpdateTestMapFiled on Account (After update) {
   set<id> sid = new Set<id>();
       List<Contact> con=new List<Contact>();
       
       For(Account ac: trigger.new){
           sid.add(ac.id);
/*            Contact co=new Contact();
      
        co.Lastname='a';
        co.AssistantName='ki';
        con.add(co); */
       }
system.debug('=====set ==='+sid);       
              con =[Select id , name from Contact where Accountid in: sid];
system.debug('=con=========='+con);
list<contact> updatedContacts=new list<contact>();
        for(contact c: con){
            c.Lastname='hi';
            updatedContacts.add(c);
    }
    
  update updatedContacts;

  /*  for(account a :Trigger.new){
   
     /   Contact co=new Contact();
        co.Accountid=a.id;
        co.Lastname='a';
        co.AssistantName='ki';
        con.add(co);
        
    } 
    update con;*/


}