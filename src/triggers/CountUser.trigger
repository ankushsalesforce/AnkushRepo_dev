//Create a field on User Object "Count", On Account insert Increment 1 in

Trigger CountUser on Account(After Insert, After Update, After Delete) {
    if(trigger.isafter && trigger.Isinsert){
        
            UserCountIncrementTriggerhandler.AfterInsert(trigger.new);
    }
     if(trigger.isafter && trigger.IsDelete){
         UserCountIncrementTriggerhandler.AfterDelete(trigger.old);
     }
}