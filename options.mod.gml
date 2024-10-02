#define init
mod_current_type = script_ref_create(0)[0];

scr = {};

var _scripts = [
	"option_set", "option_get", "option_defget",
	
	"option_set_fake_nonsync", "option_get_fake_nonsync", "option_defget_fake_nonsync",
	
	"option_set_field", "option_get_field", "option_defget_field",
	
	"option_add", "option_add_page", "option_remove", "option_remove_ext", "option_remove_page", "option_remove_page_ext", "option_remove_category", "option_remove_mod",
	
	"options_refresh"
];

for var i = 0, _scriptCount = array_length(_scripts); _scriptCount > i; i ++; {
	lq_set(scr, _scripts[i], [mod_current_type, mod_current, _scripts[i]]);
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

global.call_queue = [];

global.export_to = {};

var _persistentData = instances_matching(CustomObject, CONTROLLER, mod_current);

if array_length(_persistentData) {
	var _restored = false;
	
	with _persistentData {
		if !_restored {
			_restored = true;
			
			if "export_to" in self {
				for var i = 0, _exportCount = lq_size(export_to); _exportCount > i; i ++; {
					var _modData = string_split(lq_get_key(export_to, i), ".");
					var _modReference = [_modData[1], _modData[0], lq_get_value(export_to, i)];
					scr_import(_modReference, _modReference[2]);
				}
			}
			
			if "call_queue" in self {
				global.call_queue = call_queue;
			}
		}
		
		instance_delete(self);
	}
}

#define cleanup
with instance_create(0, 0, CustomObject) {
	variable_instance_set(self, CONTROLLER, mod_current);
	persistent = true;
	
	export_to = global.export_to;
	
	call_queue = global.call_queue;
}

#macro scr global.scr
#macro call script_ref_call

#macro mod_current_type global.mod_current_type
#macro CONTROLLER mod_current + "." + mod_current_type + " CONTROLLER"

#define scr_import
var _modReference = argument[0];
var _modVariable = argument_count > 1 ? argument[1] : "scr";

if !mod_exists(_modReference[0], _modReference[1]) {
	exit;
}

var _exportedScripts = {};

for var i = lq_size(scr) - 1; i >= 0; i --; {
	var _scriptReference = lq_get_value(scr, i);
	
	if _scriptReference[0] == mod_current_type && _scriptReference[1] == mod_current {
		lq_set(_exportedScripts, lq_get_key(scr, i), array_clone(_scriptReference));
	}
}

if !is_object(mod_variable_get(_modReference[0], _modReference[1], _modVariable)) {
	mod_variable_set(_modReference[0], _modReference[1], _modVariable, _exportedScripts);
} else {
	var _modScripts = mod_variable_get(_modReference[0], _modReference[1], _modVariable);
	
	for var i = lq_size(_exportedScripts) - 1; i >= 0; i --; {
		lq_set(_modScripts, lq_get_key(_exportedScripts, i), array_clone(lq_get_value(_exportedScripts, i)));
	}
}

lq_set(global.export_to, _modReference[1] + "." + _modReference[0], _modVariable);

#define draw_pause
if !mod_exists("mod", "custom_options") {
	exit;
}

for var i = 0, _queueLength = array_length(global.call_queue); _queueLength > i; i ++; {
	script_ref_call(global.call_queue[i]);
}

global.call_queue = [];

#define step
if !mod_exists("mod", "custom_options") {
	exit;
}

for var i = 0, _queueLength = array_length(global.call_queue); _queueLength > i; i ++; {
	script_ref_call(global.call_queue[i]);
}

global.call_queue = [];

#define option_set(_modType, _modName, _modVariable, _optionName, _value)
var _modOptions = mod_variable_get(_modType, _modName, _modVariable);

if _modOptions == null {
	_modOptions = {};
	mod_variable_set(_modType, _modName, _modVariable, _modOptions);
}

if is_object(_modOptions) {
	lq_set(_modOptions, _optionName, _value);
	return _value;
}

return null;

#define option_get(_modType, _modName, _modVariable, _optionName)
var _modOptions = mod_variable_get(_modType, _modName, _modVariable);

if is_object(_modOptions) {
	return lq_get(_modOptions, _optionName);
}

return null;

#define option_defget(_modType, _modName, _modVariable, _optionName, _defValue)
var _value = option_get(_modType, _modName, _modVariable, _optionName);
return _value == null ? _defValue : _value;

#define option_set_fake_nonsync(_modType, _modName, _modVariable, _player, _optionName, _value)
var _modOptions = mod_variable_get(_modType, _modName, _modVariable);

if _modOptions == null {
	_modOptions = {};
	mod_variable_set(_modType, _modName, _modVariable, _modOptions);
}

if is_object(_modOptions) {
	var _fakeNonsync = lq_get(_modOptions, _optionName);
	
	if !is_array(_fakeNonsync) || array_length(_fakeNonsync) <= _player {
		lq_set(_fakeNonsync, _optionName, array_create(maxp, _value));
	} else {
		_fakeNonsync[_player] = _value;
	}
	
	return _value;
}

return null;

#define option_get_fake_nonsync(_modType, _modName, _modVariable, _player, _optionName)
var _modOptions = mod_variable_get(_modType, _modName, _modVariable);

if _modOptions == null {
	_modOptions = {};
	mod_variable_set(_modType, _modName, _modVariable, _modOptions);
}

if is_object(_modOptions) {
	var _fakeNonsync = lq_get(_modOptions, _optionName);
	
	if !is_array(_fakeNonsync) || array_length(_fakeNonsync) <= _player {
		return null;
	} else {
		return _fakeNonsync[_player];
	}
}

return null;

#define option_defget_fake_nonsync(_modType, _modName, _modVariable, _player, _optionName, _defValue)
var _fakeNonsync = option_get_fake_nonsync(_modType, _modName, _modVariable, _player, _optionName);
return _fakeNonsync == null ? _defValue : _fakeNonsync;

#define option_set_field(_modType, _modName, _pageName, _optionName, _field, _value)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_set_field",
		_modType,
		_modName,
		_pageName,
		_optionName,
		_field,
		_value
	]);
	
	exit;
}

