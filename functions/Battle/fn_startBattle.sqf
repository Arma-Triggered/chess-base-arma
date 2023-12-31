params ["_attackerSide", "_attackerLatLon", "_attackerPawns", "_defenderSide", "_defenderLatLon", "_defenderPawns"];
_battleFieldGridSize = "BattlefieldGridSize" call BIS_fnc_getParamValue;

_attackerTruncatedLatLon = [_attackerLatLon select 0, _attackerLatLon select 1] call A3C_fnc_truncateLatLonToGridLatLon;
_defenderTruncatedLatLon = [_defenderLatLon select 0, _defenderLatLon select 1] call A3C_fnc_truncateLatLonToGridLatLon;

_attackerGridCenterPos = [_attackerTruncatedLatLon select 0, _attackerTruncatedLatLon select 1] call A3C_fnc_calculateCenterPosByGridLatLon;
_defenderGridCenterPos = [_defenderTruncatedLatLon select 0, _defenderTruncatedLatLon select 1] call A3C_fnc_calculateCenterPosByGridLatLon;

[_defenderGridCenterPos, _attackerSide, _defenderSide] call A3C_fnc_createBattleTakeoverSector;

_highestMovementRange = 1;

{
    _movementRange = [_x, _attackerSide, _attackerGridCenterPos] call A3C_fnc_spawnPawn;
    if (_highestMovementRange < _movementRange) then {
        _highestMovementRange = _movementRange;
    };
} forEach _attackerPawns;

{
    _movementRange = [_x, _defenderSide, _defenderGridCenterPos] call A3C_fnc_spawnPawn;
    if (_highestMovementRange < _movementRange) then {
        _highestMovementRange = _movementRange;
    };
} forEach _defenderPawns;

[_defenderGridCenterPos, _highestMovementRange] call A3C_fnc_focusMapOnBattlefield;

{
    if ((side _x) == _attackerSide) then {
        _x setPos _attackerGridCenterPos;
    } else {
        if ((side _x) == _defenderSide) then {
            _x setPos _defenderGridCenterPos;
        };
    };
} forEach (call BIS_fnc_listPlayers);