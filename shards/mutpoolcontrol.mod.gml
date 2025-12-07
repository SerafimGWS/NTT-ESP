#define init

global.MUT_OPTIONS_FILE = "mut_options.json";

global.MUT_PRESET_FILE = "mut_presets.json";

mod_current_type = script_ref_create(0)[0];

// values for your options should go in a global lightweight object
// you specify the global's name when adding, doesn't have to be `options`
global.options = {
	"rhino_skin": true,
    "extra_feet": true,
    "plutonium_hunger": true,
    "rabbit_paw": true,
    "throne_butt": true,
    "lucky_shot": true,
    "bloodlust": true,
    "gamma_guts": true,
    "second_stomach": true,
    "back_muscle": true,
    "scarier_face": true,
    "euphoria": true,
    "long_arms": true,
    "boiling_veins": true,
    "shotgun_shoulders": true,
    "recycle_gland": true,
    "laser_brain": true,
	"last_wish": true,
	"eagle_eyes": true,
	"impact_wrists": true,
	"bolt_marrow": true,
	"stress": true,
	"trigger_fingers": true,
	"sharp_teeth": true,
	"patience": true,
	"hammerhead": true,
	"strong_spirit": true,
	"open_mind": true,
	"heavy_heart": true,
	"mut_reset": false
};

global.loaded = false;

if fork() {
	// wait for Custom Options to load
	while !mod_script_exists("mod", "custom_options", "scr_import") {
		wait 0;
	}
	
	// Custom Options is loaded, we can import now
	if mod_script_exists("mod", "custom_options", "scr_import") {
		// import Custom Options' scripts to our `global.scr` variable (change name if desired)
		mod_script_call_nc("mod", "custom_options", "scr_import", script_ref_create(0), "scr");
	}
	
	global.loaded = true;
	
	// add options with `option_add` and `option_add_page`
	// see `api.txt` for the API and `fields.txt` for the fields of each option type
	
	call(scr.option_add_page, mod_current_type, mod_current, "options", "mut_page1", {
		"options": [
			{
				"option": "rhino_skin",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:1) Rhino Skin"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "extra_feet",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:2) extra feet"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "plutonium_hunger",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:3) plutonium hunger"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "rabbit_paw",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:4) rabbit paw"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "throne_butt",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:5) throne butt"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "lucky_shot",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:6) lucky shot"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "bloodlust",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:7) bloodlust"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "gamma_guts",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:8) gamma guts"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "mut_page2", {
		"options": [
			{
				"option": "second_stomach",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:9) second stomach"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "back_muscle",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:10) back muscle"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "scarier_face",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:11) scarier face"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "euphoria",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:12) euphoria"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "long_arms",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:13) long arms"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "boiling_veins",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:14) boiling veins"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "shotgun_shoulders",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:15) shotgun shoulders"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "recycle_gland",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:16) recycle gland"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "mut_page3", {
		"options": [
			{
				"option": "laser_brain",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:17) laser brain"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "last_wish",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:18) last wish"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run#but will appear anyways#if there is no avaible new muts"
				}
			},
			{
				"option": "eagle_eyes",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:19) eagle eyes"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "impact_wrists",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:20) impact wrists"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "bolt_marrow",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:21) bolt marrow"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "stress",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:22) stress"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "trigger_fingers",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:23) trigger fingers"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
		]
	});

	call(scr.option_add_page, mod_current_type, mod_current, "options", "mut_page4", {
		"options": [
			{
				"option": "sharp_teeth",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:24) sharp teeth"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "patience",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:25) patience"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "hammerhead",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:26) hammerhead"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "strong_spirit",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:27) strong spirit"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "open_mind",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:28) open mind"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "heavy_heart",
				"kind": "bool",
				"name": {
					"text": "@(sprSkillIconHUD:29) heavy heart"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
			{
				"option": "mut_reset",
				"kind": "bool",
				"name": {
					"text": "@(sprEGIconHUD:24) @ymut options reset@s"
				},
				"desc": {
					"text": "When @rOFF@s#deletes this mutation#from pool of mutations#only on start of new run"
				}
			},
		]
	});
	
	call(scr.option_set_mod_display_name, mod_current_type, mod_current, " MUTATIONS#    POOL#  CONTROL");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "mut_page1", "CONFIG I");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "mut_page2", "CONFIG II");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "mut_page3", "CONFIG III");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "mut_page4", "CONFIG IV");
	
	exit;
}

#define game_start

if (!skill_get(1)){
	if (global.options.rhino_skin == false){
		if(skill_get_active(1)){
			skill_set_active(1, 0);
		}
	}
	else{
		if(!skill_get_active(1)){
			skill_set_active(1, 1);
		}
	}
}

