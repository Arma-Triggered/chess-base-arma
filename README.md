# Arma Chess Base functionality (chess-base-arma)
Base project for a chess like game in Arma, that will make the confrontations into real life action controlled by players. 

## Configuration
### Mission Parameters
#### Battlefield Grid Size (BattlefieldGridSize) 
The map will be divided into equal grids. Depending on how much area you want to have available in battles,
you can change this value to a higher/lower value. 
Bigger value = Longer session 

#### Divisor of Battlefield Grid Size, result will be used as radius for capture sectors (CapturingBattlefieldGridSizeDivisorForRadius)
Since we want the battlefield grid size to be scalable, the size of the capture zones should be as well.
Therefor we introduced this divisor, which defines how big the capture zone is compared to the grids. 
The higher this divisor is, the smaller the capture zone will be compared to the grid making gameplay harder.

#### Capture speed (CapturingSpeedCooficient)
Cooficient defining how long it takes to take of a capture point. 
It's hard to put a time on these, as they depend on how big the difference is 
between defending and attacking units currently within the capture point.
Slower capture speed, means it is harder to take over the capture point. 

## Roadmap

### Phase 1

#### Map

- [ ] Rulebook
- **Mobile division resources**
    - HQ, king for dummies (1) 
    - Infantry (1)
    - MRAP (diag 1)
    - APC (diag 1)
    - Tank (1)
    - Helicopter with turret (diag 2)
- **Static division resources**
    - AA
    - Artillery

#### Game

- [ ] Function for spawning a single resource, at middle of the square
- [ ] Runnable for killing players going out of the battlefield
- [ ] Runnable for timer to conquer objective or eliminate enemy
- [x] Objective capturing
- [ ] Battlewin check on player kill
- [ ] Function for calling Battlewin
- [ ] Function for teleporting players to pawn
- [ ] Function for teleport players to briefing room
- [ ] Function for starting battle (arg attacker box and another arg defending box with all resources in battle per side)

### Phase 2

#### Map
- [ ] REST Client in arma component for sending moves to backend and polling updates

#### Game

### Phase 3

#### Map

#### Game

## Credits
- [Larrow](https://github.com/LarrowZurb) | Sector script

