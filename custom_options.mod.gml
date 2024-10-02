#macro VERSION "9940, 9944, and v100 (release)"
#define init
mod_current_type = script_ref_create(0)[0];

scr = {};

var _scripts = [
	"option_set", "option_get", "option_defget",
	
	"option_set_fake_nonsync", "option_get_fake_nonsync", "option_defget_fake_nonsync",
	
	"option_set_field", "option_get_field", "option_defget_field",
	
	"option_add", "option_add_page", "option_remove", "option_remove_page", "option_remove_mod",
	
	"option_set_mod_display_name", "option_set_page_display_name", "option_set_display_name",
	
	"options_refresh",
	
	"world_to_region", "region_to_world", "region_corners_rotated", "point_in_region", "region_resize", "region_relocate",
	
	"script_ref_wrap", "script_ref_is_wrapped", "input_event_create",
	
	"option_opener_relocate"
];

var _exportedScriptCount = array_length(_scripts);
var i = -1;

if _exportedScriptCount > 0 {
	repeat _exportedScriptCount {
		i += 1;
		lq_set(scr, _scripts[i], [mod_current_type, mod_current, _scripts[i]]);
	}
}

/*
if fork() {
	while !mod_script_exists("mod", "custom_options", "scr_import") {
		wait 0;
	}
	
	if mod_script_exists("mod", "custom_options", "scr_import") {
		mod_script_call_nc("mod", "custom_options", "scr_import", script_ref_create(0), "scr");
	}
	
	exit;
}

#macro scr global.scr
#macro call script_ref_call
*/

with script_bind_draw(draw_regions, -10000) {
	variable_instance_set(id, CONTROLLER, true);
	persistent = true;
	name = "RegionDraw";
	global.drawing_controller = id;
}

global.regions = ds_list_create();

global.string_delete_nt_cache = ds_map_create();
global.string_hash_to_newline_cache = ds_map_create();

MENU = {
	"opener": array_create(maxp, null),
	"opener_pos": {
		"x": -8,
		"y": 8
	},
	"mod_index": 0,
	"mod_count": 0,
	"mods": [],
	"region": array_create(maxp, null),
	"text_region": array_create(maxp, noone),
	"keys_region": array_create(maxp, noone),
	"page_population": array_create(maxp, null),
	"page_unpositioned": array_create(maxp, null),
	"page_anim": array_create(maxp, 0),
	"selected": array_create(maxp, null)
};

var p = -1;

repeat maxp {
	p += 1;
	MENU.page_population[p] = [];
	MENU.page_unpositioned[p] = [];
}

global.export_to = {};

var _persistentData = instances_matching(CustomObject, CONTROLLER, mod_current);

if array_length(_persistentData) > 0 {
	var _restored = false;
	
	with _persistentData {
		if !_restored {
			_restored = true;
			
			if "export_to" in self {
				var _exportedToCount = lq_size(export_to);
				i = -1;
				
				if _exportedToCount > 0 {
					repeat _exportedToCount {
						i += 1;
						
						var _modData = string_split(lq_get_key(export_to, i), ".");
						var _modReference = [_modData[1], _modData[0], lq_get_value(export_to, i)];
						scr_import(_modReference, _modReference[2]);
					}
				}
			}
			
			if "menu" in self {
				MENU.mods = menu.mods;
				MENU.mod_index = menu.mod_index;
				MENU.mod_count = menu.mod_count;
			}
		}
		
		instance_delete(self);
	}
}

global.options_icon = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAB3SURBVDhPpY7RDYAgDERdxAWcwMQf1mAs/93JkbR6pLZNz0i8vA+g94BhKbWLSxin+SNUOO6EQ8EJtsTWicCSCNZZt11oG/O3XJAqtupo4REwkGgbhHd+CAADdbSthVyQSDXcDZzQhiRUeF87wWJLFiowmtBBqSfc1U5QWvARqAAAAABJRU5ErkJgggAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==", 1, 8, 8);

global.options_slider = sprite_add_base64("iVBORw0KGgoAAAANSUhEUgAAAOAAAAATCAYAAACJKwFWAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFWSURBVHhe7ZYBjsMgDATz/y/kX/lOT0hYcn1LMLSkGHakkSqKTS5r1DsqvIyC/lzC1npqBFTb4miePItsiHfA9D5kCbT3U72gWuto0JkeBbRGFkQH3aoGfU/bFErrJDg2WPpbyUagAaDzOpTzPF/J67o+Vnpp8zFVUG2r6Jl6RL2t+bG70OHSGDaRBgQNllgaIlmv1feq+4v56DdQbQRLf49GAqVxrHIXflq3gzKrcimtaO+spufNrx6ig6Vz2020oV1JXsA1FNDaPyL+UqygvHcxx1FFh0rnNIHWbkFDQp/VcxFtsHQ+m0iho2Ggz8sLuKZdyL9GaFDoGPOrL2KDpXG85VuXTfq0inp5Rf28on5eUT8kqkWmvTmOIjZUGkMyEHSZrPZSWnOrKjZYOrdkQVDQdD7JJqDw6XySDUGD8GvvQPtb9YJqR0s2J+pQoOf2SMiXOI4/gQxK+N+yMEQAAAAASUVORK5CYII=", 2, 1, 6);

global.surface_targets = ds_list_create();

var _modTypes = [
	"mod", "weapon", "race", "skill", "crown", "area", "skin"
];

i = -1;

repeat array_length(_modTypes) {
	i += 1;
	
	var _modType = _modTypes[i];
	
	var _modsOfType = mod_get_names(_modType);
	
	var _modCount = array_length(_modsOfType);
	var j = -1;
	
	if _modCount > 0 {
		repeat _modCount {
			j += 1;
			
			var _modName = _modsOfType[j];
			
			if mod_script_exists(_modType, _modName, "CustomOptions_init") {
				mod_script_call_nc(_modType, _modName, "CustomOptions_init");
			}
		}
	}
}

chat_comp_add("custom-options", "Open the options menu");
chat_comp_add("custom-options-update", "Check for updates");

#define cleanup
with instance_create(0, 0, CustomObject) {
	variable_instance_set(self, CONTROLLER, mod_current);
	persistent = true;
	
	export_to = global.export_to;
	
	menu = MENU;
	menu.region = array_create(maxp, null);
}

var p = -1;

repeat maxp {
	p += 1;
	
	if player_is_active(p) && MENU.region[p] != null && MENU.region[p].open {
		save_options();
		break;
	}
}

var i = -1;

repeat ds_list_size(global.regions) {
	i += 1;
	
	if i >= ds_list_size(global.regions) {
		break;
	}
	
	var _region = global.regions[| i];
	
	region_destroy(_region);
}

if ds_list_valid(global.regions) {
	ds_list_destroy(global.regions);
}

if instance_exists(global.drawing_controller) {
	instance_delete(global.drawing_controller);
}

if ds_map_valid(global.string_delete_nt_cache) {
	ds_map_destroy(global.string_delete_nt_cache);
}

if ds_map_valid(global.string_hash_to_newline_cache) {
	ds_map_destroy(global.string_hash_to_newline_cache);
}

if sprite_exists(global.options_icon) {
	sprite_delete(global.options_icon);
}

if sprite_exists(global.options_slider) {
	sprite_delete(global.options_slider);
}

if ds_list_valid(global.surface_targets) {
	ds_list_destroy(global.surface_targets);
}

#macro scr global.scr
#macro call script_ref_call

#macro mod_current_type global.mod_current_type
#macro CONTROLLER mod_current + "." + mod_current_type + " CONTROLLER"

#macro MENU global.menu

#define scr_import
var _modReference = argument[0];
var _modVariable = argument_count > 1 ? argument[1] : "scr";

if !mod_exists(_modReference[0], _modReference[1]) {
	exit;
}

var _exportedScripts = {};

var _scriptCount = lq_size(scr);
var i = -1;

if _scriptCount > 0 {
	repeat _scriptCount {
		i += 1;
		
		var _scriptReference = lq_get_value(scr, i);
		
		if _scriptReference[0] == mod_current_type && _scriptReference[1] == mod_current {
			lq_set(_exportedScripts, lq_get_key(scr, i), array_clone(_scriptReference));
		}
	}
}

if !is_object(mod_variable_get(_modReference[0], _modReference[1], _modVariable)) {
	mod_variable_set(_modReference[0], _modReference[1], _modVariable, _exportedScripts);
} else {
	var _modScripts = mod_variable_get(_modReference[0], _modReference[1], _modVariable);
	
	var _exportedScriptCount = lq_size(_exportedScripts);
	i = -1;
	
	if _exportedScriptCount > 0 {
		repeat _exportedScriptCount {
			i += 1;
			
			lq_set(_modScripts, lq_get_key(_exportedScripts, i), array_clone(lq_get_value(_exportedScripts, i)));
		}
	}
}

lq_set(global.export_to, _modReference[1] + "." + _modReference[0], _modVariable);

#define chat_command(_cmd, _arg, _p)
switch string_lower(_cmd) {
	case "custom-options": {
		if !instance_exists(Menu) {
			trace_color(`/${_cmd} only works at the campfire`, c_red);
			return true;
		}
		
		var _uids = [];
		
		var p = -1;
		
		repeat maxp {
			p += 1;
			
			if player_is_active(p) {
				var _uid = player_get_uid(p);
				
				if array_find_index(_uids, _uid) < 0 {
					array_push(_uids, _uid);
					
					if MENU.region[_p] == null {
						OptionsMenu_create(p, false);
					} else {
						region_destroy(MENU.region[p]);
					}
				}
			}
		}
		
		return true;
	}
	
	case "custom-options-update": {
		if fork() {
			trace_color("Checking for an update to Custom Options...", c_aqua);
			
			file_download("https://itch.io/api/1/x/wharf/latest?target=gimmick/custom-options&channel_name=9944-final", "version.json");
			
			var _timeout = 3600;
			
			while !file_loaded("version.json") {
				if _timeout -- <= 0 {
					trace_color("Custom Options update check failed: no response within two minutes", c_red);
					exit;
				}
				
				wait 1;
			}
			
			if file_exists("version.json") {
				var _contents = string_load("version.json");
				
				if _contents != null {
					var _json = json_decode(_contents);
					
					if _json == json_error {
						trace_color(json_error_text, c_orange);
						trace_color("Custom Options update check failed: invalid JSON", c_red);
					} else if lq_exists(_json, "errors") {
						var _errorCount = array_length(_json.errors);
						var i = -1;
						
						if _errorCount > 0 {
							repeat _errorCount {
								i += 1;
								trace_color(_json.errors[i], c_orange);
							}
						}
						
						trace_color("Custom Options update check failed: see above for errors", c_red);
					} else if lq_defget(_json, "latest", VERSION) != VERSION {
						trace_color(`Custom Options update available!  (version "${VERSION}" -> version "${lq_defget(_json, "latest", VERSION)}")`, c_lime);
					} else {
						trace_color("Custom Options is up to date!", c_lime);
					}
				} else {
					trace_color("Custom Options update check failed: couldn't check version", c_red);
				}
			} else {
				trace_color("Custom Options update check failed: no online version available", c_red);
			}
			
			file_unload("version.json");
			
			exit;
		}
		
		return true;
	}
}

#define option_set(_modType, _modName, _pageName, _optionName, _value)
var _modIndex = mod_get_index(_modType, _modName);

if _modIndex < 0 {
	return null;
}

var _pageIndex = mod_page_get_index(_modIndex, _pageName);

if _pageIndex < 0 {
	return null;
}

var _optionIndex = mod_page_option_get_index(_modIndex, _pageIndex, _optionName);

if _optionIndex < 0 {
	return null;
}

var _mod = MENU.mods[_modIndex];
var _page = _mod.pages[_pageIndex];

if _page.page_data.kind != "options" {
	return null;
}

var _option = _page.options[_optionIndex];

if is_object(_option) {
	var _point = lq_defget(_option, "point", null);
	var _pointInOption = true;
	
	if _point == null {
		_point = lq_defget(_page, "point", null);
		_pointInOption = false;
		
		if _point == null {
			_point = lq_defget(_mod, "point", null);
		}
	}
	
	var _modOptions = mod_variable_get(_point[0], _point[1], _point[2]);
	
	if !_pointInOption || is_object(_modOptions) {
		if _modOptions == null {
			_modOptions = {};
			mod_variable_set(_point[0], _point[1], _point[2], _modOptions);
		}
		
		if is_object(_modOptions) {
			lq_set(_modOptions, _optionName, _value);
			return _value;
		}
	} else {
		mod_variable_set(_point[0], _point[1], _point[2], _value);
		return _value;
	}
}

return null;

#define option_get(_modType, _modName, _pageName, _optionName)
var _modIndex = mod_get_index(_modType, _modName);

if _modIndex < 0 {
	return null;
}

var _pageIndex = mod_page_get_index(_modIndex, _pageName);

if _pageIndex < 0 {
	return null;
}

var _optionIndex = mod_page_option_get_index(_modIndex, _pageIndex, _optionName);

if _optionIndex < 0 {
	return null;
}

var _mod = MENU.mods[_modIndex];
var _page = _mod.pages[_pageIndex];

if _page.page_data.kind != "options" {
	return null;
}

var _option = _page.options[_optionIndex];

if is_object(_option) {
	var _point = lq_defget(_option, "point", null);
	var _pointInOption = true;
	
	if _point == null {
		_point = lq_defget(_page, "point", null);
		_pointInOption = false;
		
		if _point == null {
			_point = lq_defget(_mod, "point", null);
		}
	}
	
	var _modOptions = mod_variable_get(_point[0], _point[1], _point[2]);
	
	if !_pointInOption || is_object(_modOptions) {
		return lq_defget(_modOptions, _optionName, null);
	} else {
		return _modOptions;
	}
}

