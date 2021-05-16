ambush_in_progress = 0;
sleep 600;

_handle = 

[
	{

		null = [] execVM "scripts\server\ambush\ambush.sqf";
	}, 600, []

] call CBA_fnc_addPerFrameHandler;