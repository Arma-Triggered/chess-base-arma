params ["_pos", "_attackingSide", "_defendingSide"];

_battleFieldGridSize = "BattlefieldGridSize" call BIS_fnc_getParamValue;
_battleFieldGridSizeDividor = "CapturingBattlefieldGridSizeDivisorForRadius" call BIS_fnc_getParamValue;
_capturingCooficient = "CapturingSpeedCooficient" call BIS_fnc_getParamValue;
if (_capturingCooficient == 0) then {
    _capturingCooficient = 0.05;
};

_sectorArea = [ _battleFieldGridSize / _battleFieldGridSizeDividor, _battleFieldGridSize / _battleFieldGridSizeDividor, 0, false ];
_sides = [ _attackingSide, _defendingSide ];
_onChangeOwner = format["params[ '_sector', '_owner', '_oldOwner' ]; [_sector, _owner, _oldOwner, %1] call A3C_fnc_endBattle;", _attackingSide];
_scoreReward = 0;
_taskOwner = 3;
_title = "Capture or kill within time";
_description = "Capture the objective or kill complete enemy squads before the time runs out";

[
   _pos,
   format[ "Capture or kill enemies" ],
   "",
   _sectorArea,
   _sides,
   _defendingSide,
   _onChangeOwner,
   _scoreReward,
   _taskOwner,
   _title,
   _description,
   0,
   1,
   1,
   1,
   1,
   1,
   1,
   _capturingCooficient
  ] call A3C_fnc_createSector;