if (!skill_get(2)){
	if (global.options.extra_feet == false){
		if(skill_get_active(2)){
			skill_set_active(2, 0);
		}
	}
	else{
		if(!skill_get_active(2)){
			skill_set_active(2, 1);
		}
	}
}

if (!skill_get(3)){
	if (global.options.plutonium_hunger == false){
		if(skill_get_active(3)){
			skill_set_active(3, 0);
		}
	}
	else{
		if(!skill_get_active(3)){
			skill_set_active(3, 1);
		}
	}
}

if (!skill_get(4)){
	if (global.options.rabbit_paw == false){
		if(skill_get_active(4)){
			skill_set_active(4, 0);
		}
	}
	else{
		if(!skill_get_active(4)){
			skill_set_active(4, 1);
		}
	}
}

if (!skill_get(5)){
	if (global.options.throne_butt == false){
		if(skill_get_active(5)){
			skill_set_active(5, 0);
		}
	}
	else{
		if(!skill_get_active(5)){
			skill_set_active(5, 1);
		}
	}
}

if (!skill_get(6)){
	if (global.options.lucky_shot == false){
		if(skill_get_active(6)){
			skill_set_active(6, 0);
		}
	}
	else{
		if(!skill_get_active(6)){
			skill_set_active(6, 1);
		}
	}
}

if (!skill_get(7)){
	if (global.options.bloodlust == false){
		if(skill_get_active(7)){
			skill_set_active(7, 0);
		}
	}
	else{
		if(!skill_get_active(7)){
			skill_set_active(7, 1);
		}
	}
}

if (!skill_get(8)){
	if (global.options.gamma_guts == false){
		if(skill_get_active(8)){
			skill_set_active(8, 0);
		}
	}
	else{
		if(!skill_get_active(8)){
			skill_set_active(8, 1);
		}
	}
}

if (!skill_get(9)){
	if (global.options.second_stomach == false){
		if(skill_get_active(9)){
			skill_set_active(9, 0);
		}
	}
	else{
		if(!skill_get_active(9)){
			skill_set_active(9, 1);
		}
	}
}

if (!skill_get(10)){
	if (global.options.back_muscle == false){
		if(skill_get_active(10)){
			skill_set_active(10, 0);
		}
	}
	else{
		if(!skill_get_active(10)){
			skill_set_active(10, 1);
		}
	}
}

if (!skill_get(11)){
	if (global.options.scarier_face == false){
		if(skill_get_active(11)){
			skill_set_active(11, 0);
		}
	}
	else{
		if(!skill_get_active(11)){
			skill_set_active(11, 1);
		}
	}
}

if (!skill_get(12)){
	if (global.options.euphoria == false){
		if(skill_get_active(12)){
			skill_set_active(12, 0);
		}
	}
	else{
		if(!skill_get_active(12)){
			skill_set_active(12, 1);
		}
	}
}

if (!skill_get(13)){
	if (global.options.long_arms == false){
		if(skill_get_active(13)){
			skill_set_active(13, 0);
		}
	}
	else{
		if(!skill_get_active(13)){
			skill_set_active(13, 1);
		}
	}
}

if (!skill_get(14)){
	if (global.options.boiling_veins == false){
		if(skill_get_active(14)){
			skill_set_active(14, 0);
		}
	}
	else{
		if(!skill_get_active(14)){
			skill_set_active(14, 1);
		}
	}
}

if (!skill_get(15)){
	if (global.options.shotgun_shoulders == false){
		if(skill_get_active(15)){
			skill_set_active(15, 0);
		}
	}
	else{
		if(!skill_get_active(15)){
			skill_set_active(15, 1);
		}
	}
}

if (!skill_get(16)){
	if (global.options.recycle_gland == false){
		if(skill_get_active(16)){
			skill_set_active(16, 0);
		}
	}
	else{
		if(!skill_get_active(16)){
			skill_set_active(16, 1);
		}
	}
}

if (!skill_get(17)){
	if (global.options.laser_brain == false){
		if(skill_get_active(17)){
			skill_set_active(17, 0);
		}
	}
	else{
		if(!skill_get_active(17)){
			skill_set_active(17, 1);
		}
	}
}

if (!skill_get(18)){
	if (global.options.last_wish == false){
		if(skill_get_active(18)){
			skill_set_active(18, 0);
		}
	}
	else{
		if(!skill_get_active(18)){
			skill_set_active(18, 1);
		}
	}
}

if (!skill_get(19)){
	if (global.options.eagle_eyes == false){
		if(skill_get_active(19)){
			skill_set_active(19, 0);
		}
	}
	else{
		if(!skill_get_active(19)){
			skill_set_active(19, 1);
		}
	}
}

if (!skill_get(20)){
	if (global.options.impact_wrists == false){
		if(skill_get_active(20)){
			skill_set_active(20, 0);
		}
	}
	else{
		if(!skill_get_active(20)){
			skill_set_active(20, 1);
		}
	}
}

