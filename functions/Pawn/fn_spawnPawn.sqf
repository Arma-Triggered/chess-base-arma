params ["_pawnType", "_side", "_pos"];

switch (_pawnType) do {
    case "INF": {
        [_side, _pos] call A3C_fnc_spawnSquad;
    };
    case "MRP": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
    };
    case "APC": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
    };
    case "TNK": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
    };
    case "HPR": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
    };
    case "HQ": {
        [_side, _pos] call A3C_fnc_spawnSquad;
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
    };
    case "AA": {
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
    };
    case "ART": {
        [_side, _pos, _pawnType] call A3C_fnc_spawnVehicle;
    };
    default {
        _errorMsg = format["Unknown pawn: %1", _pawnType];
        _errorMsg call BIS_fnc_error;
        exit;
    };
};