var _result = mod_script_call_nc("mod", "custom_options", "option_set_field", _modType, _modName, _pageName, _optionName, _field, _value);

if mod_variable_exists("mod", "custom_options", "menu") {
	var _modIndex = mod_script_call_nc("mod", "custom_options", "mod_get_index", _modType, _modName);
	var _pageIndex = mod_script_call_nc("mod", "custom_options", "mod_page_get_index", _modIndex, _pageName);
	var _optionIndex = mod_script_call_nc("mod", "custom_options", "mod_page_option_get_index", _modIndex, _pageIndex, _optionName);
	
	var _menu = mod_variable_get("mod", "custom_options", "menu");
	
	var _option = _menu.mods[_modIndex].pages[_pageIndex].options[_optionIndex];
	_menu.mods[_modIndex].pages[_pageIndex].options[_optionIndex] = option_translate(_optionName, _option);
}

return _result;

#define option_get_field(_modType, _modName, _pageName, _optionName, _field)
if !mod_exists("mod", "custom_options") {
	return null;
}

switch _field {
	case "type": return null;
	case "name": return lq_get(mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "name"), "text");
	case "desc": return lq_get(mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "desc"), "text");
	case "reference": return mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "on_change");
	
	case "range": {
		var _range = mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "range");
		
		return [lq_get(_range, "minimum"), lq_get(_range, "maximum")];
	}
	
	case "display_multiplier": {
		var _format = mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "format");
		
		return lq_get(_format, "display_multiplier");
	}
	
	case "decimal_places": {
		var _format = mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "format");
		
		return lq_get(_format, "dec");
	}
	
	case "color": {
		var _color = mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "color");
		
		return [lq_get(_color, "minimum"), lq_get(_color, "maximum")];
	}
	
	case "choices": return mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, "values");
}

return mod_script_call_nc("mod", "custom_options", "option_get_field", _modType, _modName, _pageName, _optionName, _field);

#define option_defget_field(_modType, _modName, _pageName, _optionName, _field, _defValue)
var _value = option_get_field(_modType, _modName, _pageName, _optionName, _field);
return _value == null ? _defValue : _value;

#define option_add(_modType, _modName, _modVariable, _modDisplayName, _pageDisplayName, _optionName, _option)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add",
		_modType,
		_modName,
		_modVariable,
		_modDisplayName,
		_pageDisplayName,
		_optionName,
		_option
	]);
	
	exit;
}

if is_string(_option) {
	_option = json_decode(_option);
	
	if _option == json_error {
		trace_color(`Failed to add option "${_optionName}" to ${_modName}.${_modType}'s page "${_pageDisplayName}":`, c_red);
		trace_color(json_error_text, c_red);
		
		exit;
	}
}

var _result = mod_script_call_nc(
	"mod",
	"custom_options",
	"option_add",
	_modType,
	_modName,
	_modVariable,
	_pageDisplayName,
	_optionName,
	option_translate(_optionName, _option)
);

