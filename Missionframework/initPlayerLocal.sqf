params["_player"];

// Add arsenal action (ACE)
[
    _player, // Player object
    {isNull (objectParent _player) && {alive _player}} // Default condition! Change it for your scenario purposes.
] call PIG_fnc_addArsenalAction;

