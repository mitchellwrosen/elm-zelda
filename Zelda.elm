import Window        (dimensions)

import Display.World (displayWorld)
import Model.Input   (input)
import Model.World   (World, initWorld)
import Updates.World (stepWorld)

main  = lift2 displayWorld dimensions worldState

worldState : Signal World
worldState = foldp stepWorld initWorld input
