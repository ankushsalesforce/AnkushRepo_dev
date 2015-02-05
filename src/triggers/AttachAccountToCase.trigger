trigger AttachAccountToCase on EmailMessage (After insert){
    if(trigger.isAfter && trigger.isInsert){
        AttachAccountTriggerHandler.Afterinsert(Trigger.new);
  }
}