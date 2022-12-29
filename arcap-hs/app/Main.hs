module Main where

import CapLib 
import Text.Printf
import System.Environment


main :: IO () 
main = do 
        args <- getArgs
        let input = args !! 0 
        let capVal = calcCap (map digitToFloat input)
        printf "%f uF \n" $ capVal / 1000000
        printf "%f nF \n" $ capVal / 1000 
        printf "%f pF \n" capVal 

