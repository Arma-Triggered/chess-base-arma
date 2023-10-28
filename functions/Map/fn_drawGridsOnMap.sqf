_battleFieldGridSize="battlefield_grid_size" call BIS_fnc_getParamValue;
_gridColorBlack = [0,1,0,1];

for "_x" from 0 to worldSize step _battleFieldGridSize do {
    _fromPos = [_x, 0];
    _toPos = [_x, worldSize];
    [_fromPos, _toPos, _gridColorBlack] call A3C_fnc_drawLineOnMap;
};

for "_y" from 0 to worldSize step _battleFieldGridSize do {
    _fromPos = [0, _y];
    _toPos = [worldSize, _y];
    [_fromPos, _toPos, _gridColorBlack] call A3C_fnc_drawLineOnMap;
};