return null;

#define option_defget(_modType, _modName, _pageName, _optionName, _defValue)
var _value = option_get(_modType, _modName, _pageName, _optionName);
return _value == null ? _defValue : _value;

#define option_set_fake_nonsync(_modType, _modName, _pageName, _optionName, _player, _value)
var _fakeNonsync = option_get(_modType, _modName, _pageName, _optionName);

if !is_array(_fakeNonsync) || array_length(_fakeNonsync) <= _player {
	option_set(_modType, _modName, _pageName, _optionName, array_create(maxp, _value));
} else {
	_fakeNonsync[_player] = _value;
}

return _value;

#define option_get_fake_nonsync(_modType, _modName, _pageName, _optionName, _player)
var _fakeNonsync = option_get(_modType, _modName, _pageName, _optionName);

if !is_array(_fakeNonsync) || array_length(_fakeNonsync) <= _player {
	return null;
}

return _fakeNonsync[_player];

#define option_defget_fake_nonsync(_modType, _modName, _pageName, _optionName, _player, _defValue)
var _fakeNonsync = option_get_fake_nonsync(_modType, _modName, _pageName, _player, _optionName);
return _fakeNonsync == null ? _defValue : _fakeNonsync;

#define option_set_field(_modType, _modName, _pageName, _optionName, _field, _value)
if _field == "option_data" {
	return null;
}

var _modIndex = mod_get_index(_modType, _modName);

if _modIndex < 0 {
	return null;
}

var _pageIndex = mod_page_get_index(_modIndex, _pageName);

if _pageIndex < 0 {
	return null;
}

var _optionIndex = mod_page_option_get_index(_modIndex, _pageIndex, _optionName);

if _optionIndex < 0 {
	return null;
}

lq_set(MENU.mods[_modIndex].pages[_pageIndex].options[_optionIndex], _field, _value);
return _value;

#define option_get_field(_modType, _modName, _pageName, _optionName, _field)
if _field == "option_data" {
	return null;
}

var _modIndex = mod_get_index(_modType, _modName);

if _modIndex < 0 {
	return null;
}

var _pageIndex = mod_page_get_index(_modIndex, _pageName);

if _pageIndex < 0 {
	return null;
}

var _optionIndex = mod_page_option_get_index(_modIndex, _pageIndex, _optionName);

if _optionIndex < 0 {
	return null;
}

return lq_get(MENU.mods[_modIndex].pages[_pageIndex].options[_optionIndex], _field);

#define option_defget_field(_modType, _modName, _pageName, _optionName, _field, _defValue)
if _field == "option_data" {
	return null;
}

var _value = option_get_field(_modType, _modName, _pageName, _optionName, _field);

if _value != null {
	return _value;
}

return _defValue;

#define option_add(_modType, _modName, _modVariable, _pageName, _optionName, _option)
if is_string(_option) {
	_option = json_decode(_option);
	
	if _option == json_error {
		trace_color(`Failed to add option "${_optionName}" to ${_modName}.${_modType}'s page "${_pageName}":`, c_red);
		trace_color(json_error_text, c_red);
		
		exit;
	}
} else if !is_object(_option) {
	trace_color(`Failed to add option "${_optionName}" to ${_modName}.${_modType}'s page "${_pageName}":`, c_red);
	trace_color(`"${_option}" must be a lightweight object or JSON string`, c_red);
	
	exit;
}

var _modIndex = mod_get_index(_modType, _modName);

if _modIndex < 0 {
	array_push(MENU.mods, {
		"mod_data": {
			"name": _modName,
			"kind": _modType
		},
		"name": _modName,
		"point": [_modType, _modName, _modVariable],
		"pages": [],
		"page_index": array_create(maxp, 0)
	});
	
	_modIndex = MENU.mod_count ++;
}

var _modLq = MENU.mods[_modIndex];

var _pageIndex = mod_page_get_index(_modIndex, _pageName);

if _pageIndex < 0 {
	array_push(_modLq.pages, {
		"page_data": {
			"name": _pageName,
			"kind": "options"
		},
		"options": []
	});
	
	_pageIndex = array_length(_modLq.pages) - 1;
}

return option_add_direct(_modLq.pages[_pageIndex], _option);

#define option_add_direct(_pageLq, _option)
var _realOption = {
	"option_data": {
		"name": lq_get(_option, "option"),
		"kind": lq_defget(_option, "kind", lq_get(_option, "type"))
	}
};

var _optionSize = lq_size(_option);
var i = -1;

if _optionSize > 0 {
	repeat _optionSize {
		i += 1;
		
		var _optionKey = lq_get_key(_option, i);
		
		if _optionKey != "option_data" && _optionKey != "option" && _optionKey != "kind" {
			lq_set(_realOption, _optionKey, lq_get_value(_option, i));
		}
	}
}

array_push(_pageLq.options, _realOption);
return _realOption;

#define option_add_page(_modType, _modName, _modVariable, _pageName, _page)
if is_string(_page) {
	_page = json_decode(_page);
	
	if _page == json_error {
		trace_color(`Failed to add page "${_pageName}" to ${_modName}.${_modType}:`, c_red);
		trace_color(json_error_text, c_red);
		
		exit;
	}
} else if (!is_object(_page) || lq_size(_page) <= 0) && (!is_array(_page) || array_length(_page) <= 2) {
	trace_color(`Failed to add page "${_pageName}" to ${_modName}.${_modType}:`, c_red);
	trace_color(`"${_page}" must be a lightweight object, a JSON string, or a script reference`, c_red);
	
	exit;
}

var _modIndex = mod_get_index(_modType, _modName);

if _modIndex < 0 {
	array_push(MENU.mods, {
		"mod_data": {
			"name": _modName,
			"kind": _modType
		},
		"name": _modName,
		"point": [_modType, _modName, _modVariable],
		"pages": [],
		"page_index": array_create(maxp, 0)
	});
	
	_modIndex = MENU.mod_count ++;
}

return option_add_page_direct(MENU.mods[_modIndex], _pageName, _page);

#define option_add_page_direct(_modLq, _pageName, _page)
if lq_exists(_page, "options") {
	var _realPage = {
		"page_data": {
			"name": _pageName,
			"kind": "options"
		},
		"options": []
	};
	
	var _optionCount = array_length(_page.options);
	var i = -1;
	
	if _optionCount > 0 {
		repeat _optionCount {
			i += 1;
			
			option_add_direct(_realPage, _page.options[i]);
		}
	}
	
	_page = _realPage;
} else if lq_exists(_page, "reference") {
	_page = {
		"page_data": {
			"name": _pageName,
			"kind": "script"
		},
		"reference": _page.reference
	};
}

array_push(_modLq.pages, _page);
return _page;

#define mod_page_option_get_index(_modIndex, _pageIndex, _optionName)
if _modIndex < 0 || _pageIndex < 0 {
	return -1;
}

var _mod = MENU.mods[_modIndex];
var _page = _mod.pages[_pageIndex];

if _page.page_data.kind != "options" {
	return -1;
}

var _optionCount = array_length(_page.options);
var i = -1;

if _optionCount > 0 {
	repeat _optionCount {
		i += 1;
		
		var _option = _page.options[i];
		
		if _option.option_data.name == _optionName {
			return i;
		}
	}
}

return -1;

#define mod_page_get_index(_modIndex, _pageName)
if _modIndex < 0 {
	return -1;
}

var _mod = MENU.mods[_modIndex];

var _pageCount = array_length(_mod.pages);
var i = -1;

if _pageCount > 0 {
	repeat _pageCount {
		i += 1;
		
		var _page = _mod.pages[i];
		
		if _page.page_data.name == _pageName {
			return i;
		}
	}
}

return -1;

#define mod_get_index(_modType, _modName)
var _modCount = MENU.mod_count;
var i = -1;

if _modCount > 0 {
	repeat _modCount {
		i += 1;
		
		var _mod = MENU.mods[i];
		
		if _mod.mod_data.name == _modName && _mod.mod_data.kind == _modType {
			return i;
		}
	}
}

return -1;

#define option_remove(_modType, _modName, _pageName, _optionName)
var _modIndex = mod_get_index(_modType, _modName);
var _pageIndex = mod_page_get_index(_modIndex, _pageName);
var _optionIndex = mod_page_option_get_index(_modIndex, _pageIndex, _optionName);

while _modIndex >= 0 && _pageIndex >= 0 && _optionIndex >= 0 {
	remove_mod_page_option_by_index(_modIndex, _pageIndex, _optionIndex);
	
	_modIndex = mod_get_index(_modType, _modName);
	_pageIndex = mod_page_get_index(_modIndex, _pageName);
	_optionIndex = mod_page_option_get_index(_modIndex, _pageIndex, _optionName);
}

#define remove_mod_page_option_by_index(_modIndex, _pageIndex, _optionIndex)
var _mod = MENU.mods[_modIndex];
var _page = _mod.pages[_pageIndex];

var _newOptions = array_slice(_page.options, 0, _optionIndex);
array_copy(_newOptions, _optionIndex, _page.options, _optionIndex + 1, array_length(_page.options) - (_optionIndex + 1));
_page.options = _newOptions;

if array_length(_page.options) <= 0 {
	remove_mod_page_by_index(_mod, _pageIndex);
}

#define option_remove_page(_modType, _modName, _pageName)
var _modIndex = mod_get_index(_modType, _modName);
var _pageIndex = mod_page_get_index(_modIndex, _pageName);

while _modIndex >= 0 && _pageIndex >= 0 {
	remove_mod_page_by_index(_modIndex, _pageName);
	
	_modIndex = mod_get_index(_modType, _modName);
	_pageIndex = mod_page_get_index(_modIndex, _pageName);
}

#define remove_mod_page_by_index(_modIndex, _pageIndex)
var _mod = MENU.mods[_modIndex];

var _newPages = array_slice(_mod.pages, 0, _pageIndex);
array_copy(_newPages, _pageIndex, _mod.pages, _pageIndex + 1, array_length(_mod.pages) - (_pageIndex + 1));
_mod.pages = _newPages;

if array_length(_mod.pages) <= 0 {
	remove_mod_by_index(_modIndex);
}

#define option_remove_mod(_modType, _modName)
var _modIndex = mod_get_index(_modType, _modName);

while _modIndex >= 0 {
	remove_mod_by_index(_modIndex);
	
	_modIndex = mod_get_index(_modType, _modName);
}

#define remove_mod_by_index(_modIndex)
var _newMods = array_slice(MENU.mods, 0, _modIndex);
array_copy(_newMods, _modIndex, MENU.mods, _modIndex + 1, (MENU.mod_count --) - (_modIndex + 1));
MENU.mods = _newMods;

#define option_set_mod_display_name(_modType, _modName, _modDisplayName)
var _modIndex = mod_get_index(_modType, _modName);

if _modIndex >= 0 {
	lq_set(MENU.mods[_modIndex], "name", _modDisplayName);
}

#define option_set_page_display_name(_modType, _modName, _pageName, _pageDisplayName)
var _modIndex = mod_get_index(_modType, _modName);
var _pageIndex = mod_page_get_index(_modIndex, _pageName);

if _modIndex >= 0 && _pageIndex >= 0 {
	lq_set(MENU.mods[_modIndex].pages[_pageIndex], "name", _pageDisplayName);
}

#define option_set_display_name(_modType, _modName, _pageName, _optionName, _optionDisplayName)
var _modIndex = mod_get_index(_modType, _modName);
var _pageIndex = mod_page_get_index(_modIndex, _pageName);
var _optionIndex = mod_page_option_get_index(_modIndex, _pageIndex, _optionName);

if _modIndex >= 0 && _pageIndex >= 0 && _optionIndex >= 0 {
	lq_set(
		MENU.mods[_modIndex].pages[_pageIndex].options[_optionIndex],
		"name",
		is_string(_optionDisplayName) ? {"text": _optionDisplayName} : _optionDisplayName
	);
}

#define options_refresh()
var _uids = [];

var p = -1;

repeat maxp {
	p += 1;
	
	if player_is_active(p) {
		var _uid = player_get_uid(p);
		
		if array_find_index(_uids, _uid) < 0 {
			array_push(_uids, _uid);
			
			if MENU.region[p] != null && MENU.region[p].open {
				var _selectedIndex = array_find_index(MENU.region[p].children[MENU.region[p].child_count - 1].children, MENU.selected[p]);
				
				region_destroy(MENU.region[p].children[MENU.region[p].child_count - 1]);
				
				region_add_child(MENU.region[p], Page_create(p, false));
				
				with MENU.region[p].children[MENU.region[p].child_count - 1] {
					option_set_selected(_selectedIndex, true);
				}
			}	
		}
	}
}

#define step
if !instance_exists(global.drawing_controller) {
	with script_bind_draw(draw_regions, -10000) {
		variable_instance_set(id, CONTROLLER, true);
		persistent = true;
		name = "RegionDraw";
		global.drawing_controller = id;
	}
}

var _uids = [];

var p = -1;

repeat maxp {
	p += 1;
	
	if player_is_active(p) {
		var _uid = player_get_uid(p);
		
		if array_find_index(_uids, _uid) < 0 {
			array_push(_uids, _uid);
			
			if MENU.region[p] == null && instance_exists(Menu) {
				if MENU.opener[p] == null {
					MENU.opener[p] = Opener_create(p);
				}
			} else if MENU.opener[p] != null {
				region_destroy(MENU.opener[p]);
				MENU.opener[p] = null;
			}
		}
	}
}

