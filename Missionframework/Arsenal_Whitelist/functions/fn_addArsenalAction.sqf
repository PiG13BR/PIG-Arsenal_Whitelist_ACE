/* 
	File: fn_addArsenalAction.sqf
	Author: PiG13BR (https://github.com/PiG13BR)
	Date: 02/07/2024
	Last update: 01/10/2025

	Description:
		Add the arsenal action to the player

	Parameter(s)
		_player - player that the action will be added [OBJECT, defaults to player]
		_condition - condition to show the arsenal action for the player [CODE, defaults to {true}]

	Returns:
		-
*/

params [["_player", player, [objNull]], ["_condition", {true}, [{}]]];

if !(isClass (configfile >> "CfgPatches" >> "ace_common")) exitWith {["[ARTY MENU] Ace mod required"] call BIS_fnc_error; false};
if (isNull _player) exitWith {["[ARTY MENU] object is null"] call BIS_fnc_error; false};

private _arsenalAction = [
    "PIG_ARSENAL_ACE",
    "Arsenal",
    "a3\ui_f\data\igui\cfg\simpletasks\letters\a_ca.paa",   
    {[] call PIG_fnc_openArsenal}, _condition,
    // Create children
	{
        nil
    },
	["ACE_SelfActions"]
] call ace_interact_menu_fnc_createAction;


[_player, 1, ["ACE_SelfActions", "ACE_Equipment"], _arsenalAction] call ace_interact_menu_fnc_addActionToObject;

true