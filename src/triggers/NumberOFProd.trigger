/*Once Opportunity Line Line Item is added to Opportunity with the specified product,
Then Product Total Quantities must be deduct from the Product Object
e.g. If we have Total Quantity 100 on Product object and we have added 50 in line items ,
 then product must be update 100-50 = 50 
Create Total Quantity, Available Quantity Fields on Product2 object.*/
trigger NumberOFProd on OpportunityLineItem (After insert) {
    map<Id, Product2> map1 = new map<Id , product2>();
    set<id> sid = new Set<Id>();
    For(OpportunityLineItem  ol : trigger.new){
        sid.add(ol.Product2ID);
        System.debug('===sid '+ol.Product2ID);
      //  map1.put(ol.id,ol.Product2);
        System.debug('===Map1 ='+ map1);
         }
    List<Product2> prLst =new List<Product2>([Select Id, AnkushTest__Available_Quantity_Fields__c,AnkushTest__Create_Total_Quantity__c   from Product2 where ID in : Sid]);
    system.debug('==PRlst'+prlst);
    
        For(OpportunityLineItem  ol : trigger.new){
            For(Product2 pr : prlst){
                if(pr.AnkushTest__Available_Quantity_Fields__c != null){
                pr.AnkushTest__Available_Quantity_Fields__c = pr.AnkushTest__Available_Quantity_Fields__c - ol.Quantity;
                System.debug('===ol.Quantity'+ol.Quantity);
                System.debug('===AnkushTest__Available_Quantity_Fields__c  '+pr.AnkushTest__Available_Quantity_Fields__c);
    }   
    }
    update prlst;
}
}