# ARSENAL WHITELIST BY ROLE
## DESCRIPTION
- This script, by using some required functions by [Liberation Dev Team](https://github.com/KillahPotatoes), can filter the arsenal preset by role/class. I changed the tags "KPLIB" to "PIG" for my own sanity.
- To setup the preset, go to [this file](https://github.com/PiG13BR/PIG-Arsenal_Whitelist_ACE/blob/main/Missionframework/Arsenal_Whitelist/presets/roles_arsenal_config.sqf). 
- There are a bunch of lines, but basically it's devided in two parts:
  - The first part is where you put the items' classnames under pre-defined local variables (with underscore in front of them). Use/delete the defauls one or make new ones.
  - The second part is where the script gets the classname of the player entity and try to match it to a pre-defined class. Change the classnames in this part if needed.
  - Each class/role has its own list of items, so put the local variables that you created in the first part into these four particular ones (PIG_arsenalWeapons, PIG_arsenalMagazines, PIG_arsenalItems and PIG_arsenalBackpacks).
    - PIG_arsenalWeapons - All weapons.
    - PIG_arsenalMagazines - All magazines, including grenades, explosives, mines.
    - PIG_arsenalItems - All general items, medic items, engineer items, radio, etc.
    - PIG_arsenalBackpacks - Only backpacks (backpack radio ones too).
  - Once the system finds a matching class/role, it will get the arsenal data available in those four variables mentioned above.

  Basic Example:
```
_rifles_basic = [
    "CUP_arifle_Mk16_STD_AFG",
    "CUP_arifle_Mk16_STD_FG",
    "CUP_arifle_Mk16_STD"
];

_pistols = [
    "CUP_hgun_Glock17_tan"
];

PIG_arsenalWeapons = (_rifles_basic + _pistols);
```
- There is an [exporter](https://github.com/PiG13BR/PIG-Arsenal_Whitelist_ACE/blob/main/Missionframework/Arsenal_Whitelist/export_arsenal.sqf) to get all items classes from playable entities. You can run this from the debug console, in editor. The data will be passed into your [rpt files](https://community.bistudio.com/wiki/Crash_Files).
- To access the Arsenal, open the self interaction ace menu and go to Equipaments. As **default**, this action will be always available, to change that, you need to change the conditions in the [initPlayerLocal.sqf](https://github.com/PiG13BR/PIG-Arsenal_Whitelist_ACE/blob/main/Missionframework/initPlayerLocal.sqf) file.
