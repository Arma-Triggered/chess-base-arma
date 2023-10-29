params ["_attackerSide", "_attackerLatLon", "_attackerPawns", "_defenderSide", "_defenderLatLon", "_defenderPawns"];

_attackerTruncatedLatLon = [_attackerLatLon select 0, _attackerLatLon select 1] call A3C_fnc_truncateLatLonToGridLatLon;
_defenderTruncatedLatLon = [_defenderLatLon select 0, _defenderLatLon select 1] call A3C_fnc_truncateLatLonToGridLatLon;

_attackerGridCenterPos = [_attackerTruncatedLatLon select 0, _attackerTruncatedLatLon select 1] call A3C_fnc_calculateCenterPosByGridLatLon;
_defenderGridCenterPos = [_defenderTruncatedLatLon select 0, _defenderTruncatedLatLon select 1] call A3C_fnc_calculateCenterPosByGridLatLon;

{
    [_x, _attackerSide, _attackerGridCenterPos] call A3C_fnc_spawnPawn;
} forEach _attackerPawns;

{
    [_x, _defenderSide, _defenderGridCenterPos] call A3C_fnc_spawnPawn;
} forEach _defenderPawns;

[_defenderGridCenterPos, _attackerSide, _defenderSide] call A3C_fnc_createBattleTakeoverSector;