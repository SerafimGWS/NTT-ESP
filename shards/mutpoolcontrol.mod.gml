#define init
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
	"heavy_heart": true
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
	
	call(scr.option_add_page, mod_current_type, mod_current, "options", "global_page", {
		"options": [
			{
				"option": "test_bool",
				"kind": "bool",
				"name": {
					"text": "Toggle me!"
				},
				"desc": {
					"text": "Click on the 'ON' to turn me off!"
				}
			},
			{
				"option": "test_range",
				"kind": "range",
				"name": {
					"text": "Lucky number"
				},
				"desc": {
					"text": "Pick a number between 1 and 10"
				},
				"range": {
					"minimum": 1,
					"maximum": 10
				}
			},
			{
				"option": "test_slider",
				"kind": "slider",
				"name": {
					"text": "Progress"
				},
				"desc": {
					"text": "Decide how close this#percentage is to 100%"
				},
				"format": {
					"dec": 0
				}
			},
			{
				"option": "test_choice",
				"kind": "choice",
				"name": {
					"text": "Pick a door"
				},
				"desc": {
					"text": "Any door will do"
				},
				"values": ["a", 2, null],
				"display": ["A", "2", "D"]
			},
			{
				"option": "test_text",
				"kind": "text",
				"name": {
					"text": "@2(sprMutant1Idle)NAME:",
				},
				"desc": {
					"text": "Please input your#pet rock's name"
				}
			},
			{
				"option": "test_keys",
				"kind": "keys",
				"name": {
					"text": "@@ oh @@ no @@"
				},
				"desc": {
					"text": "Set a keybind"
				},
				"style": "buttons"
			}
		]
	});
	
	call(scr.option_add_page, mod_current_type, mod_current, "options", "big_eyes", {
		"reference": script_ref_create(draw_eyes_big)
	});
	
	call(scr.option_set_mod_display_name, mod_current_type, mod_current, "EXAMPLE#OPTIONS");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "global_page", "CONFIG");
	call(scr.option_set_page_display_name, mod_current_type, mod_current, "big_eyes", "BIG EYES");
	
	exit;
}

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

#define draw_eyes_big
draw_sprite_ext(sprMutant3Sit, sprite_get_number(sprMutant3Sit) - 3, game_width / 2, game_height / 2, 5, 5, 0, c_white, 1);

#define CustomOptions_init
// a script that runs when Custom Options loads, if this mod exists first
trace(`${mod_current}.${mod_current_type}::CustomOptions_init`);

#define CustomOptions_open
// a script that runs when a user selects your mod through Custom Options' GUI
// you can load your options file here or in `#define init`
trace(`${mod_current}.${mod_current_type}::CustomOptions_open`);

#define CustomOptions_save
// a script that runs when Custom Options detects the menu closing
// you can save your options file here or in `#define cleanup`
trace(`${mod_current}.${mod_current_type}::CustomOptions_save`);
