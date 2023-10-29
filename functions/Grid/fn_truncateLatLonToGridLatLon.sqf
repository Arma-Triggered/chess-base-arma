params ["_lat", "_lon"];

_scaledLat = _lat / 10;
_scaledLon = _lon / 10;

_gridLat = (floor (_scaledLat * 2)) / 2 * 10;
_gridLon = (floor (_scaledLon * 2)) / 2 * 10;

_truncatedLatLon = [_gridLat, _gridLon];

_truncatedLatLon;