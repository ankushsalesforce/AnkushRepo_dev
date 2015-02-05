trigger testTrigger on Account (after insert) {
    for(account a: trigger.new){
        FutureMethod.webcall(a.id);
        
    }
}