populate_page();
step_regions();

#define option_opener_relocate(_x, _y)
if is_real(_x) && is_real(_y) {
	MENU.opener_pos.x = _x;
	MENU.opener_pos.y = _y;
	
	var _uids = [];
	
	var p = -1;
	
	repeat maxp {
		p += 1;
		
		if player_is_active(p) {
			var _uid = player_get_uid(p);
			
			if array_find_index(_uids, _uid) < 0 {
				array_push(_uids, _uid);
				
				if MENU.opener[p] != null && instance_exists(MENU.opener[p]) {
					region_relocate(
						MENU.opener[p],
						(MENU.opener_pos.x % game_width + game_width) % game_width,
						(MENU.opener_pos.y % game_height + game_height) % game_height
					);
				}
			}
		}
	}
}

#define Opener_create(_p)
with region_create(
	_p,
	(MENU.opener_pos.x % game_width + game_width) % game_width,
	(MENU.opener_pos.y % game_height + game_height) % game_height,
	16,
	16,
	c_black,
	0,
	true
) {
	region_register(self);
	
	on_input = input_event_create(p, "fire", "pressed", script_ref_create(Opener_open));
	
	on_draw = script_ref_create(Opener_draw);
	
	return self;
}

#define Opener_open
if point_in_region(mouse_x[p], mouse_y[p], self) {
	if player_find_local_nonsync() == p {
		sound_play(sndClick);
	}
	
	var _uids = [];
	
	var _p = -1;
	
	repeat maxp {
		_p += 1;
		
		if player_is_active(_p) {
			var _uid = player_get_uid(_p);
			
			if array_find_index(_uids, _uid) < 0 {
				array_push(_uids, _uid);
				
				var _region = MENU.opener[_p];
				
				MENU.opener[_p] = null;
				OptionsMenu_create(_p, false);
				
				region_destroy(_region);
			}
		}
	}
}

#define Opener_draw
draw_sprite_ext(
	global.options_icon,
	0,
	8,
	8,
	1,
	1,
	0,
	point_in_region(mouse_x[p], mouse_y[p], self) ? c_white : c_silver,
	1
);

#define populate_page()
var _uids = [];

var p = -1;

repeat maxp {
	p += 1;
	
	if player_is_active(p) {
		var _uid = player_get_uid(p);
		
		if array_find_index(_uids, _uid) < 0 {
			array_push(_uids, _uid);
			
			if MENU.region[p] == null || array_length(MENU.page_population[p]) <= 0 {
				continue;
			}
			
			var _optionCount = min(
				floor(MENU.page_anim[p]),
				array_length(MENU.page_population[p])
			);
			
			var i = -1;
			
			if _optionCount > 0 {
				repeat _optionCount {
					i += 1;
					
					var _option = MENU.page_population[p][@ i];
					
					if _option == null {
						MENU.page_population[p] = [];
						MENU.page_unpositioned[p] = [];
						MENU.page_anim[p] = 0;
						
						break;
					} else {
						if !instance_exists(_option.region) {
							var _new = array_slice(MENU.page_population[p], 0, i);
							array_copy(_new, i, MENU.page_population[p], i + 1, _optionCount - (i + 1));
							MENU.page_population[p] = _new;
							
							var _unpositionedIndex = array_find_index(MENU.page_unpositioned[p], _option.region);
							_new = array_slice(MENU.page_unpositioned[p], 0, _unpositionedIndex);
							
							array_copy(
								_new,
								_unpositionedIndex,
								MENU.page_unpositioned[p],
								_unpositionedIndex + 1,
								array_length(MENU.page_unpositioned[p]) - (_unpositionedIndex + 1)
							);
							
							MENU.page_unpositioned[p] = _new;
							
							MENU.page_anim[p] = 0;
							
							break;
						}
						
						with _option.region.parent {
							option_set_selected(child_count - 1, true);
						}
						
						if i >= MENU.page_anim[p] {
							_option.region.name_alpha = 0;
							_option.region.alpha = 0;
							_option.region.bg_alpha = 0;	
						} else {
							_option.region.name_alpha = _option.name_alpha;
							_option.region.alpha = _option.alpha;
							_option.region.bg_alpha = _option.bg_alpha;
							
							if player_find_local_nonsync() == p {
								sound_play(sndAppear);
							}
						}
					}
				}
			}
			
			position_unpositioned_options(p);
			MENU.page_anim[p] += 30 / room_speed;
		}
	}
}

#define position_unpositioned_options(_p)
var _lineHeight = string_height_fixed("A");

var _optionYOffset = 0;

var _unpositionedCount = min(
	floor(MENU.page_anim[_p]),
	array_length(MENU.page_unpositioned[_p])
);

var i = -1;

if _unpositionedCount > 0 {
	repeat _unpositionedCount {
		i += 1;
		
		with MENU.page_unpositioned[_p][@ i] {
			var _corners = region_corners_rotated(self);
			
			if option_kind == "title" || option_kind == "button" {
				anchored_x = round(game_width / 2);
			} else {
				anchored_x = round(game_width * 0.8);
			}
			
			anchored_y = _optionYOffset;
			
			draw_set_font(name_font);
			
			_optionYOffset += max(string_height_fixed(name), /* abs(
				max(_corners.y1, _corners.y2, _corners.y3, _corners.y4)
				- min(_corners.y1, _corners.y2, _corners.y3, _corners.y4)
			) */);
			
			_optionYOffset += pixels + lines * string_height_fixed("A") - string_height_fixed(name) / 2 + 10;
		}
	}
}

_unpositionedCount = array_length(MENU.page_unpositioned[_p]);

i = -1;

if _unpositionedCount > 0 {
	repeat _unpositionedCount {
		i += 1;
		
		with MENU.page_unpositioned[_p][@ i] {
			draw_set_font(name_font);
			
			anchored_y = round(anchored_y - _optionYOffset / 2 + game_height / 2);
			
			name_y = anchored_y;
			
			name_x = option_kind == "title" || option_kind == "button"
				? anchored_x - string_width_fixed(name) / 2
				: round(anchored_x - game_width * 0.7);
			
			name_x += string_width_fixed(name) / 2;
			
			desc_x = game_width / 2;
			desc_y = name_y - string_height_fixed(name);
		}
	}
}

draw_set_font(fntM);

#define step_regions
var i = -1;

repeat ds_list_size(global.regions) {
	i += 1;
	
	if i >= ds_list_size(global.regions) {
		break;
	}
	
	var _region = global.regions[| i];
	
	script_ref_call_wc(_region.on_input_internal, _region, _region);
	
	if !instance_exists(_region) {
		i -= 1;
		continue;
	}
	
	script_ref_call_wc(_region.on_step_internal, _region, _region);
}

#define draw_regions
var p = player_find_local_nonsync();

if player_is_active(p) {
	if MENU.selected[p] != null {
		with MENU.selected[p] {
			if "name_x" not in self {
				continue;
			}
			
			draw_sprite_ext(
				sprMainMenuSplat,
				name_splat_anim,
				view_xview_nonsync + name_x,
				view_yview_nonsync + name_y,
				name_xscale,
				name_yscale,
				name_angle,
				name_blend,
				name_alpha
			);
			
			name_splat_anim += 30 / room_speed;
			name_splat_anim = clamp(name_splat_anim, 0, sprite_get_number(sprMainMenuSplat) - 1);
		}
	}
	
	var _optionsMenu = MENU.region[p];
	
	if _optionsMenu != null && _optionsMenu.open {
		var _pageCount = _optionsMenu.child_count;
		var i = -1;
		
		if _pageCount > 0 {
			repeat _pageCount {
				i += 1;
				
				var _page = _optionsMenu.children[i];
				
				var _optionCount = _page.child_count;
				var j = -1;
				
				if _optionCount > 0 {
					repeat _optionCount {
						j += 1;
						
						with _page.children[j] {
							if "splat_spr" not in self {
								continue;
							}
							
							draw_sprite_part_centered_ext(
								splat_spr,
								splat_img,
								0,
								0,
								sprite_get_width(splat_spr),
								sprite_get_height(splat_spr),
								view_xview_nonsync + anchored_x,
								view_yview_nonsync + anchored_y,
								xscale,
								yscale,
								angle,
								c_black,
								alpha
							);
						}
					}
				}
			}
		}
	}
}

var i = -1;

repeat ds_list_size(global.regions) {
	i += 1;
	
	if i >= ds_list_size(global.regions) {
		break;
	}
	
	var _region = global.regions[| i];
	
	script_ref_call_wc(_region.on_draw_internal, _region, _region);
	
	if !instance_exists(_region) {
		i -= 1;
		continue;
	}
}

if player_is_active(p) && MENU.selected[p] != null && "desc" in MENU.selected[p] {
	with MENU.selected[p] {
		if desc != null {
			draw_tooltip(
				view_xview_nonsync + desc_x,
				view_yview_nonsync + desc_y,
				desc
			);
		}
	}
}

#define draw_pause
if game_version != 0 || instance_exists(OptionMenuButton) {
	var _uids = [];
	
	var p = -1;
	
	repeat maxp {
		p += 1;
		
		if player_is_active(p) {
			var _uid = player_get_uid(p);
			
			if array_find_index(_uids, _uid) < 0 {
				array_push(_uids, _uid);
				
				if MENU.region[p] == null || !instance_exists(MENU.region[p]) {
					OptionsMenu_create(p, true);
				}
			}
		}
	}
}

step_regions();
populate_page();
draw_regions();

#define OptionsMenu_create(_p, _paused)
with region_create(_p, game_width / 2, game_height / 2, game_width, game_height, c_black, _paused ? 0 : 0.75, true) {
	with ModSelector_create(_p, _paused) {
		region_add_child(other, self);
	}
	
	open = false;
	
	paused = _paused;
	
	MENU.region[_p] = self;
	region_register(self);
	
	if MENU.opener[_p] != null {
		region_destroy(MENU.opener[_p]);
		MENU.opener[_p] = null;
	}
	
	on_step = script_ref_create(OptionsMenu_step);
	
	on_destroy = script_ref_create(OptionsMenu_destroy);
	
	return self;
}

#define OptionsMenu_step
if instance_exists(Menu) && instance_exists(Loadout) {
	with Menu {
		mode = 0;
		charsplat = 1;
		
		var _charxCount = array_length(charx);
		var i = -1;
		
		if _charxCount > 0 {
			repeat _charxCount {
				i += 1;
				charx[i] = 0;
			}
		}
		
		sound_volume(sndMenuCharSelect, 0);
	}
	
	with Loadout {
		instance_destroy();
	}
	
	with loadbutton {
		instance_destroy();
	}
	
	with menubutton {
		instance_destroy();
	}
	
	with BackFromCharSelect {
		noinput = 10;
	}
}

var _mousePos = world_to_region(mouse_x[p], mouse_y[p], self);

if button_pressed(p, "spec")
|| (button_pressed(p, "fire") && _mousePos.x <= 28 && _mousePos.y <= 28)
|| (!paused && !instance_exists(Menu))
|| (paused && instance_exists(PauseButton))
|| (paused && !open && !instance_exists(OptionMenuButton)) {
	if instance_exists(Menu) {
		with Menu {
			mode = 0;
			event_perform(ev_step, ev_step_end);
			sound_volume(sndMenuCharSelect, 1);
			sound_stop(sndMenuCharSelect);
		}
		
		with CharSelect {
			alarm_set(0, 2);
		}
		
		with Loadout {
			selected = 0;
		}
	}
	
	region_destroy(self);
}

#define OptionsMenu_destroy
if open {
	save_options();
}

MENU.region[p] = null;
MENU.opener[p] = null;

MENU.selected[p] = null;
MENU.text_region[p] = noone;
MENU.keys_region[p] = noone;

var _uids = [];

var _p = -1;

repeat maxp {
	_p += 1;
	
	if player_is_active(_p) {
		var _uid = player_get_uid(_p);
		
		if array_find_index(_uids, _uid) < 0 {
			array_push(_uids, _uid);
			
			if MENU.region[_p] != null {
				MENU.region[_p].open = false;
				region_destroy(MENU.region[_p]);
			}	
		}
	}
}

#define save_options()
if mod_script_exists(MENU.mods[MENU.mod_index].mod_data.kind, MENU.mods[MENU.mod_index].mod_data.name, "CustomOptions_save") {
	mod_script_call_nc(MENU.mods[MENU.mod_index].mod_data.kind, MENU.mods[MENU.mod_index].mod_data.name, "CustomOptions_save");
} else if mod_script_exists(MENU.mods[MENU.mod_index].mod_data.kind, MENU.mods[MENU.mod_index].mod_data.name, "save_options") {
	mod_script_call_nc(MENU.mods[MENU.mod_index].mod_data.kind, MENU.mods[MENU.mod_index].mod_data.name, "save_options");
}

#define ModSelector_create(_p, _paused)
draw_set_font(fntBigName);

