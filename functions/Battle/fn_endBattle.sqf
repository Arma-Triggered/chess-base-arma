params["_sector", "_owner", "_oldOwner", "_attackingSide"];


if (_owner == _attackingSide) then {
    deleteVehicle _sector;
};