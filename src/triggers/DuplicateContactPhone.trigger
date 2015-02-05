//Write a trigger on contact to prevent duplicate records based on Contact Email & Contact Phone.
trigger DuplicateContactPhone on Contact(Before insert){
  if(trigger.isBefore && trigger.isInsert){
        DuplicateTriggerhandler.beforeinert(trigger.new);
}
}