with region_create(
	_p,
	game_width / 2,
	game_height / 2 - (_paused ? 44 + (string_height_fixed(MENU.mods[MENU.mod_index].name) * 0.65) / 2 : 0),
	string_width_fixed(MENU.mods[MENU.mod_index].name) + 80,
	string_height_fixed(MENU.mods[MENU.mod_index].name),
	c_black,
	0,
	true
) {
	xscale = 0.65;
	yscale = 0.65;
	angle = 0;
	side = fa_center;
	
	selected = false;
	
	on_step = script_ref_create(ModSelector_step);
	on_draw = script_ref_create(ModSelector_draw);
	
	on_input = script_ref_wrap(
		input_event_create(_p, "pick", "pressed", script_ref_create(select_mod)),
		input_event_create(_p, "fire", "pressed", script_ref_create(select_mod_from_click))
	);
	
	on_input = script_ref_wrap(
		on_input,
		script_ref_wrap(
			input_event_create(_p, "east", "pressed", script_ref_create(change_mod, 1)),
			input_event_create(_p, "west", "pressed", script_ref_create(change_mod, -1))
		)
	);
	
	on_input = script_ref_wrap(
		input_event_create(_p, "swap", "pressed", script_ref_create(ModSelector_select)),
		on_input
	);
	
	draw_set_font(fntM);
	
	return self;
}

#define ModSelector_step
if point_in_region(mouse_x[p], mouse_y[p], self) {
	selected = true;
} else if mouse_delta_x[p] != 0 || mouse_delta_y[p] != 0 {
	selected = false;
}

#define ModSelector_select
selected = !selected;

#define ModSelector_draw
var _halign = draw_get_halign();
var _valign = draw_get_valign();

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_font(fntBigName);

if MENU.mod_index > 0 {
	draw_sprite_ext(
		sprDailyArrow,
		0,
		20,
		string_height_fixed(MENU.mods[MENU.mod_index].name) / 2,
		1,
		1,
		0,
		selected && side == fa_left ? c_white : c_silver,
		1
	);
}

if MENU.mod_index < MENU.mod_count - 1 {
	draw_sprite_ext(
		sprDailyArrow,
		1,
		60 + string_width_fixed(MENU.mods[MENU.mod_index].name),
		string_height_fixed(MENU.mods[MENU.mod_index].name) / 2,
		1,
		1,
		0,
		selected && side == fa_right ? c_white : c_silver,
		1
	);
}

draw_text_nt(
	string_width_fixed(MENU.mods[MENU.mod_index].name) / 2 + 40,
	0,
	`@(color:${selected && side == fa_center ? c_white : c_silver})${string_hash_to_newline(MENU.mods[MENU.mod_index].name)}`
);

draw_set_font(fntM);

draw_set_valign(_valign);
draw_set_halign(_halign);

#define select_mod
if !selected {
	exit;
}

if MENU.region[p].paused && game_version != 0 {
	trace_color("Due to limitations in v100, Custom Options cannot open during a run.", c_red);
	exit;
}

with OptionMenuButton {
	instance_destroy();
}

sound_play(sndMenuOptions);

var _uids = [];

var _p = -1;

repeat maxp {
	_p += 1;
	
	if player_is_active(_p) {
		var _uid = player_get_uid(_p);
		
		if array_find_index(_uids, _uid) < 0 {
			array_push(_uids, _uid);
			
			if MENU.region[_p] != null && !MENU.region[_p].open {
				region_add_child(MENU.region[_p], Page_create(_p));
				MENU.region[_p].open = true;
				region_destroy(MENU.region[_p].children[0]);
			}
		}
	}
}

if mod_script_exists(MENU.mods[MENU.mod_index].mod_data.kind, MENU.mods[MENU.mod_index].mod_data.name, "CustomOptions_open") {
	mod_script_call_nc(MENU.mods[MENU.mod_index].mod_data.kind, MENU.mods[MENU.mod_index].mod_data.name, "CustomOptions_open");
}

#define select_mod_from_click
if point_in_region(mouse_x[p], mouse_y[p], self) {
	var _inRegion = world_to_region(mouse_x[p], mouse_y[p], self);
	
	if _inRegion.x <= 40 {
		change_mod(-1);
	} else if _inRegion.x >= abs(x2 - x1) - 40 {
		change_mod(1);
	} else {
		select_mod();
	}
}

#define change_mod(_delta)
_delta = clamp(_delta, (MENU.mod_index > 0) * -1, (MENU.mod_index < array_length(MENU.mods) - 1));

if _delta != 0 && sign(side - 1) == sign(_delta) {
	MENU.mod_index = wrap_range(MENU.mod_index + _delta, 0, MENU.mod_count);
	
	sound_play_pitchvol(sndMenuLoadout, (MENU.mod_index + 1) / array_length(MENU.mods), 1);
	
	draw_set_font(fntBigName);
	
	region_resize(
		self,
		string_width_fixed(MENU.mods[MENU.mod_index].name) + 80,
		string_height_fixed(MENU.mods[MENU.mod_index].name)
	);
	
	draw_set_font(fntM);
}

side = clamp(side + _delta, 0, 2);

#define Page_create
var _p = argument[0];
var _animate = argument_count > 1 ? argument[1] : true;

var _mod = MENU.mods[MENU.mod_index];
var _page = _mod.pages[_mod.page_index[_p]];

with region_create(
	_p,
	game_width / 2,
	game_height / 2,
	game_width,
	game_height,
	c_black,
	0,
	true
) {
	selected_index = -1;
	
	on_step = script_ref_create(Page_step);
	
	on_input = script_ref_wrap(
		input_event_create(p, "nort", "pressed", script_ref_create(change_option, -1)),
		input_event_create(p, "sout", "pressed", script_ref_create(change_option, 1))
	);
	
	if _page.page_data.kind == "script" {
		with region_create(
			p,
			game_width / 2,
			game_height / 2,
			game_width,
			game_height,
			c_black,
			0,
			true
		) {
			region_add_child(other, self);
			
			draw_synced = true;
			
			on_draw = array_clone(_page.reference);
			array_push(on_draw, p);
		}
	} else if _page.page_data.kind == "options" {
		var _unpositionedOptions = [];
		
		var _optionCount = array_length(_page.options);
		var i = -1;
		
		if _optionCount > 0 {
			repeat _optionCount {
				i += 1;
				
				var _option = _page.options[i];
				var _optionKind = lq_defget(lq_defget(_option, "option_data", null), "kind", lq_get(_option, "type"));
				
				switch _optionKind {
					case "slider": {
						with Slider_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
							
							range = {
								"minimum": lq_defget(lq_defget(_option, "range", null), "minimum", 0),
								"maximum": lq_defget(lq_defget(_option, "range", null), "maximum", 1)
							};
							
							steps = lq_defget(_option, "steps", 0.001);
							button_steps = lq_defget(_option, "button_steps", 0.1);
							
							format = {
								"total": lq_defget(lq_defget(_option, "format", null), "total", 3),
								"dec": lq_defget(lq_defget(_option, "format", null), "dec", 1),
								"display_multiplier": lq_defget(lq_defget(_option, "format", null), "display_multiplier", 100)
							};
							
							color = {
								"minimum": lq_defget(lq_defget(_option, "color", null), "minimum", c_lime),
								"maximum": lq_defget(lq_defget(_option, "color", null), "maximum", c_lime)
							};
						}
						
						break;
					}
					
					case "choices":
					case "choice":
					case "cycle": {
						with Cycle_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
							
							values = lq_defget(_option, "values", ["this", "is", "a", "cycle"]);
							display = lq_defget(_option, "display", array_clone(values));
							
							index = max(0, array_find_index(values, value));
						}
						
						break;
					}
					
					case "bool": {
						with Bool_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
							
							index = max(0, array_find_index(values, value));
						}
						
						break;
					}
					
					case "int":
					case "float":
					case "number":
					case "range": {
						with Int_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
							
							steps = lq_defget(_option, "steps", 1);
							
							range = {
								"minimum": lq_defget(lq_defget(_option, "range", null), "minimum", -5),
								"maximum": lq_defget(lq_defget(_option, "range", null), "maximum", 5)
							};
							
							wrap = lq_defget(_option, "wrap", true);
						}
						
						break;
					}
					
					case "text": {
						with Text_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
						}
						
						break;
					}
					
					case "keys": {
						with Keys_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
							
							style = lq_defget(_option, "style", "text");
							
							if style != "text" && style != "buttons" {
								style = "text";
							}
							
							var _keys = string_split(value, "+");
							
							var _keyCount = array_length(_keys);
							
							if _keyCount > 0 {
								var k = -1;
								
								repeat _keyCount {
									k += 1;
									
									if _keys[k] != "" {
										ds_map_set(keys, _keys[k], true);
									}
								}
							}
						}
						
						break;
					}
					
					case "button":
					case "title": {
						with Title_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
						}
						
						break;
					}
					
					case "region": {
						with Custom_create(p) {
							region_add_child(other, self);
							
							page_add_option(_mod, _page, _option, _animate);
							
							if lq_exists(_option, "on_input") {
								var _field = lq_get(_option, "on_input");
								
								if is_array(_field) && array_length(_field) >= 3 && is_string(_field[0]) && is_string(_field[1]) && is_string(_field[2]) {
									on_input = _field;
								}
							}
							
							if lq_exists(_option, "on_step") {
								var _field = lq_get(_option, "on_step");
								
								if is_array(_field) && array_length(_field) >= 3 && is_string(_field[0]) && is_string(_field[1]) && is_string(_field[2]) {
									on_step = _field;
								}
							}
							
							if lq_exists(_option, "on_draw") {
								var _field = lq_get(_option, "on_draw");
								
								if is_array(_field) && array_length(_field) >= 3 && is_string(_field[0]) && is_string(_field[1]) && is_string(_field[2]) {
									on_draw = _field;
								}
							}
						}
						
						break;
					}
					
					default: trace_color(`Found unknown option kind "${_optionKind}" on ${_mod.mod_data.name}.${_mod.mod_data.kind}'s page "${_page.name}"`, c_orange); break;
				}
			}
		}
	}
	
	page_add_option(_mod, _page, null, _animate);
	
	return self;
}

#define page_add_option
var _mod = argument[0];
var _page = argument[1];
var _option = argument[2];
var _animate = argument_count > 3 ? argument[3] : true;

if _option == null {
	draw_set_font(fntBigName);
	
	with PageNavigator_create(
		p,
		round(game_width / 2),
		round(game_height - string_height_fixed(_page.name) / 2),
		_page.name,
		`Page ${MENU.mods[MENU.mod_index].page_index[p] + 1} of ${array_length(MENU.mods[MENU.mod_index].pages)}`
	) {
		region_add_child(other, self);
	}
	
	draw_set_font(fntM);
	
	array_push(MENU.page_population[p], null);
	MENU.page_anim[p] = _animate ? 0 : array_length(MENU.page_population[p]);
} else {
	option_set_shared(_mod, _page, _option, MENU.page_unpositioned[p], _animate);
	array_push(MENU.page_population[p], {"region": self, "name_alpha": name_alpha, "alpha": alpha, "bg_alpha": bg_alpha});
	name_alpha = 0;
	alpha = 0;
	bg_alpha = 0;
}

#define Page_step
if instance_exists(MENU.text_region[p]) || instance_exists(MENU.keys_region[p]) {
	exit;
}

var _vx = view_xview[p];
var _vy = view_yview[p];

var i = -1;

if child_count > 0 && (mouse_delta_x[p] != 0 || mouse_delta_y[p] != 0) {
	var _selectedIndex = selected_index;
	var _selected = false;
	
	repeat child_count {
		i += 1;
		
		if "on_select" not in children[i] {
			continue;
		}
		
		var _triangles = [];
		
		with children[i] {
			var _corners = region_corners_rotated(self);
			
			if point_in_rotated_rectangle_bbox(
				mouse_x[p], mouse_y[p],
				_corners.x1, _corners.y1,
				_corners.x2, _corners.y2,
				_corners.x3, _corners.y3,
				_corners.x4, _corners.y4
			) {
				_triangles = [
					{
						"x1": _corners.x1, "y1": _corners.y1,
						"x2": _corners.x2, "y2": _corners.y2,
						"x3": _corners.x3, "y3": _corners.y3
					},
					{
						"x1": _corners.x2, "y1": _corners.y2,
						"x2": _corners.x4, "y2": _corners.y4,
						"x3": _corners.x3, "y3": _corners.y3
					}
				];
			}
			
			if "option_positioned" in self {
				var _x1 = _vx + name_x - length_xx - length_yx;
				var _y1 = _vy + name_y - length_xy - length_yy;
				var _x2 = _vx + name_x + length_xx - length_yx;
				var _y2 = _vy + name_y + length_xy - length_yy;
				var _x3 = _vx + name_x - length_xx + length_yx;
				var _y3 = _vy + name_y - length_xy + length_yy;
				var _x4 = _vx + name_x + length_xx + length_yx;
				var _y4 = _vy + name_y + length_xy + length_yy;
				
				if point_in_rotated_rectangle_bbox(
					mouse_x[p], mouse_y[p],
					_x1, _y1,
					_x2, _y2,
					_x3, _y3,
					_x4, _y4
				) {
					array_push(_triangles, {
						"x1": _x1,
						"y1": _y1,
						
						"x2": _x2,
						"y2": _y2,
						
						"x3": _x3,
						"y3": _y3
					});
					
					array_push(_triangles, {
						"x1": _x2,
						"y1": _y2,
						
						"x2": _x4,
						"y2": _y4,
						
						"x3": _x3,
						"y3": _y3
					});
				}
			}
		}
		
		var _triangleCount = array_length(_triangles);
		
		if _triangleCount > 0 {
			var j = -1;
			
			repeat _triangleCount {
				j += 1;
				
				var _triangle = _triangles[j];
				
				if _triangle != null && point_in_triangle(
					mouse_x[p], mouse_y[p],
					_triangle.x1, _triangle.y1,
					_triangle.x2, _triangle.y2,
					_triangle.x3, _triangle.y3
				) {
					if selected_index != i {
						option_set_selected(i, true);
					}
					
					_selected = true;
					i = child_count;
					break;
				}
			}
		}
		
		if i >= child_count {
			break;
		}
	}
	
	if selected_index == _selectedIndex && !_selected {
		option_set_selected(-1, true);
	}
}

