params ["_pos", "_range"];

_battleFieldGridSize = "BattlefieldGridSize" call BIS_fnc_getParamValue;
_distance = (((_range - 1) * 2) + 3) * _battleFieldGridSize;
private _coverArea  = [
    _distance / 2,
    _distance / 2,
    0,
    false,
    0
];

private _referenceDummy = "Land_Can_Dented_F" createVehicle _pos;
hideObject _referenceDummy;
_referenceDummy setVariable ["objectArea", _coverArea];

[_referenceDummy, [], true] call BIS_fnc_moduleCoverMap;
_referenceDummy;