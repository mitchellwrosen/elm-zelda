module Updates.World where

import Model.Input  (Input)
import Model.World  (World)
import Updates.Hero (stepHero)

stepWorld : Input -> World -> World
stepWorld input world =
    { world | hero <- stepHero input world.hero }

