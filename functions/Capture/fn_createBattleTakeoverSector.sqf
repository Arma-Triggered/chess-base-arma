params ["_pos", "_attackingSide", "_defendingSide"];

_battleFieldGridSize = "BattlefieldGridSize" call BIS_fnc_getParamValue;
_battleFieldGridSizeDividor = "BattlefieldGridSizeDivisorForCaptureRadius" call BIS_fnc_getParamValue;
[
   //position
   _centerPos,
   //Sector Name
   format[ "Capture or kill enemies" ],
   //Sector Designation
   "",
   //Trigger dimensions
   [ _battleFieldGridSize / _battleFieldGridSizeDividor, _battleFieldGridSize / _battleFieldGridSizeDividor, 0, false ],
   //Sides that can capture
   [ _attackingSide, _defendingSide ],
   //Default owning side
   _defendingSide,
   //Code as STRING called when sector owner changes
   "",
   //Score reward
   0,
   //all sides other than owner receive task
   3,
   //Task title
   "Capture or kill within time",
   //Task description
   "Capture the objective or kill complete enemy squads before the time runs out"
  ] call A3C_fnc_createSector;