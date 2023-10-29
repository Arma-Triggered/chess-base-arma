params ["_side", "_pos", "_type"];

private ["_vehicleName"];
switch (_type) do {
    case "MRP": {
        switch (_side) do {
            case east: {
                _vehicleName = EastCsatMrap;
            };
            case west: {
                _vehicleName = WestNatoMrap;
            };
            case independent: {
                _vehicleName = IndependentAafMrap;
            };
        };
    };
    case "APC": {
        switch (_side) do {
            case east: {
                _vehicleName = EastCsatArmoredPersonelCarrier;
            };
            case west: {
                _vehicleName = WestNatoArmoredPersonelCarrier;
            };
            case independent: {
                _vehicleName = IndependentAafArmoredPersonelCarrier;
            };
        };
    };
    case "TNK": {
        switch (_side) do {
            case east: {
                _vehicleName = EastCsatTank;
            };
            case west: {
                _vehicleName = WestNatoTank;
            };
            case independent: {
                _vehicleName = IndependentAafTank;
            };
        };
    };
    case "HPR": {
        switch (_side) do {
            case east: {
                _vehicleName = EastCsatHelicopter;
            };
            case west: {
                _vehicleName = WestNatoHelicopter;
            };
            case independent: {
                _vehicleName = IndependentAafHelicopter;
            };
        };
    };
    case "HQ": {
        switch (_side) do {
            case east: {
                _vehicleName = EastCsatArmoredPersonelCarrier;
            };
            case west: {
                _vehicleName = WestNatoArmoredPersonelCarrier;
            };
            case independent: {
                _vehicleName = IndependentAafArmoredPersonelCarrier;
            };
        };
    };
    case "AA": {
        switch (_side) do {
            case east: {
                _vehicleName = EastCsatAntiAir;
            };
            case west: {
                _vehicleName = WestNatoAntiAir;
            };
            case independent: {
                _vehicleName = IndependentAafAntiAir;
            };
        };
    };
    case "ART": {
        switch (_side) do {
            case east: {
                _vehicleName = EastCsatArtillery;
            };
            case west: {
                _vehicleName = WestNatoArtillery;
            };
            case independent: {
                _vehicleName = IndependentAafArtillery;
            };
        };
    };
    default {
        _errorMsg = format["Unknown vehicle: %1", _type];
        _errorMsg call BIS_fnc_error;
        exit;
    };
};

_vehicle = createVehicle [_vehicleName, _pos, [], 30, "NONE"];
_vehicle;