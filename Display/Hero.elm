module Display.Hero where

import Model.Hero (Hero)

herof : Hero -> Form
herof hero = toForm (image 16 16 "sprites/standing.bmp")
    |> move (hero.x, hero.y)
