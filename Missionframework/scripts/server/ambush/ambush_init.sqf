ambush_in_progress = 0;
sleep 300;

_handle = 

[
	{

		null = [] execVM "scripts\server\ambush\ambush.sqf";
	}, 300, []

] call CBA_fnc_addPerFrameHandler;
