ambush_in_progress = 0;
sleep 900;

_handle = 

[
	{

		null = [] execVM "scripts\server\ambush\ambush.sqf";
	}, 900, []

] call CBA_fnc_addPerFrameHandler;
