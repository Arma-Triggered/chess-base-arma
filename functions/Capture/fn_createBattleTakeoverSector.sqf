params ["_pos", "_attackingSide", "_defendingSide"];

_battleFieldGridSize = "BattlefieldGridSize" call BIS_fnc_getParamValue;
_battleFieldGridSizeDividor = "CapturingBattlefieldGridSizeDivisorForRadius" call BIS_fnc_getParamValue;
_capturingCooficient = "CapturingSpeedCooficient" call BIS_fnc_getParamValue;
if (_capturingCooficient == 0) then {
    _capturingCooficient = 0.05;
};

[
   _pos,
   format[ "Capture or kill enemies" ],
   "",
   [ _battleFieldGridSize / _battleFieldGridSizeDividor, _battleFieldGridSize / _battleFieldGridSizeDividor, 0, false ],
   [ _attackingSide, _defendingSide ],
   _defendingSide,
   ["
       params[ '_sector', '_owner', '_oldOwner' ];
       if (_owner == ", _attackingSide ,") then {
         deleteVehicle _sector;
       };
      "] joinString "",
   0,
   3,
   "Capture or kill within time",
   "Capture the objective or kill complete enemy squads before the time runs out",
   0,
   0,
   0,
   0,
   0,
   0,
   1,
   _capturingCooficient
  ] call A3C_fnc_createSector;