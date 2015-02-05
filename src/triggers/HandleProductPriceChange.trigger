trigger HandleProductPriceChange on Merchandisess__c (after update)
    {
      if(recusrssionPreventController.flag1==true){
    recusrssionPreventController.flag1=false;
    List<Merchandisess__c > openLineItems =[Select m.AnkushTest__Total_Inventory__c,
                                        m.AnkushTest__Price__c From Merchandisess__c m 
                                        where m.AnkushTest__Total_Inventory__c>10];
            for (Merchandisess__c li: openLineItems)
        {
            if(li.AnkushTest__Total_Inventory__c>0)
        {
            li.AnkushTest__Price__c=10000;
        }
        }
        update openLineItems;
    }
  }