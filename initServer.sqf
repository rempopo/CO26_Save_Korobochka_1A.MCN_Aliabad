/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		a) array in format [YYYY,MM,DD,HH,mm] (e.g. [2012, 12, 31, 12, 45])
 *		b) date (to use editor set date)
 */
private _date = [
	date
	, "par_daytime" call BIS_fnc_getParamValue
	/* Расширеные опции: ["day","night","morning","midday","evening","midnight","random"] */
	, ["day","night","random"] 
] call dzn_fnc_randomizeTime;

/*
 *	Date
 */
setDate _date;
MissionDate = date;
publicVariable "MissionDate";

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];

/*
 *	Mission custom server code goes here:
 */


 [] spawn {
 waitUntil { !isNil "dzn_dynai_initialized" && { dzn_dynai_initialized } };
 BMP setHitPointDamage ["hitLTrack",1];
 BMP setHitPointDamage ["hitturret",1];
 BMP setHitPointDamage ["hitengine",1];
 [getPosATL Start1, getPosATL End1, 100, "FULL", "RHS_Su25SM_vvsc", east] call BIS_fnc_ambientFlyby;
 [tgt_patrol, TGT] call dzn_fnc_dynai_moveZone;
 tgt_patrol call dzn_fnc_dynai_activateZone;
 TRG setPos (getPos TGT);
 waitUntil { [TRG, "", "> 0"] call dzn_fnc_ccPlayers };
 sleep 10;
 [reinf, [getPosATL TGT], "SAD"] call dzn_fnc_dynai_moveGroups;
 }; 

