module CapLib (calcCap, digitToFloat) where

import Data.Char

calcCap :: [Float] -> Float
calcCap [x,y,z] = (x * 10 + y) * 10.0**z

digitToFloat :: Char -> Float 
digitToFloat = toEnum . digitToInt