if (!skill_get(21)){
	if (global.options.bolt_marrow == false){
		if(skill_get_active(21)){
			skill_set_active(21, 0);
		}
	}
	else{
		if(!skill_get_active(21)){
			skill_set_active(21, 1);
		}
	}
}

if (!skill_get(22)){
	if (global.options.stress == false){
		if(skill_get_active(22)){
			skill_set_active(22, 0);
		}
	}
	else{
		if(!skill_get_active(22)){
			skill_set_active(22, 1);
		}
	}
}

if (!skill_get(23)){
	if (global.options.trigger_fingers == false){
		if(skill_get_active(23)){
			skill_set_active(23, 0);
		}
	}
	else{
		if(!skill_get_active(23)){
			skill_set_active(23, 1);
		}
	}
}

if (!skill_get(24)){
	if (global.options.sharp_teeth == false){
		if(skill_get_active(24)){
			skill_set_active(24, 0);
		}
	}
	else{
		if(!skill_get_active(24)){
			skill_set_active(24, 1);
		}
	}
}

if (!skill_get(25)){
	if (global.options.patience == false){
		if(skill_get_active(25)){
			skill_set_active(25, 0);
		}
	}
	else{
		if(!skill_get_active(25)){
			skill_set_active(25, 1);
		}
	}
}

if (!skill_get(26)){
	if (global.options.hammerhead == false){
		if(skill_get_active(26)){
			skill_set_active(26, 0);
		}
	}
	else{
		if(!skill_get_active(26)){
			skill_set_active(26, 1);
		}
	}
}

if (!skill_get(27)){
	if (global.options.strong_spirit == false){
		if(skill_get_active(27)){
			skill_set_active(27, 0);
		}
	}
	else{
		if(!skill_get_active(27)){
			skill_set_active(27, 1);
		}
	}
}

if (!skill_get(28)){
	if (global.options.open_mind == false){
		if(skill_get_active(28)){
			skill_set_active(28, 0);
		}
	}
	else{
		if(!skill_get_active(28)){
			skill_set_active(28, 1);
		}
	}
}

if (!skill_get(29)){
	if (global.options.heavy_heart == false){
		if(skill_get_active(29)){
			skill_set_active(29, 0);
		}
	}
	else{
		if(!skill_get_active(29)){
			skill_set_active(29, 1);
		}
	}
}

#define step

//options preset
if(global.options.mut_reset){
	if (fork()) {
	wait(file_load(global.MUT_PRESET_FILE) + 1);

	if (file_exists(global.MUT_PRESET_FILE)) {
		var _options = json_decode(string_load(global.MUT_PRESET_FILE));
        var option_count = lq_size(global.options);
    
        for (var i = 0; option_count > i; i++) {
            if (!lq_exists(_options, lq_get_key(global.options, i))) {
                lq_set(_options, lq_get_key(global.options, i), lq_get_value(global.options, i));
            }
        }

        global.options = _options;
		global.options.reset = false;
		call(scr.options_refresh)
		}
	}
}
//options preset

#define cleanup
if global.loaded {
	// remove the mod from Custom Options
	call(scr.option_remove_mod, mod_current_type, mod_current);
}

// save in cleanup, just in case
CustomOptions_save();

#macro scr global.scr
#macro call script_ref_call

#macro mod_current_type global.mod_current_type

#define CustomOptions_init
// a script that runs when Custom Options loads, if this mod exists first
//trace(`${mod_current}.${mod_current_type}::CustomOptions_init`);

#define CustomOptions_open
// a script that runs when a user selects your mod through Custom Options' GUI
// you can load your options file here or in `#define init`
//trace(`${mod_current}.${mod_current_type}::CustomOptions_open`);
if (fork()) {
	wait(file_load(global.MUT_OPTIONS_FILE) + 1);

	if (file_exists(global.MUT_OPTIONS_FILE)) {
		var _options = json_decode(string_load(global.MUT_OPTIONS_FILE));
        var option_count = lq_size(global.options);
    
        for (var i = 0; option_count > i; i++) {
            if (!lq_exists(_options, lq_get_key(global.options, i))) {
                lq_set(_options, lq_get_key(global.options, i), lq_get_value(global.options, i));
            }
        }

        global.options = _options;
	} else {
		string_save(json_encode(global.options, "   "), global.MUT_OPTIONS_FILE);
		string_save(json_encode(global.options, "   "), global.MUT_PRESET_FILE);
	}
}

#define CustomOptions_save
// a script that runs when Custom Options detects the menu closing
// you can save your options file here or in `#define cleanup`
//trace(`${mod_current}.${mod_current_type}::CustomOptions_save`);
string_save(json_encode(global.options, "  "), global.MUT_OPTIONS_FILE);