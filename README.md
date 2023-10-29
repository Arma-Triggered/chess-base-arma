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

- [ ] Runnable for timer to conquer objective or eliminate enemy
- [ ] Runnable for killing players going out of the battlefield
- [ ] Battlewin check on player kill
- [ ] Function for calling Battlewin
- [ ] Function for teleport players to briefing room
- [x] Function for spawning a single resource, at middle of the square
- [x] Objective capturing
- [x] Function for teleporting players to pawn
- [x] Function for starting battle (arg attacker box and another arg defending box with all resources in battle per side)

### Phase 2
**Create tickets on GitHub**

Implement map logic in Spring boot app, visualize and allow controls through some frontend (preferably flutter app + web).

### Phase 3
**Create tickets on GitHub**

?

## Credits
- [Larrow](https://github.com/LarrowZurb) | Sector script

