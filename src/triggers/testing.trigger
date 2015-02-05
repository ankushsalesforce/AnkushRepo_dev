Trigger testing on Quote (after Insert) {
    //Set<id> newQuoteRelatedOpportunity = new Set<id>();
    Map<id,id> newQuoteOpportunityMap = new Map<id,id>();
    //Map<> opportunityOldQuoteMap=new Map<>();
    Map<id,id> oldQuoteNewQuoteMap=new Map<id,id>();
    List<Quote> OpportuityRelatedQuotes= new List<Quote>();
    List<id> oldQuotIds=new List<id>();
    list<Quote_Line_Items__c> updatedQLI= new list<Quote_Line_Items__c>();

    for(Quote quoteRec : trigger.new){
        //newQuoteRelatedOpportunity.add(quoteRec.OpportunityId);
        newQuoteOpportunityMap.put(quoteRec.id,quoteRec.OpportunityId);
    }        
    
    OpportuityRelatedQuotes= [Select id,OpportunityId from Quote where OpportunityId in :newQuoteOpportunityMap.values()];
    for(Quote oldQuotes: OpportuityRelatedQuotes){
        for(Quote newQuote: Trigger.new){
            if(newQuote.OpportunityId==oldQuotes.OpportunityId)
                oldQuoteNewQuoteMap.put(oldQuotes.id,newQuote.id);
        }
    }
    
    oldQuotIds.addAll(oldQuoteNewQuoteMap.keyset());
    List<Quote_Line_Items__c> oldQuoteLineItem= new List<Quote_Line_Items__c>();
    oldQuoteLineItem = [Select id, Amt__c,Article_code__c,Cost_price__c,Current_selling_price__c,Deal_Price__c,Product_Description__c,Quantity__c,vat__c,Quote__c from Quote_Line_Items__c where Quote__c IN : oldQuotIds ];

    for(Quote_Line_Items__c quoteLineItem: oldQuoteLineItem){
        quoteLineItem.Quote__c=oldQuoteNewQuoteMap.get(quoteLineItem.Quote__c);
        updatedQLI.add(quoteLineItem);
        system.debug('========'+quoteLineItem);
    }
   // try{
        if(updatedQLI.size()>0)
            update updatedQLI;
   // }catch(exception ex){
  //      system.debug('===='+ex);
   // }
}