#define PageNavigator_create(_p, _x, _y, _pageDisplayName, _pageTip)
draw_set_font(fntBigName);

with region_create(
	_p,
	_x,
	_y,
	string_width_fixed(_pageDisplayName) + 80,
	string_height_fixed(_pageDisplayName),
	c_black,
	0,
	true
) {
	name = _pageDisplayName;
	desc = _pageTip;
	desc_x = game_width / 2;
	desc_y = game_height - 32;
	
	side = fa_center;
	selected = false;
	
	xscale = 0.65;
	yscale = 0.65;
	
	on_select = null;
	
	on_step = script_ref_create(PageNavigator_step);
	
	on_draw = script_ref_create(PageNavigator_draw);
	
	on_input = script_ref_wrap(
		input_event_create(p, "fire", "pressed", script_ref_create(select_page_from_click)),
		script_ref_wrap(
			input_event_create(p, "west", "pressed", script_ref_create(select_page, -1)),
			input_event_create(p, "east", "pressed", script_ref_create(select_page, 1))
		)
	);
	
	return self;
}

#define select_page(_delta)
if selected {
	var _lastSide = side;
	side = clamp(side + _delta, fa_left, fa_right);
	
	if _lastSide == side {
		change_page(_delta);
	}
	
	return true;
}

return false;

#define select_page_from_click
if selected {
	change_page(side == fa_center ? 0 : (side == fa_left ? -1 : (side == fa_right ? 1 : 0)));
	
	return true;
}

return false;

#define change_page(_delta)
if _delta == 0
|| (_delta < 0 && MENU.mods[MENU.mod_index].page_index[p] == 0)
|| (_delta > 0 && MENU.mods[MENU.mod_index].page_index[p] >= array_length(MENU.mods[MENU.mod_index].pages) - 1) {
	exit;
}

if player_find_local_nonsync() == p {
	sound_play_pitchvol(sndMenuLoadout, (MENU.mods[MENU.mod_index].page_index[p] + 1) / array_length(MENU.mods[MENU.mod_index].page_index[p]), 1);
}

MENU.mods[MENU.mod_index].page_index[p] = wrap_range(
	MENU.mods[MENU.mod_index].page_index[p] + _delta,
	0,
	array_length(MENU.mods[MENU.mod_index].pages)
);

MENU.page_population[p] = [];
MENU.page_unpositioned[p] = [];

region_add_child(parent.parent, Page_create(p));

with parent.parent.children[parent.parent.child_count - 1] {
	option_set_selected(child_count - 1, true);
}

region_destroy(parent);
exit;

#define PageNavigator_step
if point_in_region(mouse_x[p], mouse_y[p], self) {
	with parent {
		option_set_selected(child_count - 1, true);
	}
	
	var _inRegion = world_to_region(mouse_x[p], mouse_y[p], self);
	
	if _inRegion.x <= 40 {
		side = fa_left;
	} else if _inRegion.x >= abs(x2 - x1) - 40 {
		side = fa_right;
	} else {
		side = fa_center;
	}
}

side = clamp(
	side,
	MENU.mods[MENU.mod_index].page_index[p] <= 0,
	2 - (MENU.mods[MENU.mod_index].page_index[p] >= array_length(MENU.mods[MENU.mod_index].pages) - 1)
);

#define PageNavigator_draw
var _halign = draw_get_halign();
var _valign = draw_get_valign();

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_font(fntBigName);

var _mod = MENU.mods[MENU.mod_index];
var _pageIndex = _mod.page_index[p];

var _lastSurface = surface_target_pop();

if _pageIndex > 0 {
	draw_sprite_ext(
		sprDailyArrow,
		0,
		view_xview[p] + game_width / 2 - (((abs(x2 - x1) - 80) * xscale) / 2) - 20,
		view_yview[p] + game_height - 16,
		1,
		1,
		0,
		selected && side == fa_left ? c_white : c_silver,
		1
	);
}

if array_length(_mod.pages) - 1 > _pageIndex {
	draw_sprite_ext(
		sprDailyArrow,
		1,
		view_xview[p] + game_width / 2 + (((abs(x2 - x1) - 80) * xscale) / 2) + 20,
		view_yview[p] + game_height - 16,
		1,
		1,
		0,
		selected && side == fa_right ? c_white : c_silver,
		1
	);
}

surface_target_push(_lastSurface);

draw_text_nt(
	string_width_fixed(name) / 2 + 40,
	0,
	`@(color:${selected && side == fa_center ? c_white : c_silver})${string_hash_to_newline(name)}`
);

draw_set_font(fntM);

draw_set_valign(_valign);
draw_set_halign(_halign);

#define option_set_shared
var _mod = argument[0];
var _page = argument[1];
var _option = argument[2];
var _unpositionedOptions = argument_count > 3 ? argument[3] : [];
var _animate = argument_count > 4 ? argument[4] : true;

variable_instance_set(self, CONTROLLER, true);

mod_kind = _mod.mod_data.kind;
mod_name = _mod.mod_data.name;
page_name = _page.page_data.name;
option_kind = _option.option_data.kind;
option_name = _option.option_data.name;

selected = false;

angle = lq_defget(_option, "angle", 0);

xscale = lq_defget(lq_defget(_option, "scale", null), "x", 1);
yscale = lq_defget(lq_defget(_option, "scale", null), "y", 1);

pixels = lq_defget(_option, "pixels", 0);
lines = lq_defget(_option, "lines", 0);

if lq_defget(lq_defget(_option, "position", null), "x", null) == null
|| lq_defget(lq_defget(_option, "position", null), "y", null) == null {
	array_push(_unpositionedOptions, self);
	option_positioned = false;
} else {
	option_positioned = true;
}

anchored_x = lq_defget(lq_defget(_option, "position", null), "x", abs(parent.x2 - parent.x1) / 2);
anchored_y = lq_defget(lq_defget(_option, "position", null), "y", abs(parent.y2 - parent.y1) / 2);

prefix = lq_defget(_option, "prefix", "");
suffix = lq_defget(_option, "suffix", "");

display_override = lq_defget(_option, "display_override", null);

var _onChange = lq_defget(_option, "on_change", null);

if _onChange == null {
	_onChange = lq_defget(_option, "reference", null);
}

if is_array(_onChange) && array_length(_onChange) >= 3 && is_string(_onChange[0]) && is_string(_onChange[1]) && is_string(_onChange[2]) {
	on_change = _onChange;
} else {
	on_change = null;
}

var _onSelect = lq_defget(_option, "on_select", null);

if is_array(_onSelect) && array_length(_onSelect) >= 3 && is_string(_onSelect[0]) && is_string(_onSelect[1]) && is_string(_onSelect[2]) {
	on_select = _onSelect;
} else {
	on_select = null;
}

var _point = lq_defget(_option, "point", null);

if _point == null {
	_point = lq_defget(_page, "point", null);
	
	if _point == null {
		_point = lq_defget(_mod, "point", null);
	}
}

if is_array(_point) && array_length(_point) >= 3 && is_string(_point[0]) && is_string(_point[1]) && is_string(_point[2]) {
	point = _point;
} else {
	point = null;
}

fake_nonsync = lq_defget(_option, "fake_nonsync", false);

if !fake_nonsync {
	nonsync = lq_defget(_option, "nonsync", false);
	
	if !nonsync || player_find_local_nonsync() == p {
		var _value = option_get(mod_kind, mod_name, page_name, option_name);
		
		if _value != null {
			value = _value;
		}
	}
} else {
	var _value = option_get_fake_nonsync(mod_kind, mod_name, page_name, option_name, p);
	
	if _value != null {
		value = _value;
	}
}

var _nameData = lq_defget(_option, "name", null);

name = lq_defget(_nameData, "text", option_name);

name_x = lq_defget(lq_defget(_nameData, "position", null), "x", anchored_x - game_width * 0.25);

name_y = lq_defget(lq_defget(_nameData, "position", null), "y", anchored_y);

name_angle = lq_defget(_nameData, "angle", 0);

name_xscale = lq_defget(lq_defget(_nameData, "scale", null), "x", 1);
name_yscale = lq_defget(lq_defget(_nameData, "scale", null), "y", 1);

name_blend = lq_defget(_nameData, "blend", c_white);
name_alpha = lq_defget(_nameData, "alpha", 1);

name_font = lq_defget(_nameData, "font", fntM);

name_splat_anim = 0;

var _descData = lq_defget(_option, "desc", null);

desc = lq_defget(_descData, "text", null);
desc_x = lq_defget(lq_defget(_descData, "position", null), "x", name_x);
desc_y = lq_defget(lq_defget(_descData, "position", null), "y", name_y - string_height_fixed(name) / 2);

var _splatData = lq_defget(_option, "splat", null);

if is_object(_splatData) {
	if lq_exists(_splatData, "spr") {
		splat_spr = lq_get(_splatData, "spr");
	}
	
	if lq_exists(_splatData, "img") {
		splat_img = lq_get(_splatData, "img");
	}
}

draw_set_font(name_font);

length_xx = lengthdir_x((string_width_fixed(name) / 2) * name_xscale, name_angle);
length_yx = lengthdir_x((string_height_fixed(name) / 2) * name_yscale, name_angle - 90);
length_xy = lengthdir_y((string_width_fixed(name) / 2) * name_xscale, name_angle);
length_yy = lengthdir_y((string_height_fixed(name) / 2) * name_yscale, name_angle - 90);

draw_set_font(fntM);

#define option_set_selected(_index, _value)
if _value && selected_index != _index {
	option_set_selected(selected_index, false);
}

MENU.selected[p] = null;

if _index >= 0 && _index < child_count {
	var _child = children[_index];
	
	_child.name_splat_anim = 0;
	
	if _value && ("selected" not in _child || !_child.selected) {
		if player_find_local_nonsync() == p {
			sound_play(sndHover);
		}
		
		if "on_select" in _child && _child.on_select != null {
			var _clonedScriptReference = array_clone(_child.on_select);
			array_push(_clonedScriptReference, p);
			
			script_ref_call_wc(_clonedScriptReference, _child, _child);
		}
	}
	
	_child.selected = _value;
	
	MENU.selected[p] = _child;
	selected_index = _index;
} else {
	selected_index = -1;
}

#define change_option(_delta)
if instance_exists(MENU.text_region[p]) || instance_exists(MENU.keys_region[p]) {
	exit;
}

option_set_selected(wrap_range(selected_index + _delta, -1, child_count), true);

#define Name_draw
draw_set_font(variable_instance_get(self, "name_font", fntM));

if name != null && is_string(name) && string_width_fixed(name) > 0 && string_height_fixed(name) > 0 {
	var _halign = draw_get_halign();
	var _valign = draw_get_valign();
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	var _lastSurface = surface_target_pop();
	var _surface = surface_create(string_width_fixed(name), string_height_fixed(name));
	
	surface_target_push(_surface);
	
	draw_clear_alpha(c_black, 0);
	draw_text_nt(0, 0, `@(color:${selected ? c_white : c_silver})${string_hash_to_newline(name)}`);
	
	surface_target_pop();
	
	draw_surface_centered_ext(
		_surface,
		view_xview[p] + name_x + selected * 2,
		view_yview[p] + name_y - selected * 2,
		name_xscale,
		name_yscale,
		name_angle,
		name_blend,
		name_alpha
	);
	
	surface_destroy(_surface);
	
	surface_target_push(_lastSurface);
	
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	
	draw_set_font(fntM);
}

#define Custom_create(_p)
with region_create(
	_p,
	0,
	0,
	24,
	24,
	c_black,
	0,
	true
) {
	draw_synced = true;
	
	return self;
}

#define region_relocate(_region, _x, _y)
_region.anchored_x = _x;
_region.anchored_y = _y;

#define Title_create(_p)
with region_create(
	_p,
	0,
	0,
	1,
	1,
	c_black,
	0,
	true
) {
	name = "";
	
	on_step = script_ref_create(Title_step);
	
	on_draw = script_ref_create(Name_draw);
	
	on_input = script_ref_wrap(
		input_event_create(p, "okay", "pressed", script_ref_create(title_press)),
		input_event_create(p, "fire", "pressed", script_ref_create(title_mouse_press))
	);
	
	return self;
}

#define Title_step
if abs(x2 - x1) != string_width_fixed(name)
|| abs(y2 - y1) != string_height_fixed(name) {
	draw_set_font(fntM);
	
	region_resize(
		self,
		string_width_fixed(name),
		string_height_fixed(name)
	);
}

#define title_press
if selected {
	if on_change != null {
		if player_find_local_nonsync() == p {
			sound_play(sndClick);
		}
		
		script_ref_call(on_change, p, name);
	}
	
	return true;
}

return false;

#define title_mouse_press
if selected && point_in_region(mouse_x[p], mouse_y[p], self) {
	return title_press();
}

return false;

