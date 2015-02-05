trigger CheckOwner on Opportunity (before Insert) {
    List<opportunity> oplist= new list<opportunity>();
    integer op =[Select count() From opportunity where Ownerid=:UserInfo.getUserId()];
    for(opportunity opp:trigger.new){
        
        if(op>1){
            Trigger.new[0].addError('error messages！');
            }
    }
}