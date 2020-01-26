class CfgPatches {
    class ArmaIconFix {
        name = "Arma Icon Fix";
        author = "Echo (Heyoxe)";
        url = "https://github.com/Heyoxe/ArmaIconFix";
        requiredAddons[] = {};
        requiredVersion = 1.96;
        units[] = {};
        weapons[] = {};
        version = 0.1;
    };
};

class CfgFunctions {
    class ArmaIconFix {
        tag = "AIF";
        file = "\e\aif\addons\core";
        class Core {
            class getIcon {};
            class onTerrainNew {};
        };
    };
};

class Cfg3DEN {
	class EventHandlers {
		class ArmaIconFix {
			onTerrainNew = "[] spawn AIF_fnc_onTerrainNew";
		};
	};
};