#define Cycle_create(_p)
with region_create(
	_p,
	0,
	0,
	sprite_get_bbox_right(sprScoreSplat) - sprite_get_bbox_left(sprScoreSplat) + 1,
	sprite_get_bbox_bottom(sprScoreSplat) - sprite_get_bbox_top(sprScoreSplat) + 1,
	c_black,
	0,
	true
) {
	splat_spr = sprScoreSplat;
	splat_img = sprite_get_number(sprScoreSplat) - 1;
	
	values = [
		"this",
		"is",
		"a",
		"cycle"
	];
	
	display = array_clone(values);
	
	index = 0;
	value = values[index];
	
	on_step = script_ref_create(Cycle_step);
	
	on_draw = script_ref_wrap(
		script_ref_create(Cycle_draw),
		script_ref_create(Name_draw)
	);
	
	on_input = script_ref_wrap(
		input_event_create(p, "west", "pressed", script_ref_create(cycle_adjust, -1)),
		input_event_create(p, "east", "pressed", script_ref_create(cycle_adjust, 1))
	);
	
	on_input = script_ref_wrap(
		input_event_create(p, "fire", "pressed", script_ref_create(cycle_mouse_adjust)),
		on_input
	);
	
	return self;
}

#define Cycle_step
index = array_find_index(values, value);

#define Cycle_draw
var _halign = draw_get_halign();
var _valign = draw_get_valign();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_nt(
	abs(x2 - x1) / 2,
	abs(y2 - y1) / 2 + 3,
	`@(color:${selected ? c_white : c_silver})${
		string_hash_to_newline(display_override != null ? display_override : prefix + string(display[index]) + suffix)
	}`
);

if selected {
	var _inRegion = world_to_region(mouse_x[p], mouse_y[p], self);
	
	if _inRegion.x <= abs(x2 - x1) && _inRegion.x >= abs(x2 - x1) / 2 {
		draw_set_font(fntChat);
		
		draw_text_nt(4, round(abs(y2 - y1) / 2) + 3, ">");
		
		draw_set_font(fntM);
	} else if _inRegion.x >= 0 && _inRegion.x < abs(x2 - x1) / 2 {
		draw_set_font(fntChat);
		
		draw_text_nt(4, round(abs(y2 - y1) / 2) + 3, "<");
		
		draw_set_font(fntM);
	}
}

draw_set_halign(_halign);
draw_set_valign(_valign);

#define cycle_adjust(_delta)
if selected {
	if player_find_local_nonsync() == p {
		sound_play(sndClick);
	}
	
	index = wrap_range(index + _delta, 0, array_length(values));
	value = values[index];
	
	option_change();
	
	return true;
}

return false;

#define cycle_mouse_adjust
if selected {
	var _inRegion = world_to_region(mouse_x[p], mouse_y[p], self);
	
	return cycle_adjust(
		(_inRegion.x >= 0 && _inRegion.x >= abs(x2 - x1) / 2)
		- (_inRegion.x <= x2 && _inRegion.x < abs(x2 - x1) / 2)
	);
}

return false;

#define Bool_create(_p)
with Cycle_create(_p) {
	display = [
		"OFF",
		"ON"
	];
	
	values = [
		false,
		true
	];
	
	index = 0;
	value = values[index];
	
	return self;
}

#define Int_create(_p)
with region_create(
	_p,
	0,
	0,
	sprite_get_bbox_right(sprScoreSplat) - sprite_get_bbox_left(sprScoreSplat) + 1,
	sprite_get_bbox_bottom(sprScoreSplat) - sprite_get_bbox_top(sprScoreSplat) + 1,
	c_black,
	0,
	true
) {
	splat_spr = sprScoreSplat;
	splat_img = sprite_get_number(sprScoreSplat) - 1;
	
	value = 0;
	
	range = {
		"minimum": -5,
		"maximum": 5
	};
	
	steps = 1;
	
	wrap = true;
	
	on_draw = script_ref_wrap(
		script_ref_create(Int_draw),
		script_ref_create(Name_draw)
	);
	
	on_input = script_ref_wrap(
		input_event_create(p, "west", "pressed", script_ref_create(int_adjust, -1)),
		input_event_create(p, "east", "pressed", script_ref_create(int_adjust, 1))
	);
	
	on_input = script_ref_wrap(
		input_event_create(p, "fire", "pressed", script_ref_create(int_mouse_adjust)),
		on_input
	);
	
	return self;
}

#define Int_draw
var _halign = draw_get_halign();
var _valign = draw_get_valign();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_nt(
	round(abs(x2 - x1) / 2),
	round(abs(y2 - y1) / 2) + 3,
	`@(color:${selected ? c_white : c_silver})${
		string_hash_to_newline(display_override != null ? display_override : prefix + string(value) + suffix)
	}`
);

if selected {
	var _inRegion = world_to_region(mouse_x[p], mouse_y[p], self);
	
	if _inRegion.x <= x2 && _inRegion.x >= abs(x2 - x1) / 2 {
		draw_set_font(fntChat);
		
		draw_text_nt(4, abs(y2 - y1) / 2 + 3, ">");
		
		draw_set_font(fntM);
	} else if _inRegion.x >= 0 && _inRegion.x < abs(x2 - x1) / 2 {
		draw_set_font(fntChat);
		
		draw_text_nt(4, abs(y2 - y1) / 2 + 3, "<");
		
		draw_set_font(fntM);
	}
}

draw_set_halign(_halign);
draw_set_valign(_valign);

#define int_adjust(_delta)
if selected {
	if player_find_local_nonsync() == p {
		sound_play(sndClick);
	}
	
	_delta *= steps;
	
	if range.minimum != null && range.maximum != null {
		value = wrap
		? wrap_range(value + _delta, range.minimum, range.maximum + 1)
		: clamp(value + _delta, range.minimum, range.maximum);
	} else if range.minimum != null && range.maximum == null {
		value = max(range.minimum, value + _delta);
	} else if range.minimum == null && range.maximum != null {
		value = min(range.maximum, value + _delta);
	}
	
	option_change();
	
	return true;
}

return false;

#define int_mouse_adjust
if selected {
	var _inRegion = world_to_region(mouse_x[p], mouse_y[p], self);
	
	return int_adjust(
		(_inRegion.x >= 0 && _inRegion.x >= abs(x2 - x1) / 2)
		- (_inRegion.x <= x2 && _inRegion.x < abs(x2 - x1) / 2)
	);
}

return false;

#define Text_create(_p)
with region_create(
	_p,
	0,
	0,
	sprite_get_bbox_right(sprOptionSlider) - sprite_get_bbox_left(sprOptionSlider) + 1,
	sprite_get_bbox_bottom(sprOptionSlider) - sprite_get_bbox_top(sprOptionSlider) + 1,
	c_black,
	0,
	true
) {
	splat_spr = sprOptionSlider;
	splat_img = 0;
	
	value = "";
	
	inputting = false;
	
	on_draw = script_ref_wrap(
		script_ref_create(Text_draw),
		script_ref_create(Name_draw)
	);
	
	on_input = script_ref_wrap(
		input_event_create(p, "okay", "pressed", script_ref_create(text_select)),
		input_event_create(p, "fire", "pressed", script_ref_create(text_select))
	);
	
	return self;
}

#define Text_draw
var _halign = draw_get_halign();
var _valign = draw_get_valign();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_font(fntChat);

draw_text_nt(
	4,
	round(abs(y2 - y1) / 2),
	`@(color:${selected ? c_white : c_silver})${
		inputting
		? (current_frame % 20 < 10 ? "|" : "")
		: string_hash_to_newline(display_override != null ? display_override : prefix + string(value) + suffix)
	}`
);

draw_set_halign(_halign);
draw_set_valign(_valign);

draw_set_font(fntM);

#define text_select
if selected {
	if player_find_local_nonsync() == p {
		sound_play(sndClick);
	}
	
	inputting = true;
	MENU.text_region[p] = self;
	
	return true;
}

return false;

#define text_mouse_select
if selected && point_in_region(mouse_x[p], mouse_y[p], self) {
	return text_select();
}

return false;

#define chat_message(_msg, _p)
if instance_exists(MENU.text_region[_p]) {
	if player_find_local_nonsync() == _p {
		sound_play(sndMenuStats);
	}
	
	with MENU.text_region[_p] {
		value = _msg;
		inputting = false;
		
		option_change();
	}
	
	MENU.text_region[_p] = noone;
	
	return true;
}

#define Keys_create(_p)
with region_create(
	_p,
	0,
	0,
	sprite_get_bbox_right(sprOptionSlider) - sprite_get_bbox_left(sprOptionSlider) + 1,
	sprite_get_bbox_bottom(sprOptionSlider) - sprite_get_bbox_top(sprOptionSlider) + 1,
	c_black,
	0,
	true
) {
	splat_spr = sprOptionSlider;
	splat_img = 0;
	
	value = "";
	
	keys = ds_map_create();
	
	inputting = false;
	
	style = "text";
	
	on_destroy = script_ref_create(Keys_destroy);
	
	on_draw = script_ref_wrap(
		script_ref_create(Keys_draw),
		script_ref_create(Name_draw)
	);
	
	var _validKeys = [
		"fire",
		"pick",
		"swap",
		"nort",
		"sout",
		"east",
		"west",
		"key1",
		"key2",
		"key3",
		"key4",
		"key5",
		"key6",
		"key7",
		"key8",
		"key9"
	];
	
	on_input = input_event_create(p, "fire", "pressed", script_ref_create(keys_mouse_select));
	
	var _validKeyCount = array_length(_validKeys);
	var i = _validKeyCount;
	
	if _validKeyCount > 0 {
		repeat _validKeyCount {
			i -= 1;
			
			var _key = _validKeys[i];
			
			on_input = script_ref_wrap(
				input_event_create(p, _key, "pressed", script_ref_create(keys_set_key, _key, true)),
				script_ref_wrap(
					input_event_create(p, _key, "released", script_ref_create(keys_set_key, _key, false)),
					on_input
				)
			);
		}
	}
	
	on_input = script_ref_wrap(
		input_event_create(p, "okay", "pressed", script_ref_create(keys_select)),
		on_input
	);
	
	return self;
}

#define Keys_destroy
if ds_map_valid(keys) {
	ds_map_destroy(keys);
}

#define Keys_draw
var _halign = draw_get_halign();
var _valign = draw_get_valign();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_font(fntChat);

var _keys = ds_map_keys(keys);
array_sort(_keys, true);

if style == "text" {
	draw_text_nt(
		4,
		round(abs(y2 - y1) / 2),
		`@(color:${selected || inputting ? c_white : c_silver})${
			string_hash_to_newline(display_override != null ? display_override : prefix + array_join(_keys, "+") + suffix)
		}`
	);
} else {
	var _sprite = current_frame % 40 < 20 ? "sprKeySmall" : "sprButSmall";
	
	var _display = "";
	
	var _keyCount = array_length(_keys);
	var i = -1;
	
	if _keyCount > 0 {
		repeat _keyCount {
			i += 1;
			
			var _key = _keys[i];
			
			switch _key {
				case "nort":
				case "sout":
				case "east":
				case "west": {
					if current_frame % 40 < 20 {
						_display += `@3(${_sprite}:${_key})+`;
					} else {
						_display += `@3(${_sprite}:move)+`;
					}
					
					break;
				}
				
				default: {
					if string_pos("key", _key) == 1 {
						_display += `@3(sprKeySmall:${48 + real(string_char_at(_key, 4))})+`;
					} else {
						_display += `@3(${_sprite}:${_key})+`;
					}
					
					break;
				}
			}
		}
	}
	
	_display = display_override != null ? display_override : prefix + string_delete(_display, string_length(_display), 1) + suffix;
	
	draw_text_nt(
		4,
		round(abs(y2 - y1) / 2),
		`@(color:${selected || inputting ? c_white : c_silver})${string_hash_to_newline(_display)}`
	);
}

draw_set_halign(_halign);
draw_set_valign(_valign);

draw_set_font(fntM);

#define keys_set_key(_key, _active)
if selected && inputting {
	if _active {
		ds_map_set(keys, _key, _active);
	} else {
		ds_map_delete(keys, _key);
	}
	
	return true;
}

return false;

#define keys_input()
if inputting {
	if player_find_local_nonsync() == p {
		sound_play(sndClick);
	}
	
	MENU.keys_region[p] = self;
} else {
	if player_find_local_nonsync() == p {
		sound_play(sndMenuStats);
	}
	
	MENU.keys_region[p] = noone;
	
	var _value = ds_map_keys(keys);
	array_sort(_value, true);
	
	var _valueCount = array_length(_value);
	var i = -1;
	value = "";
	
	if _valueCount > 0 {
		repeat _valueCount {
			i += 1;
			
			if _value[i] != "" {
				value += _value[i] + "+";
			}
		}
		
		value = string_delete(value, string_length(value), 1);
	}
	
	option_change();
}

#define option_change()
var _beforeChange = option_get(mod_kind, mod_name, page_name, option_name);

if fake_nonsync {
	option_set_fake_nonsync(mod_kind, mod_name, page_name, option_name, p, value);
} else if nonsync && player_find_local_nonsync() == p {
	option_set(mod_kind, mod_name, page_name, option_name, value);
} else {
	option_set(mod_kind, mod_name, page_name, option_name, value);
	
	var _p = -1;
	
	repeat maxp {
		_p += 1;
		
		if player_is_active(_p) {
			if MENU.region[_p] != null && MENU.region[_p].open
			&& MENU.mods[MENU.mod_index].page_index[_p] == MENU.mods[MENU.mod_index].page_index[p] {
				if MENU.region[_p].child_count > 0 {
					with MENU.region[_p].children[MENU.region[_p].child_count - 1] {
						if child_count > 0 {
							var i = -1;
							
							repeat child_count {
								i += 1;
								
								if "option_name" not in children[i] {
									continue;
								}
								
								if children[i].mod_kind == other.mod_kind && children[i].mod_name == other.mod_name
								&& children[i].option_name == other.option_name {
									children[i].value = other.value;
								}
							}
						}
					}
				}
			}
		}
	}
}

