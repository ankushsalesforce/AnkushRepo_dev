trigger CountChild on Contact (After Delete, After Insert,After Update) {
	Set<Id> setofAccountId = new Set<Id>();
	if(trigger.isDelete){
		for(Contact ct : trigger.old){
			if(ct.HasOptedOutOfFax == True){
				setofAccountId.add(ct.AccountId);
		    }
		}
	}
	if(!trigger.isDelete){
		for(Contact ct : trigger.new){
			if(ct.HasOptedOutOfFax == True){
				setofAccountId.add(ct.AccountId);
		    }
		}
	}
	List<Contact> countContactList = new List<Contact>([Select Id,HasOptedOutOfFax From Contact where AccountId in : setofAccountId AND HasOptedOutOfFax = True]);
	List<Account> acctList = new List<Account>([Select Id From Account where Id in : setofAccountId]);
	List<Account> updateList = new List<Account>();
	//if(countContactList.size() > 0){
		for(Account ct : acctList){
			ct.SLASerialNumber__c = String.valueOf(countContactList.size());
			System.debug(countContactList.size());
			updateList.add(ct);
		}
		update updateList;
	//}
}