#define init

global.prev_locs = {
	"levelup_title"		: loc("LevCont:LevelUp","LEVEL UP"),
	"select_text"		: loc("LevCont:SelectMutations","@sSELECT % MUTATIONS"),
    "select_text1"		: loc("LevCont:SelectMutations:1","@sSELECT 1 MUTATION"),
    "select_robot"		: loc("LevCont:InstallUpdates","@sINSTALL % UPDATES@s#DO NOT TURN OFF ROBOT"),
	"select_robot1"		: loc("LevCont:InstallUpdates:1","@sINSTALL 1 UPDATE")
}

#define step

with (SkillIcon){
    if(num > 0){
        instance_delete(self);
    }
    else{
        skill = 26;
        image_index = 26;
        name = "HAMMERHEAD";
        text = "PUSH THROUGH A LIMITED NUMBER OF @wWALLS@s#";
        LevCont.maxselect = 0;
        loc_set("LevCont:LevelUp","HAMMERHEAD TIME");
        loc_set("LevCont:SelectMutations","YOU WILL NEED IT");
        loc_set("LevCont:SelectMutations:1","YOU WILL NEED IT");
        loc_set("LevCont:InstallUpdates","YOU WILL NEED IT");
        loc_set("LevCont:InstallUpdates:1","YOU WILL NEED IT");
    }
}

#define cleanup

loc_set("LevCont:LevelUp",global.prev_locs.levelup_title);
loc_set("LevCont:SelectMutations",global.prev_locs.select_text);
loc_set("LevCont:SelectMutations:1",global.prev_locs.select_text1);
loc_set("LevCont:InstallUpdates",global.prev_locs.select_robot);
loc_set("LevCont:InstallUpdates:1",global.prev_locs.select_robot1);