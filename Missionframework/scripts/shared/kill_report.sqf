if (true) then {
	addMissionEventHandler ["EntityKilled", {
		params ["_killed", "_killer", "_instigator"];
		_ownerKilled = owner _killed;
		_armedKilled = {_x != ""} count [currentWeapon _killed, secondaryWeapon _killed];
		if (_killer == _killed) then {
			_killer = _killed getVariable ["ace_medical_lastDamageSource", _killer];} else {_killer};
		if (isNull _instigator) then {_instigator = UAVControl vehicle _killer select 0};
		if (isNull _instigator) then {_instigator = _killer};
		if (_ownerKilled == clientOwner) then {
			if (((animationState _killed) == "ACE_AmovPercMstpSsurWnonDnon") && {_killer in allPlayers}) then {
				_str_1 = str text format ["%2 has killed %1, a surrendered prisoner.", (name _killed), (name _killer)];
				[KP_liberation_cr_kill_penalty, true] spawn F_cr_changeCR;
				[_str_1] remoteExec ["globalChat", 0, false];
			};
			if (((animationState _killed) == "ACE_AmovPercMstpScapWnonDnon") && {_killer in allPlayers}) then {
				_str_2 = str text format ["%2 has killed %1, a captured prisoner.", (name _killed), (name _killer)];
				[KP_liberation_cr_kill_penalty, true] spawn F_cr_changeCR;
				[_str_2] remoteExec ["globalChat", 0, false];
			};
			if (((side group _killed) isEqualTo (side group _killer)) && {_killed != _killer} && {_killer in allPlayers}) then {
				_str_3 = str text format ["%2 has teamkilled %1.", (name _killed), (name _killer)];
				[KP_liberation_cr_kill_penalty, true] spawn F_cr_changeCR;
				[_str_3] remoteExec ["globalChat", 0, false];
			};
		};
		if (hasInterface && (!isServer) && (local _killed)) then {
			if (((animationState _killed) == "ACE_AmovPercMstpSsurWnonDnon") && {_killer in allPlayers}) then {
				_str_1 = str text format ["%2 has killed %1, a surrendered prisoner.", (name _killed), (name _killer)];
				[_str_1] remoteExec ["globalChat", 0, false];
			};
			if (((animationState _killed) == "ACE_AmovPercMstpScapWnonDnon") && {_killer in allPlayers}) then {
				_str_2 = str text format ["%2 has killed %1, a captured prisoner.", (name _killed), (name _killer)];
				[_str_2] remoteExec ["globalChat", 0, false];
			};
			if (((side group _killed) isEqualTo (side group _killer)) && {_killed != _killer} && {_killer in allPlayers}) then {
				_str_3 = str text format ["%2 has teamkilled %1.", (name _killed), (name _killer)];
				[_str_3] remoteExec ["globalChat", 0, false];
			};
		};
	}];
};