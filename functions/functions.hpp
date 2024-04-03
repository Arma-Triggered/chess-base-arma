class CfgFunctions {
    class A3C {
        tag = "A3C";
        class Battle {
            class startBattle {};
            class focusMapOnBattlefield {};
            class endBattle {};
        };
        class Capture {
            class createBattleTakeoverSector {};
        };
        class Grid {
            class calculateCenterPosByGridLatLon {};
            class truncateLatLonToGridLatLon {};
        };
        class Library {
            class createSector {};
        };
        class Map {
            class toggleGridsOnMap {};
            class drawLineOnMap {};
        };
        class Pawn {
            class spawnSquad {};
            class spawnVehicle {};
            class spawnPawn {};
        };
    }
}