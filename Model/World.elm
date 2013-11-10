module Model.World where

import Model.Hero (Hero, initHero)

areaW = 448
areaH = 320

type World =
    { hero : Hero
    }

initWorld : World
initWorld =
    { hero = initHero }
