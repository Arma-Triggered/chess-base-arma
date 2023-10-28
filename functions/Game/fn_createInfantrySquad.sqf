params ["_side", "_position"];

_amountOfSquadLeaders = 1;
_amountOfCombatLifeSaver = 2;
_amountOfEngineers = 2;
_amountOfAutoRifleman = 2;

private ["_squadLeaderName", "_combatLifeSaverName", "_autoRiflemanName", "_engineerName"];

switch (_side) do {
    case west: {
        _squadLeaderName = WestNatoSquadLeader;
        _combatLifeSaverName = WestNatoCombatLifeSaver;
        _autoRiflemanName = WestNatoAutoRifleman;
        _engineerName = WestNatoEngineer;
    };
    case independent: {
        _squadLeaderName = IndependentAafSquadLeader;
        _combatLifeSaverName = IndependentAafCombatLifeSaver;
        _autoRiflemanName = IndependentAafAutoRifleman;
        _engineerName = IndependentAafEngineer;
    };
    case east: {
        _squadLeaderName = EastCsatSquadLeader;
        _combatLifeSaverName = EastCsatCombatLifeSaver;
        _autoRiflemanName = EastCsatAutoRifleman;
        _engineerName = EastCsatEngineer;
    };
	default {};
};

_group = createGroup _side;
_skill= "SkillAi" call BIS_fnc_getParamValue;

for "_" from 1 to _amountOfSquadLeaders do {
    _squadLeaderName createUnit [_position, _group, "", _skill, "SERGEANT"];
};

for "_" from 1 to _amountOfCombatLifeSaver do {
    _combatLifeSaverName createUnit [_position, _group, "", _skill, "CORPORAL"];
};

for "_" from 1 to _amountOfAutoRifleman do {
    _autoRiflemanName createUnit [_position, _group, "", _skill, "PRIVATE"];
};

for "_" from 1 to _amountOfEngineers do {
    _engineerName createUnit [_position, _group, "", _skill, "CORPORAL"];
};