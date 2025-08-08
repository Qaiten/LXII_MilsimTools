params [["_filter", "", [""]]];

private _whitelist = [];
switch (toLowerANSI _filter) do {
	case "woodland": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_woodland" || {LXII_legioArsenal_arsenal_whitelist_woodland isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_woodland;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "desert": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_desert" || {LXII_legioArsenal_arsenal_whitelist_desert isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_desert;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "winter": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_winter" || {LXII_legioArsenal_arsenal_whitelist_winter isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_winter;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "solar_aux": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_solar_aux" || {LXII_legioArsenal_arsenal_whitelist_solar_aux isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_solar_aux;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "mission": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_mission" || {LXII_legioArsenal_arsenal_whitelist_mission isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_mission;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "kasrkin": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_kasrkin" || {LXII_legioArsenal_arsenal_whitelist_kasrkin isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_kasrkin;
params [["_filter", "", [""]]];

private _whitelist = [];
switch (toLowerANSI _filter) do {
	case "woodland": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_woodland" || {LXII_legioArsenal_arsenal_whitelist_woodland isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_woodland;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "desert": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_desert" || {LXII_legioArsenal_arsenal_whitelist_desert isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_desert;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "winter": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_winter" || {LXII_legioArsenal_arsenal_whitelist_winter isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_winter;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "solar_aux": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_solar_aux" || {LXII_legioArsenal_arsenal_whitelist_solar_aux isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_solar_aux;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "mission": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_mission" || {LXII_legioArsenal_arsenal_whitelist_mission isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_mission;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "kasrkin": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_kasrkin" || {LXII_legioArsenal_arsenal_whitelist_kasrkin isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_kasrkin;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	case "scion": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_scion" || {LXII_legioArsenal_arsenal_whitelist_scion isEqualTo ""}) then {
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_scion;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then { _whitelist = []; };
		};
	};
	default { _whitelist = true; };
};

// Is it empty?
if (_whitelist isEqualTo []) then {
	_whitelist = true;
};

_whitelist;
switch (toLowerANSI _filter) do {
	case "woodland": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_woodland" || {LXII_legioArsenal_arsenal_whitelist_woodland isEqualTo ""}) then {
			[format["Woodland whitelist variable is undefined or empty! Using empty array."], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_woodland;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then {
				[format["Failed to parse woodland whitelist: %1", LXII_legioArsenal_arsenal_whitelist_woodland], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
				_whitelist = [];
			};
		};
	};
	case "desert": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_desert" || {LXII_legioArsenal_arsenal_whitelist_desert isEqualTo ""}) then {
			[format["Desert whitelist variable is undefined or empty! Using empty array."], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_desert;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then {
				[format["Failed to parse desert whitelist: %1", LXII_legioArsenal_arsenal_whitelist_desert], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
				_whitelist = [];
			};
		};
	};
	case "winter": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_winter" || {LXII_legioArsenal_arsenal_whitelist_winter isEqualTo ""}) then {
			[format["Winter whitelist variable is undefined or empty! Using empty array."], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_winter;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then {
				[format["Failed to parse winter whitelist: %1", LXII_legioArsenal_arsenal_whitelist_winter], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
				_whitelist = [];
			};
		};
	};
	case "solar_aux": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_solar_aux" || {LXII_legioArsenal_arsenal_whitelist_solar_aux isEqualTo ""}) then {
			[format["Solar_aux whitelist variable is undefined or empty! Using empty array."], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_solar_aux;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then {
				[format["Failed to parse solar_aux whitelist: %1", LXII_legioArsenal_arsenal_whitelist_solar_aux], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
				_whitelist = [];
			};
		};
	};
	case "mission": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_mission" || {LXII_legioArsenal_arsenal_whitelist_mission isEqualTo ""}) then {
			[format["Mission whitelist variable is undefined or empty! Using empty array."], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_mission;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then {
				[format["Failed to parse mission whitelist: %1", LXII_legioArsenal_arsenal_whitelist_mission], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
				_whitelist = [];
			};
		};
	};
	case "kasrkin": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_kasrkin" || {LXII_legioArsenal_arsenal_whitelist_kasrkin isEqualTo ""}) then {
			[format["Kasrkin whitelist variable is undefined or empty! Using empty array."], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_kasrkin;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then {
				[format["Failed to parse kasrkin whitelist: %1", LXII_legioArsenal_arsenal_whitelist_kasrkin], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
				_whitelist = [];
			};
		};
	};
	case "scion": { 
		if (isNil "LXII_legioArsenal_arsenal_whitelist_scion" || {LXII_legioArsenal_arsenal_whitelist_scion isEqualTo ""}) then {
			[format["Scion whitelist variable is undefined or empty! Using empty array."], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
			_whitelist = [];
		} else {
			_whitelist = call compile LXII_legioArsenal_arsenal_whitelist_scion;
			if (isNil "_whitelist" || {typeName _whitelist != "ARRAY"}) then {
				[format["Failed to parse scion whitelist: %1", LXII_legioArsenal_arsenal_whitelist_scion], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
				_whitelist = [];
			};
		};
	};
	default { _whitelist = true; };
};

// Is it empty?
if (_whitelist isEqualTo []) then {
	_whitelist = true;
	_filter = format["(was %1, now reset)", _filter];
	[format["Arsenal Whitelist is empty. Filling Arsenal with everything instead. %1", _filter], "legioArsenal\functions\common\fn_getArsenalFilter.sqf"] call LXII_legioArsenal_fnc_log;
};

_whitelist;