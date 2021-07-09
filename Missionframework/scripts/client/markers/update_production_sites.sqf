waitUntil {!isNil "save_is_loaded"};
waitUntil {!isNil "KP_liberation_production_markers"};
waitUntil {save_is_loaded};

addMissionEventHandler ["Map", {
	    params ["_mapIsOpened", "_mapIsForced"];

        {
            private _marker_text = (_x select 4) + " [";
            if (_x select 1) then {_marker_text = _marker_text + "S";};
            if (_x select 2) then {_marker_text = _marker_text + "A";};
            if (_x select 3) then {_marker_text = _marker_text + "F";};
            _marker_text = _marker_text + "]";
            (_x select 0) setMarkerTextLocal _marker_text;
        } forEach KP_liberation_production_markers;

    }
];