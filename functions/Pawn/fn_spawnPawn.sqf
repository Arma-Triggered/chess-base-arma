params ["_pawnType", "_side", "_pos"];

private ["_movementRange"];

switch (_pawnType) do {
    case "INF": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        _movementRange = 1;
    };
    case "MRP": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
        _movementRange = 2;
    };
    case "APC": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
        _movementRange = 2;
    };
    case "TNK": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
        _movementRange = 1;
    };
    case "HPR": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
        _movementRange = 3;
    };
    case "HQ": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
        _movementRange = 1;
    };
    case "AA": {
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
        _movementRange = 1;
    };
    case "ART": {
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
        _movementRange = 1;
    };
    default {
        _errorMsg = format["Unknown pawn: %1", _pawnType];
        _errorMsg call BIS_fnc_error;
        exit;
    };
};

_movementRange;