if on_change != null {
	script_ref_call(on_change, p, _beforeChange);
}

#define keys_mouse_select
if selected {
	inputting = point_in_region(mouse_x[p], mouse_y[p], self);
	
	keys_input();
	
	return true;
}

return false;

#define keys_select
if selected {
	inputting = !inputting;
	
	keys_input();
	
	return true;
}

return false;

#define Slider_create(_p)
with region_create(
	_p,
	0,
	0,
	sprite_get_bbox_right(sprOptionSlider) - sprite_get_bbox_left(sprOptionSlider) + 1,
	sprite_get_bbox_bottom(sprOptionSlider) - sprite_get_bbox_top(sprOptionSlider) + 1,
	c_black,
	0,
	true
) {
	splat_spr = global.options_slider;
	splat_img = 0;
	
	range = {
		"minimum": 0,
		"maximum": 1
	};
	
	format = {
		"total": 3,
		"dec": 1,
		"display_multiplier": 100
	};
	
	color = {
		"minimum": c_lime,
		"maximum": c_lime
	};
	
	value = 0.8;
	
	steps = 0.001;
	button_steps = 0.1;
	
	on_draw = script_ref_wrap(
		script_ref_create(Slider_draw),
		script_ref_create(Name_draw)
	);
	
	on_input = script_ref_wrap(
		input_event_create(p, "west", "pressed", script_ref_create(slider_adjust, -0.1)),
		input_event_create(p, "east", "pressed", script_ref_create(slider_adjust, 0.1))
	);
	
	on_input = script_ref_wrap(
		input_event_create(p, "fire", "check", script_ref_create(slider_mouse_adjust)),
		on_input
	);
	
	return self;
}

#define Slider_draw
var _sliderUVs = sprite_get_uvs(global.options_slider, 1);
var _bboxLeft = _sliderUVs[4];
var _bboxTop = _sliderUVs[5];
var _sliderWidth = _sliderUVs[6] * sprite_get_width(global.options_slider);
var _sliderHeight = _sliderUVs[7] * sprite_get_height(global.options_slider);

var _percent = ((value - range.minimum) / (range.maximum - range.minimum));

draw_sprite_part_centered_ext(
	global.options_slider,
	1,
	_bboxLeft,
	_bboxTop,
	_sliderWidth * _percent,
	_sliderHeight,
	abs(x2 - x1) / 2,
	abs(y2 - y1) / 2,
	1,
	1,
	0,
	merge_color(color.minimum, color.maximum, _percent),
	1
);

draw_sprite_part_centered_ext(
	sprSliderEnd,
	0,
	sprite_get_bbox_left(sprSliderEnd),
	sprite_get_bbox_top(sprSliderEnd),
	sprite_get_bbox_right(sprSliderEnd),
	sprite_get_bbox_bottom(sprSliderEnd),
	(_sliderWidth - sprite_get_width(sprSliderEnd)) * _percent + _bboxLeft + sprite_get_width(sprSliderEnd) / 2,
	abs(y2 - y1) / 2,
	1,
	1,
	0,
	c_white,
	1
);

var _halign = draw_get_halign();
var _valign = draw_get_valign();

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _displayValue = value * format.display_multiplier;

draw_text_nt(8, 5, `@(color:${selected ? c_white : c_silver})${
	string_hash_to_newline(
		display_override != null
		? display_override
		: prefix + string_format(_displayValue, format.total, format.dec) + suffix
	)
}`);

draw_set_halign(_halign);
draw_set_valign(_valign);

#define slider_adjust(_percentDelta)
if selected {
	value = clamp(value + (range.maximum - range.minimum) * _percentDelta, range.minimum, range.maximum);
	value = round(value / button_steps) * button_steps;
	
	if player_find_local_nonsync() == p {
		sound_play_pitchvol(sndSlider, value / (range.maximum - range.minimum), 1);
	}
	
	option_change();
	
	return true;
}

return false;

#define slider_mouse_adjust
if selected {
	var _inRegion = world_to_region(mouse_x[p], mouse_y[p], self);
	
	var _sliderUVs = sprite_get_uvs(global.options_slider, 1);
	var _bboxLeft = _sliderUVs[4];
	var _bboxTop = _sliderUVs[5];
	var _sliderWidth = _sliderUVs[6] * sprite_get_width(global.options_slider);
	var _sliderHeight = _sliderUVs[7] * sprite_get_height(global.options_slider);
	
	var _value = value;
	
	value = clamp(
		(range.maximum - range.minimum)
		* ((clamp(
			_inRegion.x,
			_bboxLeft + sprite_get_width(sprSliderEnd) / 2,
			_bboxLeft + _sliderWidth - sprite_get_width(sprSliderEnd) / 2
		) - _bboxLeft - sprite_get_width(sprSliderEnd) / 2) / (_sliderWidth - sprite_get_width(sprSliderEnd)))
		+ range.minimum,
		range.minimum,
		range.maximum
	);
	
	value = round(value / steps) * steps;
	
	if value != _value {
		if player_find_local_nonsync() == p {
			sound_play_pitchvol(sndSlider, value / (range.maximum - range.minimum), 1);
		}
		
		option_change();
	}
	
	return true;
}

return false;

#define wrap_range(_value, _minimum, _maximum)
var _range = _maximum - _minimum;
return (((_value - _minimum) % _range) + _range) % _range + _minimum;

#define string_width_fixed(_string)
return string_width(string_delete_nt(string_hash_to_newline(_string)));

#define string_height_fixed(_string)
return string_height(string_delete_nt(string_hash_to_newline(_string)));

