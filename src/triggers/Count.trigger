//Create a field on User Object "Count", On Account insert Increment 1 in

trigger Count on User (Before  Insert, Before Update, Before Delete) {
    if(trigger.isInsert){
        //UserCountIncrementTriggerhandler.BeforeInsert();
    }
}