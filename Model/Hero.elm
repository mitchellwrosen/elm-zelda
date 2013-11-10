module Model.Hero where

data Direction = North | East | South | West

type Hero = 
    { x   : Float
    , y   : Float
    , vx  : Float
    , vy  : Float
    , dir : Direction 
    }

initHero = 
    { x   = 0
    , y   = 0
    , vx  = 0
    , vy  = 0
    , dir = South
    }
