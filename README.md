# chess-base-arma
Base project for a chess like game in Arma, that will make the confrontations into real life action controlled by players. 

## Configuration
### Mission Parameters
#### Battlefield Grid Size (BattlefieldGridSize) 
The map will be divided into equal grids. Depending on how much area you want to have available in battles,
you can change this value to a higher/lower value. 
Bigger value = Longer session 

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
- [ ] Objective capturing action
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

