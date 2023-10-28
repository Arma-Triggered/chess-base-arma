params ["_fromPos", "_toPos", "_colorRgba"];

_drawCommand = ["(_this select 0) drawLine [ [", _fromPos select 0, ",", _fromPos select 1, ",0], [", _toPos select 0, ",", _toPos select 1,",0], ", _colorRgba," ];"] joinString "";
(findDisplay 12 displayCtrl 51) ctrlAddEventHandler ["Draw", _drawCommand];
