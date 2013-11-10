module Display.World where

import Display.Hero (herof)
import Model.World  (World, areaW, areaH)

displayWorld : (Int,Int) -> World -> Element
displayWorld (w,h) {hero} =
  container w h middle <|
    collage areaW areaH <|
       [ backgroundf
       , herof hero
       ]

backgroundf : Form
backgroundf = toForm <|
    collage areaW areaH <|
        [toForm (image 32 32 "sprites/tile.bmp")]
