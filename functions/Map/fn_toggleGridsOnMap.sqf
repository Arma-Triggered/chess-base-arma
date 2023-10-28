params ["_player"];

_battleFieldGridSize="battlefield_grid_size" call BIS_fnc_getParamValue;
_gridColorBlack = [0,1,0,1];
_gridsEnabled = _player getVariable ["grids_enabled", false];

if (!_gridsEnabled) then {
    for "_step" from 0 to worldSize step _battleFieldGridSize do {
        _fromPosVertical = [_step, 0];
        _toPosVertical = [_step, worldSize];
        [_fromPosVertical, _toPosVertical, _gridColorBlack] call A3C_fnc_drawLineOnMap;
        _fromPosHorizontal = [0, _step];
        _toPosHorizontal = [worldSize, _step];
        [_fromPosHorizontal, _toPosHorizontal, _gridColorBlack] call A3C_fnc_drawLineOnMap;
    };
    _player setVariable ["grids_enabled", true];
} else {
    (findDisplay 12 displayCtrl 51) ctrlRemoveAllEventHandlers "Draw";
    _player setVariable ["grids_enabled", false];
};


