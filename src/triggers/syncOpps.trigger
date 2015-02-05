trigger syncOpps on Quote (Before Insert) {
    Set<id> q = new Set<id>();
    
                     
      for(Quote w :trigger.new){
        q.add(w.OpportunityId);
        
        //insert qi;
        
    }        
    system.debug(q);
   
              Set<id> sid =new Set<id>();
              List<Quote> t= new List<quote>();
              t= [Select id from Quote where id in :q];
              system.debug(t);
               for(quote t1:t){
                     sid.add(t1.id);
                 }
                     system.debug(sid);
                     List<Quote_Line_Items__c> qi= new List<Quote_Line_Items__c>();
                 qi= [Select id, Amt__c from Quote_Line_Items__c where id in: sid ];
                 
                 system.debug(qi);

             

 

}