module Model.Input 
    ( Input
    , input
    ) where

import Keyboard (arrows)

type Input =
   { dir   : { x:Int, y:Int }
   , delta : Time 
   }

input : Signal Input
input = sampleOn delta (Input <~ arrows ~ delta)

delta : Signal Time
delta = fps 50
