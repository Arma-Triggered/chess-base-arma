params ["_lat, _lon"];

_battleFieldGridSize = "BattlefieldGridSize" call BIS_fnc_getParamValue;

_xPos = _lat * 100;
_yPos = _lon * 100;
_halfBattleFieldGridSize = (_battleFieldGridSize / 2);
_pos = [_xPos + _halfBattleFieldGridSize, _yPos + _halfBattleFieldGridSize, 0];

_pos;