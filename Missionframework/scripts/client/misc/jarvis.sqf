
private _uid = getPlayerUID player;

// Liber 76561197997124640
// Jarvis 76561198039932196

if (_uid isEqualTo "76561198039932196") then {

player addEventHandler["GetInMan", 
{ 
	addMissionEventHandler ["Draw3D", { 
 		player switchCamera "EXTERNAL"
	}];
}];

player addEventHandler["GetOutMan",
{ 
	removeAllMissionEventHandlers "Draw3D";
 	player switchCamera "INTERNAL";
}];

} else {
	//systemChat "you no Jarvis";
}