mod_script_call_nc("mod", "custom_options", "option_set_mod_display_name", _modType, _modName, _modDisplayName);
mod_script_call_nc("mod", "custom_options", "option_set_page_display_name", _modType, _modName, _pageDisplayName, _pageDisplayName);

return _result;

#define option_add_page(_modType, _modName, _modVariable, _modDisplayName, _pageDisplayName, _page)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add_page",
		_modType,
		_modName,
		_modVariable,
		_modDisplayName,
		_pageDisplayName,
		_page
	]);
	
	exit;
}

if is_string(_page) {
	_page = json_decode(_page);
	
	if _page == json_error {
		trace_color(`Failed to add page "${_pageDisplayName}" to ${_modName}.${_modType}:`, c_red);
		trace_color(json_error_text, c_red);
		
		exit;
	}
}

var _result = mod_script_call_nc("mod", "custom_options", "option_add_page", _modType, _modName, _modVariable, _pageDisplayName, page_translate(_page));

mod_script_call_nc("mod", "custom_options", "option_set_mod_display_name", _modType, _modName, _modDisplayName);
mod_script_call_nc("mod", "custom_options", "option_set_page_display_name", _modType, _modName, _pageDisplayName, _pageDisplayName);

return _result;

#define option_remove(_category, _pageName, _optionName)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add",
		_category,
		_pageName,
		_optionName
	]);
	
	exit;
}

mod_script_call_nc("mod", "custom_options", "option_remove", "", _category, _pageName, _optionName);

#define option_remove_ext(_modType, _modName, _pageName, _optionName)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add",
		_modType,
		_modName,
		_pageName,
		_optionName
	]);
	
	exit;
}

mod_script_call_nc("mod", "custom_options", "option_remove", _modType, _modName, _pageName, _optionName);

#define option_remove_page(_category, _pageName)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add",
		_category,
		_pageName
	]);
	
	exit;
}

mod_script_call_nc("mod", "custom_options", "option_remove_page", "", _category, _pageName);

#define option_remove_page_ext(_modType, _modName, _pageName)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add",
		_modType,
		_modName,
		_pageName
	]);
	
	exit;
}

mod_script_call_nc("mod", "custom_options", "option_remove_page", _modType, _modName, _pageName);

#define option_remove_category(_category)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add",
		_category
	]);
	
	exit;
}

mod_script_call_nc("mod", "custom_options", "option_remove_mod", "", _category);

#define option_remove_mod(_modType, _modName)
if !mod_exists("mod", "custom_options") {
	array_push(global.call_queue, [
		mod_current_type,
		mod_current,
		"option_add",
		_modType,
		_modName
	]);
	
	exit;
}

mod_script_call_nc("mod", "custom_options", "option_remove_mod", _modType, _modName);

#define options_refresh()
mod_script_call_nc("mod", "custom_options", "options_refresh");

#define option_translate(_optionName, _option)
var _translatedOption = {};

