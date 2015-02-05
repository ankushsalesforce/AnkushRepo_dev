trigger Customlabel on Account (After update) {
    for(account ac: trigger.new){
        if(ac.AnnualRevenue==null)
        ac.addError(label.CheckCustom_label);
    }
}