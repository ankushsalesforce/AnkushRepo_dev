trigger updateRichtextfield on TestApp__c (After insert , After Update) {
      list<TestConatct__c> talst = new List<TestConatct__c>();
      list<TestApp__c> taalst = new List<TestApp__c>();
      set<id> sid = new set<id>();
      Map<id,list<sobject>> mapt = new  Map<id,list<sobject>> ();
      for(TestApp__c ta : trigger.new){
            sid.add(ta.TestContact__c);
            taalst.add(ta);
            mapt.put(ta.TestContact__c,taalst);
      }
      system.debug('\n==sid'+sid);
      talst = [Select id , Rich_text__c from TestConatct__c where id in : sid];
       list<TestApp__c> list1= [Select id,TestContact__c from TestApp__c where TestContact__c in : sid];
      system.debug('\n==talst'+talst);
      system.debug('\n==mapt'+mapt);
      for(TestConatct__c tcc : talst){
      	  			talst = new List<TestConatct__c>();
    	for(SObject tc : mapt.get(tcc.id)){
      			system.debug('11111111111'+String.valueof(tc.get('TestFormula__c')));
      			tcc.Rich_text__c = tcc.Rich_text__c+','+String.valueof(tc.get('TestFormula__c'));
      			}
    		talst.add(tcc);

      }
      update talst;
}