switch lq_defget(_option, "type", null) {
	case "bool": {
		if lq_exists(_option, "display") {
			var _oldField = lq_get(_option, "display");
			
			if is_array(_oldField) && array_length(_oldField) >= 2 {
				_translatedOption.display = _oldField;
			}
		}
		
		break;
	}
	
	case "int":
	case "slider": {
		if lq_exists(_option, "range") {
			var _oldField = lq_get(_option, "range");
			
			if is_array(_oldField) && array_length(_oldField) >= 2 && is_real(_oldField[0]) && is_real(_oldField[1]) {
				_translatedOption.range = {
					"minimum": _oldField[0],
					"maximum": _oldField[1]
				};
			}
		}
		
		if lq_exists(_option, "steps") {
			var _oldField = lq_get(_option, "steps");
			
			if is_real(_oldField) {
				_translatedOption.steps = _oldField;
			}
		}
		
		if lq_get(_option, "type") == "int" {
			if lq_exists(_option, "wrap") {
				var _oldField = lq_defget(_option, "wrap", true);
				
				if is_real(_oldField) {
					_translatedOption.wrap = _oldField;
				}
			}
		} else if lq_get(_option, "type") == "slider" {
			if lq_exists(_option, "fine_steps") || lq_exists(_option, "button_steps") {
				var _oldField = lq_defget(_option, "button_steps", lq_get(_option, "fine_steps"));
				
				if is_real(_oldField) {
					_translatedOption.button_steps = _oldField;
				}
			}
			
			if lq_exists(_option, "display") || lq_exists(_option, "display_multiplier") {
				var _oldField = lq_defget(_option, "display_multiplier", lq_get(_option, "display"));
				
				if is_real(_oldField) {
					if lq_exists(_translatedOption, "format") {
						_translatedOption.format.display_multiplier = _oldField;
					} else {
						_translatedOption.format = {
							"display_multiplier": _oldField
						};
					}
				}
			}
			
			if lq_exists(_option, "decimal") || lq_exists(_option, "decimal_places") {
				var _oldField = lq_defget(_option, "decimal_places", lq_get(_option, "decimal"));
				
				if is_real(_oldField) {
					if lq_exists(_translatedOption, "format") {
						_translatedOption.format.dec = _oldField;
					} else {
						_translatedOption.format = {
							"dec": _oldField
						};
					}
				}
			}
			
			if lq_exists(_option, "color") {
				var _oldField = lq_get(_option, "color");
				
				if is_array(_oldField) && array_length(_oldField) >= 2 && is_real(_oldField[0]) && is_real(_oldField[1]) {
					_translatedOption.color = {
						"minimum": _oldField[0],
						"maximum": _oldField[1]
					};
				}
			}
		}
		
		break;
	}
	
	case "cycle": {
		if lq_exists(_option, "choices") {
			var _oldField = lq_get(_option, "choices");
			
			if is_array(_oldField) && array_length(_oldField) > 0 {
				_translatedOption.values = _oldField;
			}
		}
		
		if lq_exists(_option, "display") {
			var _oldField = lq_get(_option, "display");
			
			if is_array(_oldField) && array_length(_oldField) > 0 {
				_translatedOption.display = _oldField;
			}
		}
		
		break;
	}
	
	case "button":
	case "title": {
		
		
		break;
	}
	
	case "text": {
		
		
		break;
	}
	
	case "keys": {
		if lq_exists(_option, "style") {
			var _oldField = lq_get(_option, "style");
			
			if is_string(_oldField) && (_oldField == "text" || _oldField == "buttons") {
				_translatedOption.style = _oldField;
			}
		}
		
		break;
	}
}

var _sharedFields = option_translate_shared(_optionName, _option);

for var i = 0, _fieldCount = lq_size(_sharedFields); _fieldCount > i; i ++; {
	lq_set(_translatedOption, lq_get_key(_sharedFields, i), lq_get_value(_sharedFields, i));
}

return _translatedOption;

#define option_translate_shared(_optionName, _option)
var _translatedOption = {
	"option": _optionName
};

if lq_exists(_option, "type") {
	var _oldField = lq_get(_option, "type");
	
	if is_string(_oldField) {
		_translatedOption.kind = _oldField;
	}
}

if lq_exists(_option, "fake_nonsync") {
	_translatedOption.fake_nonsync = true;
} else if lq_exists(_option, "nonsync") {
	_translatedOption.nonsync = true;
}

if lq_exists(_option, "name") {
	var _oldField = lq_get(_option, "name");
	
	if is_string(_oldField) {
		_translatedOption.name = {
			"text": _oldField
		};
	}
}

if lq_exists(_option, "desc") {
	var _oldField = lq_get(_option, "desc");
	
	if is_string(_oldField) {
		_translatedOption.desc = {
			"text": _oldField
		};
	}
}

if lq_exists(_option, "reference") {
	var _oldField = lq_get(_option, "reference");
	
	if is_array(_oldField) && array_length(_oldField) >= 3 && is_string(_oldField[0]) && is_string(_oldField[1]) && is_string(_oldField[2]) {
		_translatedOption.on_change = _oldField;
	}
}

if lq_exists(_option, "display_override") {
	_translatedOption.display_override = lq_get(_option, "display_override");
}

if lq_exists(_option, "prefix") {
	_translatedOption.prefix = lq_get(_option, "prefix");
}

if lq_exists(_option, "suffix") {
	_translatedOption.suffix = lq_get(_option, "suffix");
}

return _translatedOption;

#define page_translate(_page)
if is_object(_page) {
	var _options = [];
	
	for var i = 0, _optionCount = lq_size(_page); _optionCount > i; i ++; {
		array_push(_options, option_translate(lq_get_key(_page, i), lq_get_value(_page, i)));
	}
	
	return {
		"options": _options
	};
} else if is_array(_page) && array_length(_page) >= 3 && is_string(_page[0]) && is_string(_page[1]) && is_string(_page[2]) {
	return {
		"reference": _page
	};
}

return {};
