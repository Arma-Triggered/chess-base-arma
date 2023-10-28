_battleFieldGridSize=["battlefield_grid_size", 500] call BIS_fnc_getParamValue;
_gridColorBlack = [0,1,0,1];

for "_step" from 0 to worldSize step _battleFieldGridSize do {
    _fromPosVertical = [_step, 0];
    _toPosVertical = [_step, worldSize];
    [_fromPosVertical, _toPosVertical, _gridColorBlack] call A3C_fnc_drawLineOnMap;
    _fromPosHorizontal = [0, _step];
    _toPosHorizontal = [worldSize, _step];
    [_fromPosHorizontal, _toPosHorizontal, _gridColorBlack] call A3C_fnc_drawLineOnMap;
};