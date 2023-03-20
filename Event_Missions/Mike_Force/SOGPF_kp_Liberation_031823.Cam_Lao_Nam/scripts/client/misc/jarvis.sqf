
private _uid = getPlayerUID player;

// Liber 76561197997124640
// Jarvis 76561198039932196

if (_uid isEqualTo "76561198039932196") then {

player addEventHandler["GetInMan", 
{ 
	_eventHandlerId = addMissionEventHandler ["Draw3D", {player switchCamera "EXTERNAL"}, []];
	localNamespace setVariable ["3rd_camera", _eventHandlerId]
}];

player addEventHandler["GetOutMan",
{ 
	_id = localNamespace getVariable "3rd_camera";
	removeMissionEventHandler ["Draw3D", _id];
 	player switchCamera "INTERNAL";
}];

} else {
	//systemChat "you no Jarvis";
}
