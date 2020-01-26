params [
	["_config", configNull, [configNull]]
];

private _addons = configSourceAddonList _config; 		// Get all addons that modify this class
private _addon = if (_addons isEqualTo []) then { "" } else { _addons#0 };					// Select the addon that initiated the class
private _mod = configSourceMod (configFile >> "CfgPatches" >> _addon); 						// Get where the addon is from
private _params = modParams [ _mod, ["logoSmall"] ];										// Fetch the mod logo
private _picture = if (_params isEqualTo []) then { "" } else { _params#0 };				// If vanilla, the array is empty so fallback to ""
_picture