#define string_hash_to_newline(_string)
var _backPos = string_pos("\", _string);
var _hashPos = string_pos("#", _string);

if _backPos == 0 && _hashPos == 0 {
	return _string;
}

if ds_map_exists(global.string_hash_to_newline_cache, _string) {
	return global.string_hash_to_newline_cache[? _string];
}

var _search = "112935";

while string_pos(_search, _string) > 0 {
	_search += "112935";
}

var _buffer = string_replace_all(string_replace_all(string_replace_all(_string, "\#", _search), "#", chr(10)), _search, "#");

global.string_hash_to_newline_cache[? _string] = _buffer;

return global.string_hash_to_newline_cache[? _string];

#define string_delete_nt(_string)
var _atPos = string_pos("@", _string);

if _atPos == 0 {
	return _string;
}

if ds_map_exists(global.string_delete_nt_cache, _string) {
	return global.string_delete_nt_cache[? _string];
}

var _stringLength = string_length(_string);
var _buffer = string_copy(_string, 1, _atPos - 1);

while _atPos > 0 && _atPos <= _stringLength {
	var _pos = _atPos;
	var c = string_char_at(_string, ++_atPos);
	var _padding = "";
	
	switch c {
		case "@": _buffer += "@"; break;
		case "0": _buffer += " "; break;
		
		case "w":
		case "s":
		case "d":
		case "r":
		case "g":
		case "b":
		case "p":
		case "y":
		case "q": break;
		
		case "1":
		case "2":
		case "3":
		case "4":
		case "5":
		case "6":
		case "7":
		case "8":
		case "9": {
			_padding = string_repeat(" ", real(c));
			
			break;
		}
	}
	
	if _padding != "" && string_char_at(_string, _atPos + 1) == "(" {
		while c != ")" && _atPos <= _stringLength {
			c = string_char_at(_string, ++_atPos);
		}
		
		if c != ")" {
			_buffer += string_copy(_string, _pos, _atPos - _pos);
		} else {
			_buffer += _padding;
		}
	}
	
	var _nextPos = string_pos("@", string_copy(_string, _atPos + 1, _stringLength - _atPos - 1));
	
	if _nextPos > 0 {
		_buffer += string_copy(_string, _atPos + 1, _nextPos - 1);
	} else {
		_buffer += string_copy(_string, _atPos + 1, _stringLength - _atPos);
	}
	
	_atPos = (_atPos + _nextPos) * sign(_nextPos);
}

global.string_delete_nt_cache[? _string] = _buffer;

return global.string_delete_nt_cache[? _string];

#define draw_sprite_ext_nc(_sprite, _image, _x, _y, _xscale, _yscale, _angle, _blend, _alpha)
mod_script_call_nc(
	mod_current_type,
	mod_current,
	"draw_sprite_ext_mod_script_call_nc",
	_sprite,
	_image,
	_x,
	_y,
	_xscale,
	_yscale,
	_angle,
	_blend,
	_alpha
);

#define draw_sprite_ext_mod_script_call_nc(_sprite, _image, _x, _y, _xscale, _yscale, _angle, _blend, _alpha)
draw_sprite_ext(
	_sprite,
	_image,
	_x,
	_y,
	_xscale,
	_yscale,
	_angle,
	_blend,
	_alpha
);

#define draw_sprite_part_centered_ext(_sprite, _image, _left, _top, _width, _height, _x, _y, _xscale, _yscale, _angle, _blend, _alpha)
var _l = sprite_get_bbox_left(_sprite);
var _t = sprite_get_bbox_top(_sprite);
var _w = sprite_get_bbox_right(_sprite) - _l + 1;
var _h = sprite_get_bbox_bottom(_sprite) - _t + 1;

var _lengthX = floor((_w / 2) * _xscale);
var _lengthY = floor((_h / 2) * _yscale);

draw_sprite_general(
	_sprite,
	_image,
	_left,
	_top,
	_width,
	_height,
	_x - lengthdir_x(_lengthX, _angle) - lengthdir_x(_lengthY, _angle - 90) + lengthdir_x(_l, _angle),
	_y - lengthdir_y(_lengthX, _angle) - lengthdir_y(_lengthY, _angle - 90) + lengthdir_y(_t, _angle),
	_xscale,
	_yscale,
	_angle,
	_blend,
	_blend,
	_blend,
	_blend,
	_alpha
);

#define draw_surface_centered_ext(_surface, _x, _y, _xscale, _yscale, _angle, _blend, _alpha)
var _w = surface_get_width(_surface);
var _h = surface_get_height(_surface);

var _lengthX = floor((_w / 2) * _xscale);
var _lengthY = floor((_h / 2) * _yscale);

draw_surface_ext(
	_surface,
	_x - lengthdir_x(_lengthX, _angle) - lengthdir_x(_lengthY, _angle - 90),
	_y - lengthdir_y(_lengthX, _angle) - lengthdir_y(_lengthY, _angle - 90),
	_xscale,
	_yscale,
	_angle,
	_blend,
	_alpha
);

#define world_to_region(_x, _y, _region)
var _regionCorners = region_corners_rotated(_region);

var _distance = point_distance(0, 0, _x - _regionCorners.x1, _y - _regionCorners.y1);
var _direction = point_direction(0, 0, _x - _regionCorners.x1, _y - _regionCorners.y1);

return {
	"x": ceil(lengthdir_x(_distance / _region.xscale, _direction - _region.angle)),
	"y": ceil(lengthdir_y(_distance / _region.yscale, _direction - _region.angle))
};

#define region_to_world(_x, _y, _region)
var _regionCorners = region_corners_rotated(_region);

var _distance = point_distance(0, 0, _x, _y);
var _direction = point_direction(0, 0, _x, _y);

return {
	"x": ceil(_regionCorners.x1 + lengthdir_x(_distance * _region.xscale, _direction + _region.angle)),
	"y": ceil(_regionCorners.y1 + lengthdir_y(_distance * _region.yscale, _direction + _region.angle))
};

#define region_corners_rotated(_region)
var _width = ceil((_region.x2 - _region.x1) * _region.xscale);
var _height = ceil((_region.y2 - _region.y1) * _region.yscale);

var _offsetX = ceil(_width / 2);
var _offsetY = ceil(_height / 2);

var _cornerX1 = lengthdir_x(_offsetX, _region.angle);
var _cornerX2 = lengthdir_x(_offsetY, _region.angle - 90);
var _cornerY1 = lengthdir_y(_offsetX, _region.angle);
var _cornerY2 = lengthdir_y(_offsetY, _region.angle - 90);

return {
	"x1": ceil(_region.x1 - _cornerX1 - _cornerX2),
	"y1": ceil(_region.y1 - _cornerY1 - _cornerY2),
	"x2": ceil(_region.x1 + _cornerX1 - _cornerX2),
	"y2": ceil(_region.y1 + _cornerY1 - _cornerY2),
	"x3": ceil(_region.x1 - _cornerX1 + _cornerX2),
	"y3": ceil(_region.y1 - _cornerY1 + _cornerY2),
	"x4": ceil(_region.x1 + _cornerX1 + _cornerX2),
	"y4": ceil(_region.y1 + _cornerY1 + _cornerY2)
};

#define point_in_region(_x, _y, _region)
var _rotatedRegion = region_corners_rotated(_region);

return point_in_rotated_rectangle_bbox(
	_x,
	_y,
	_rotatedRegion.x1,
	_rotatedRegion.y1,
	_rotatedRegion.x2,
	_rotatedRegion.y2,
	_rotatedRegion.x3,
	_rotatedRegion.y3,
	_rotatedRegion.x4,
	_rotatedRegion.y4
) && (point_in_triangle(
	_x,
	_y,
	_rotatedRegion.x1,
	_rotatedRegion.y1,
	_rotatedRegion.x2,
	_rotatedRegion.y2,
	_rotatedRegion.x3,
	_rotatedRegion.y3
) || point_in_triangle(
	_x,
	_y,
	_rotatedRegion.x2,
	_rotatedRegion.y2,
	_rotatedRegion.x4,
	_rotatedRegion.y4,
	_rotatedRegion.x3,
	_rotatedRegion.y3
));

#define script_ref_wrap(_superScriptReference, _scriptReference)
var _superWrapped = script_is_wrapped(_superScriptReference);
var _wrapped = script_is_wrapped(_scriptReference);

var _clonedReferences = [];

if _superWrapped {
	var i = -1;
	
	repeat array_length(_superScriptReference[3]) {
		i += 1;
		array_push(_clonedReferences, array_clone(_superScriptReference[@3][@i]));
	}
} else {
	array_push(_clonedReferences, _superScriptReference);
}

if _wrapped {
	var i = -1;
	
	repeat array_length(_scriptReference[3]) {
		i += 1;
		array_push(_clonedReferences, array_clone(_scriptReference[@3][@i]));
	}
} else {
	array_push(_clonedReferences, _scriptReference);
}

return script_ref_create(script_ref_wrapped, _clonedReferences);

#define script_is_wrapped(_scriptReference)
return _scriptReference[1] == mod_current
&& _scriptReference[0] == mod_current_type
&& _scriptReference[2] == "script_ref_wrapped";

#define script_ref_wrapped
if argument_count > 0 {
	var i = -1;
	
	repeat array_length(argument[0]) {
		var _script = argument[0][@ ++i];
		
		if argument_count > 1 {
			_script = array_clone(_script);
			
			var j = 0; // intentional 0, we skip the first argument
			
			repeat argument_count - 1 {
				array_push(_script, argument[++j]);
			}
		}
		
		var _result = script_ref_call_wc(_script, self, other);
		
		if !instance_exists(self) || (_result != null && _result) {
			exit;
		}
	}
}

#define script_ref_call_wc
var _scriptReference = argument[0];
var _self = argument[1];
var _other = argument[2];

if argument_count > 3 {
	_scriptReference = array_clone(_scriptReference);
	
	var i = 2; // intentional 2, we skip the first three arguments
	
	repeat argument_count - 3 {
		array_push(_scriptReference, argument[++i]);
	}
}

if self != _self || other != _other {
	with _other {
		with _self {
			return mod_script_call(mod_current_type, mod_current, "script_ref_call_wc", _scriptReference, _self, _other);
		}
	}
}

return script_ref_call(_scriptReference);

#define early_exit(_scriptReference)
var _statusCode = script_ref_call(_scriptReference);

if _statusCode != null && _statusCode {
	return true;
}

return false;

#define input_event_create(_p, _button, _event, _scriptReference)
switch _button {
	case "nort":
	case "sout":
	case "east":
	case "west":
	case "fire":
	case "spec":
	case "pick":
	case "swap":
	case "okay":
	case "paus":
	case "horn":
	case "key1":
	case "key2":
	case "key3":
	case "key4":
	case "key5":
	case "key6":
	case "key7":
	case "key8":
	case "key9": return script_ref_create(
		_event == "released"
			? input_event_handle_released
			: _event == "check"
				? input_event_handle_check
				: _event == "pressed"
					? input_event_handle_pressed
					: input_event_unknown_event, _p, _button, _scriptReference);
}

return script_ref_create(input_event_unknown_button, _p, _button, _event, _scriptReference);

#define input_event_handle_pressed(_p, _button, _scriptReference)
if button_pressed(_p, _button) {
	var _statusCode = script_ref_call(_scriptReference);
	
	if _statusCode != null && _statusCode {
		return true;
	}
}

return false;

#define input_event_handle_check(_p, _button, _scriptReference)
if button_check(_p, _button) {
	var _statusCode = script_ref_call(_scriptReference);
	
	if _statusCode != null && _statusCode {
		return true;
	}
}

return false;

#define input_event_handle_released(_p, _button, _scriptReference)
if button_released(_p, _button) {
	var _statusCode = script_ref_call(_scriptReference);
	
	if _statusCode != null && _statusCode {
		return true;
	}
}

return false;

#define input_event_unknown_button(_p, _button, _event, _scriptReference)
trace_color(`Unknown NTT button "${_button}" waiting to call "${_scriptReference[1]}.${_scriptReference[0]}::${_scriptReference[2]}" on P${_p + 1} ${_event}`, c_red);
return true;

#define input_event_unknown_event(_p, _button, _event, _scriptReference)
trace_color(`Unknown NTT event "${_event}" waiting to call "${_scriptReference[1]}.${_scriptReference[0]}::${_scriptReference[2]}" with P${_p + 1}'s ${_button}`, c_red);
return true;

#define region_add_child(_region, _child)
if _child.parent != null {
	region_remove_child(_child.parent, _child);
}

array_push(_region.children, _child);
_child.parent = _region;
_region.child_count += 1;

region_move_relative(_child, _region.x1, _region.y1);

#define region_remove_child(_region, _child)
var _childIndex = array_find_index(_region.children, _child);

if _childIndex >= 0 && _region.children[_childIndex] == _child {
	var _newChildren = array_slice(_region.children, 0, _childIndex);
	array_copy(_newChildren, _childIndex, _region.children, _childIndex + 1, _region.child_count - (_childIndex + 1));
	_region.children = _newChildren;
	
	_child.parent = null;
	_region.child_count -= 1;
}

#define region_register(_region)
_region.registered_index = ds_list_size(global.regions);
ds_list_add(global.regions, _region);

#define region_deregister(_region)
if !instance_exists(_region) || _region.registered_index < 0 {
	exit;
}

var _shift = 1;

var i = _region.registered_index;

if ds_list_size(global.regions) - _region.registered_index - 1 > 0 {
	repeat ds_list_size(global.regions) - _region.registered_index - 1 {
		i += 1;
		
		if i >= ds_list_size(global.regions) {
			break;
		}
		
		var _regionToShift = global.regions[| i];
		
		if _regionToShift == null {
			break;
		}
		
		if !instance_exists(_regionToShift) {
			_shift += 1;
			i -= 1;
			continue;
		} else {
			_regionToShift.registered_index -= _shift;
		}
	}
}

ds_list_delete(global.regions, _region.registered_index);
_region.registered_index = -1;

#define region_create
var _p = argument[0];

var _x = argument[1];
var _y = argument[2];
var _w = argument[3];
var _h = argument[4];

var _bgColor = argument_count > 5 ? argument[5] : c_silver;
var _bgAlpha = argument_count > 6 ? argument[6] : 1.0;

var _anchor = argument_count > 7 ? argument[7] : false;

return Region_create(_p, _x, _y, _w, _h, _bgColor, _bgAlpha, _anchor);

#define region_destroy(_region)
if !instance_exists(_region) {
	exit;
}

if _region.registered_index >= 0 {
	region_deregister(_region);
}

if _region.parent != null {
	region_remove_child(_region.parent, _region);
}

script_ref_call_wc(_region.on_destroy_internal, _region, _region);

#define region_resize(_region, _width, _height)
if _width < 1 || _height < 1 {
	exit;
}

var _x = _region.x1;
var _y = _region.y1;

_region.x1 = _x - floor((_width - (_region.x2 - _region.x1)) / 2);
_region.y1 = _y - floor((_height - (_region.y2 - _region.y1)) / 2);
_region.x2 = _region.x1 + _width;
_region.y2 = _region.y1 + _height;

if surface_exists(_region.surface) {
	surface_resize(_region.surface, _width, _height);
}

#define region_move(_region, _x, _y)
var _deltaX = _x - _region.x1;
var _deltaY = _y - _region.y1;

var _childCount = _region.child_count;
var i = -1;

if _childCount > 0 {
	repeat _childCount {
		i += 1;
		
		region_move_relative(_region.children[i], _deltaX, _deltaY);
	}
}

region_move_relative(_region, _deltaX, _deltaY);

#define region_move_relative(_region, _shiftX, _shiftY)
_region.x1 += _shiftX;
_region.y1 += _shiftY;
_region.x2 += _shiftX;
_region.y2 += _shiftY;

#define Region_create
var _p = argument[0];

var _x = argument[1];
var _y = argument[2];
var _w = argument[3];
var _h = argument[4];

var _bgColor = argument_count > 5 ? argument[5] : c_silver;
var _bgAlpha = argument_count > 6 ? argument[6] : 1.0;

var _anchor = argument_count > 7 ? argument[7] : false;

_w = ceil(_w);
_h = ceil(_h);

if _w < 1 || _h < 1 {
	_w = 16;
	_h = 16;
}

with instance_create(0, 0, GameObject) {
	persistent = true;
	name = "Region";
	
	draw_synced = false;
	
	p = _p;
	registered_index = -1;
	parent = null;
	
	anchored_x = _x;
	anchored_y = _y;
	
	x1 = _x;
	y1 = _y;
	x2 = x1 + _w;
	y2 = y1 + _h;
	
	xscale = 1;
	yscale = 1;
	angle = 0;
	blend = c_white;
	alpha = 1;
	
	bg_color = _bgColor;
	bg_alpha = _bgAlpha;
	
	children = [];
	child_count = 0;
	
	surface = surface_create(_w, _h);
	
	on_destroy = script_ref_create(Region_destroy);
	on_step = script_ref_create(Region_step);
	on_draw = script_ref_create(Region_draw);
	
	on_destroy_internal = script_ref_create(Region_destroy_internal);
	
	on_step_internal = script_ref_create(Region_step_internal);
	on_draw_internal = script_ref_create(Region_draw_internal);
	
	if _anchor {
		on_draw_internal = script_ref_wrap(
			script_ref_create(Region_anchor),
			on_draw_internal
		);
	}
	
	on_input = script_ref_create(Region_input);
	on_input_internal = script_ref_create(Region_input_internal);
	
	return self;
}

#define Region_anchor
if player_is_active(p) {
	region_move(self, view_xview[p] + anchored_x, view_yview[p] + anchored_y);
}

#define Region_input


#define Region_input_internal
var i = -1;

if child_count > 0 {
	repeat child_count {
		i += 1;
		
		if i >= child_count {
			break;
		}
		
		var _child = children[i];
		
		if !instance_exists(_child) {
			i -= 1;
			continue;
		}
		
		if script_ref_call_wc(script_ref_create(early_exit, _child.on_input_internal), _child, _child) {
			return true;
		}
	}
}

if instance_exists(self) {
	return early_exit(on_input);
}

return false;

#define Region_destroy


#define Region_destroy_internal
var i = -1;

if child_count > 0 {
	repeat child_count {
		i += 1;
		
		if i >= child_count {
			break;
		}
		
		var _child = children[i];
		
		if !instance_exists(_child) {
			i -= 1;
			continue;
		}
		
		script_ref_call_wc(_child.on_destroy_internal, _child, _child);
	}
}

script_ref_call(on_destroy);

if surface_exists(surface) {
	surface_destroy(surface);
}

instance_destroy();

#define Region_step


#define Region_step_internal
var i = -1;

if child_count > 0 {
	repeat child_count {
		i += 1;
		
		if i >= child_count {
			break;
		}
		
		var _child = children[i];
		
		if !instance_exists(_child) {
			i -= 1;
			continue;
		}
		
		script_ref_call_wc(_child.on_step_internal, _child, _child);
	}
}

script_ref_call(on_step);

#define Region_draw


#define Region_draw_internal
var _visible = null;

if draw_synced {
	_visible = [];
	
	var _p = -1;
	
	repeat maxp {
		_p += 1;
		
		_visible[_p] = draw_get_visible(_p);
		draw_set_visible(_p, _p == p);
	}
}

if draw_synced || player_find_local_nonsync() == p {
	if !surface_exists(surface) {
		surface = surface_create(abs(x2 - x1), abs(y2 - y1));
	}
	
	surface_target_push(surface);
	
	draw_clear_alpha(bg_color, bg_alpha);
	
	script_ref_call(on_draw);
	
	surface_target_pop();
	
	draw_surface_centered_ext(
		surface,
		x1,
		y1,
		xscale,
		yscale,
		angle,
		blend,
		alpha
	);
}
var i = -1;

if child_count > 0 {
	repeat child_count {
		i += 1;
		
		if i >= child_count {
			break;
		}
		
		var _child = children[i];
		
		if !instance_exists(_child) {
			i -= 1;
			continue;
		}
		
		script_ref_call_wc(_child.on_draw_internal, _child, _child);
	}
}

if draw_synced {
	var _p = -1;
	
	repeat maxp {
		_p += 1;
		
		draw_set_visible(_p, _visible[_p]);
	}
}

#define surface_target_push(_surface)
if ds_list_size(global.surface_targets) > 0 {
	surface_reset_target();
}

ds_list_add(global.surface_targets, _surface);
surface_set_target(_surface);

#define surface_target_pop()
if ds_list_size(global.surface_targets) > 0 {
	var _surface = global.surface_targets[| ds_list_size(global.surface_targets) - 1];
	
	ds_list_delete(global.surface_targets, ds_list_size(global.surface_targets) - 1);
	surface_reset_target();
	
	if ds_list_size(global.surface_targets) > 0 {
		surface_set_target(global.surface_targets[| ds_list_size(global.surface_targets) - 1]);
	}
	
	return _surface;
}

return null;

#define surface_target_peek()
if ds_list_size(global.surface_targets) > 0 {
	return global.surface_targets[| ds_list_size(global.surface_targets) - 1];
}

return null;

#define point_in_rotated_rectangle_bbox(_px, _py, _x1, _y1, _x2, _y2, _x3, _y3, _x4, _y4)
return point_in_rectangle(
	_px,
	_py,
	min(_x1, _x2, _x3, _x4),
	min(_y1, _y2, _y3, _y4),
	max(_x1, _x2, _x3, _x4),
	max(_y1, _y2, _y3, _y4)
);
