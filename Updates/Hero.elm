module Updates.Hero where

import Model.Input (Input)
import Model.Hero  (East, Hero, North, South, West)

stepHero : Input -> Hero -> Hero
stepHero {dir,delta} hero =
    { hero | x   <- hero.x + delta*hero.vx
           , y   <- hero.y + delta*hero.vy
           , vx  <- toFloat dir.x
           , vy  <- toFloat dir.y
           , dir <- if | hero.x > 0 -> East
                       | hero.x < 0 -> West
                       | hero.y > 0 -> South
                       | hero.y < 0 -> North
                       | otherwise  -> hero.dir }
