private _display = finddisplay 313;
{
	private _ctrl = _display displayctrl _x;																// Get the list control
	for "_faction" from 0 to ((_ctrl tvcount []) - 1) do {													// Foreach Factions
		for "_category" from 0 to ((_ctrl tvcount [ _faction ]) - 1) do {									// Foreach Categories
			for "_item" from 0 to ((_ctrl tvcount [ _faction, _category ]) - 1) do {						// Foreach Vehicles
				private _path = [ _faction, _category, _item ];
				private _classname = _ctrl tvData _path;
				private _config = configFile >> "CfgVehicles" >> _classname;
				private _picture = [ _config ] call AIF_fnc_getIcon;
				_ctrl tvSetPictureRight [_path, _picture];													// Setting the picture
				if (_picture isEqualTo "") then {															// If picture is empty, setting picture will not remove it
					_ctrl tvSetPictureRightColor [_path, [1,1,1,0]];										// So we make it transparent
				};
			};
		};
	};
} foreach [ 56, 57, 58, 59 ];