/* 
	File: fn_openArsenal.sqf
	Author: PiG13BR (https://github.com/PiG13BR)
	Date: 18/09/2025
	Last update: 02/10/2025

	Description:
		Opens the ace arsenal

	Parameter(s)
		-

	Returns:
		-
*/
if (PIG_arsenalAllowed isEqualTo []) then {[] call PIG_fnc_initArsenal}; // failsafe

[player, player, false] call ace_arsenal_fnc_openBox;

private _backpack = backpack player;
[_backpack] call PIG_fnc_checkGear;